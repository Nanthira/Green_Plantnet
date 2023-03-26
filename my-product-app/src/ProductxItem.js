import { Link } from "react-router-dom";

export default function ProductxItem(props) {

    const onDeletex = async () => {
        props.onDeletex(props.data);
    }

    return (
        <div className="row border rounded shadow-sm mt-5">
            <div className="col-5">
                <img src={`http://localhost:8080/images/${props.data.image_url}`} width={100}/>
            </div>
            <div className="col-8">
                <h5 className="text-rpimary">ชื่อ: {props.data.productx_name}</h5>
                <Link to={`/productx/${props.data.productx_id}`} className="btn btn-outline-primary me-5">แก้ไข</Link>
                <button type="button" className="btn btn-outline-danger" onClick={onDeletex}>ลบ</button>
            </div>
            <div className="col-2">
                <span className="text-danger fs-4">อายุ {props.data.price} ปี</span>
            </div>
        </div>
    );
}