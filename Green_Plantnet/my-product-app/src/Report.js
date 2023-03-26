import { useEffect, useRef, useState } from "react";
import { Bar, getElementAtEvent } from "react-chartjs-2";
import { API_GET } from "./api";
import ProductxItem from "./ProductxItem"
import {
    Chart as ChartJS,
    CategoryScale,
    LinearScale,
    BarElement,
    Title,
    Tooltip,
    Legend,
} from 'chart.js';

ChartJS.register(
    CategoryScale,
    LinearScale,
    BarElement,
    Title,
    Tooltip,
    Legend
);

export const options = {
    responsive: true,
    Plugins: {
        legend: {
            position: 'top',
        },
        title: {
            display: true,
            text: 'รายงานผู้ใช้',
        },
    },
};

export default function Repost() {
    const [isLoading, setIsLoading] = useState(false);
    const [chartData, setChartData] = useState({});
    const [store, setStore] = useState([]);
    const [productxStore, setProductxStore] = useState([]);
    const chartRef = useRef();

    useEffect(() => {
        async function fetchData() {
            let json = await API_GET("report");

            setStore(json.data);

            var labels = [];
            var data = [];

            for (var i = 0; i < json.data.length; i++) {
                var item = json.data[i];
                labels.push(item.productx_type_name);
                data.push(item.productx_count);
            }

            var dataset = {
                labels: labels,
                datasets: [
                    {
                        label: "จำนวนผู้ใช้แต่ละเพศผู้ใช้",
                        data: data,
                        backgroundColor: "rgba(255, 99, 132, 0.5)"
                    }
                ]
            }

            setChartData(dataset);
            setIsLoading(true);
        }

        fetchData();
    }, []);

    const getChart = () => {
        if (isLoading) {
            return <Bar options={options}
                data={chartData}
                ref={chartRef}
                onClick={onClick} />;
        }

        return <></>;
    }

    const onClick = async (event) => {
        var element = getElementAtEvent(chartRef.current, event);
        var index = element[0].index;

        await getProductz(store[index].productx_type_id);
    }

    const getProductz = async (productxTypeId) => {
        let json = await API_GET("productz/type/" + productxTypeId);
        setProductxStore(json.data);
    }

    return (
        <>
            <div className="container-fluid mt-3">
                {
                    getChart()
                }
            </div>

            <div className="container-fluid mt-3">
                {
                    productxStore.map(item => (
                        <ProductxItem
                            key={item.productx_id}
                            data={item} />
                    ))
                }
            </div>
        </>
    );

}