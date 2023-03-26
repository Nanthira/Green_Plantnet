import { API_GET, API_POST } from "./api";
import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import { Button, Col, Form, Row } from "react-bootstrap";
import { SERVER_URL } from "./app.config";

export default function ProductxDetail() {
    let params = useParams();

    const [productxId, setProductxId] = useState(0);
    const [productxName, setProductxName] = useState("");
    const [productxTypes, setProductxTypes] = useState([]);
    const [productxTypeId, setProductxTypeId] = useState(0);
    const [price, setPrice] = useState(0);
    const [stock, setStock] = useState(0);
    const [validated, setValidated] = useState(false);
    const [imageUrl, setImageUrl] = useState("");
    const [selectedFile, setSelectedFile] = useState("");

    useEffect(() => {
        async function fetchData() {
            const response = await fetch(
                "http://localhost:8080/api/productx_types",
                {
                    method: "GET",
                    headers: {
                        Accept: "application/json",
                        'Content-Type': 'application/json',
                        Authorization: "Bearer " + localStorage.getItem("access_token")
                    }
                }
            );

            let json = await response.json();
            setProductxTypes(json.data);
        }
        fetchData();
    }, []);

    useEffect(() => {
        async function fetchData(productxId) {
            let json = await API_GET("productx/" + productxId);

            var data = json.data[0];

            setProductxId(data.productx_id);
            setProductxName(data.productx_name);
            setProductxTypeId(data.productx_type_id);
            setPrice(data.price);
            setStock(data.stock);
            setImageUrl(data.image_url);
        }

        if (params.productxId != "add") {
            fetchData([params.productxId]);
        }
    }, [params.productxId]);

    const onFileSelected = (e) => {
        if (e.target.files.length > 0) {
            setSelectedFile(e.target.files[0]);
        }
    }

    const onUploadImage = async () => {
        const formData = new FormData();
        formData.append('file', selectedFile);

        let response = await fetch(
            SERVER_URL + "api/productx/upload/" + productxId,
            {
                method: 'POST',
                headers: {
                    Accept: "application/json",
                    Authorization: "Bearer " + localStorage.getItem("access_token"),
                },
                body: formData,
            }
        );

        let json = await response.json();

        setImageUrl(json.data);
    }

    const getImageComponent = () => {
        return (
            <div className="container m-auto">
                <Form>
                    <Row>
                        <Form.Group as={Col} md="3" controlId="formImage" className="mb-3">
                            <img src={`${SERVER_URL}images/${imageUrl}`} width={150} alt="Upload status" />
                        </Form.Group>
                        <Form.Group as={Col} md="9" controlId="formFile" className="mb-3">
                            <Form.Label>เลือกรูปภาพ</Form.Label>
                            <Form.Control
                                type="file"
                                name="file"
                                onChange={onFileSelected} />
                            <Button
                                type="button"
                                className="mt-3"
                                onClick={onUploadImage}
                            >Upload</Button>
                        </Form.Group>
                    </Row>
                </Form>
            </div>
        );
    }


    const doCreateProductx = async () => {
        const response = await fetch(
            "http://localhost:8080/api/productx/add",
            {
                method: "POST",
                headers: {
                    Accept: "application/json",
                    'Content-Type': 'application/json',
                    Authorization: "Bearer " + localStorage.getItem("access_token")
                },
                body: JSON.stringify({
                    productx_name: productxName,
                    productx_type_id: productxTypeId,
                    price: price,
                    stock: stock
                })
            }
        );
        let json = await response.json();
        if (json.result) {
            window.location = "/home";
        }
    }

    const doUpdateProductx = async () => {
        const json = await API_POST("productx/update", {
            productx_id: productxId,
            productx_name: productxName,
            productx_type_id: productxTypeId,
            price: price,
            stock: stock,
        });

        if (json.result) {
            window.location = "/home";
        }
    }

    const onSave = (event) => {
        const form = event.currentTarget;
        event.preventDefault();

        if (form.checkValidity() === false) {
            event.stopPropagation();
        } else {
            if (params.productxId == "add") {
                doCreateProductx();
            } else {
                doUpdateProductx();
            }
        }

        setValidated(true);
    }

    return (
        <>
            {
                (params.productxId != "add") ?
                    getImageComponent()
                    : <></>
            }

            <div className="container m-auto">
                <Form noValidate validated={validated} onSubmit={onSave}>
                    <Row className="mb-3">
                        <Form.Group as={Col} controlId="validateProductxName">
                            <Form.Label>ชื่อ</Form.Label>
                            <Form.Control
                                required
                                type="text"
                                value={productxName}
                                placeholder="ชื่อ"
                                onChange={(e) => setProductxName(e.target.value)}
                            />
                            <Form.Control.Feedback type="invalid">
                                กรุณากรอกชื่อ
                            </Form.Control.Feedback>
                        </Form.Group>
                    </Row>

                    <Row className="mb-3">
                        <Form.Group as={Col} controlId="validateProductxName">
                            <Form.Label>เพศ</Form.Label>
                            <Form.Select
                                value={productxTypeId}
                                onChange={(e) => setProductxTypeId(e.target.value)}
                                required>
                                <option label="กรุณาเลือกเพศ"></option>
                                {
                                    productxTypes.map(item => (
                                        <option
                                            key={item.productx_type_id}
                                            value={item.productx_type_id}>{item.productx_type_name}</option>
                                    ))
                                }
                            </Form.Select>
                            <Form.Control.Feedback type="invalid">
                                กรุณาระบุ เพศ
                            </Form.Control.Feedback>
                        </Form.Group>
                    </Row>

                    <Row className="mb-3">
                        <Form.Group as={Col} controlId="validateProductxName">
                            <Form.Label>อายุ</Form.Label>
                            <Form.Control
                                required
                                type="number"
                                value={price}
                                min={1}
                                max={99}
                                placeholder="อายุ"
                                onChange={(e) => setPrice(e.target.value)}
                            />
                            <Form.Control.Feedback type="invalid">
                                กรุณากรอก อายุ
                            </Form.Control.Feedback>
                        </Form.Group>
                    </Row>

                    

                    <Row className="mb-3">
                        <Button variant="primary" as="input" type="submit" value="SAVE" />
                    </Row>
                </Form>
            </div>
        </>
    );
}