import { Link } from "react-router-dom";

export default function ProductItem(props) {

    const onDelete = async () => {
        props.onDelete(props.data);
    }

    return (
        <div className="rounded border shadow-sm mt-3" style={{ width: "400px", height: "400px" }}>
            <div style={{ position: "relative", width: "100%", height: "200px" }}>
                <img src={`http://localhost:8080/images/${props.data.image_url}`} style={{ width: "200px", height: "200px", position: "absolute", top: 0, left: "50%", transform: "translateX(-50%)" }} />
            </div>
            <div style={{ padding: "10px" }}>
                <h5 className="text-rpimary">{props.data.product_name}</h5>
                <div style={{ display: "flex", justifyContent: "space-between" }}>
                    <div>
                        <span>ขนาดกระถาง : {props.data.size} นิ้ว</span>
                    </div>
                    <div>
                        <span className="text-danger fs-4">{props.data.price}</span>
                    </div>
                </div>
                <div style={{ display: "flex", justifyContent: "flex-end", marginTop: "10px" }}>
                    <Link to={`/product/${props.data.product_id}`} className="btn btn-outline-primary me-3">แก้ไข</Link>
                    <button type="button" className="btn btn-outline-danger" onClick={onDelete}>ลบ</button>
                </div>
            </div>
        </div>
    );
}
