import { API_GET, API_POST } from "./api";
import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import { Button, Col, Form, Row } from "react-bootstrap";
import { SERVER_URL } from "./app.config";

export default function UsertDetail() {
    let params = useParams();

    const [username, setUsername] = useState("");
    const [password, setPassword] = useState("");
    const [firstName, setFirstName] = useState("");
    const [lastName, setLastNam] = useState("");
    const [age, setAge] = useState(0);
    const [address, setAddress] = useState("");
    const [email, setEmail] = useState("");
    const [phone, setPhone] = useState("");
    const [validated, setValidated] = useState(false);
    const [selectedFile, setSelectedFile] = useState("");

    useEffect(() => {
        async function fetchData() {
            const response = await fetch(
                "http://localhost:8080/api/users",
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
            setProductTypes(json.data);
        }
        fetchData();
    }, []);

    

    

    
    


    const doCreateUser = async () => {
        const response = await fetch(
            "http://localhost:8080/api/user/add",
            {
                method: "POST",
                headers: {
                    Accept: "application/json",
                    'Content-Type': 'application/json',
                    Authorization: "Bearer " + localStorage.getItem("access_token")
                },
                body: JSON.stringify({
                    user_name: username,
                    user_pwd: password,
                    first_name: firstName,
                    last_name: lastName,
                    age: age,
                    address: address,
                    email: email,
                    phone: phone
                })
            }
        );
        let json = await response.json();
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
            if (params.userId == "add") {
                doCreateUser();
            } else {
                doUpdateProduct();
            }
        }

        setValidated(true);
    }

    return (
        <>
            <div className="container m-auto">
                <Form noValidate validated={validated} onSubmit={onSave}>
                    <Row className="mb-3">
                        <Form.Group as={Col} controlId="validateProductName">
                            <Form.Label>Username</Form.Label>
                            <Form.Control
                                required
                                type="text"
                                value={username}
                                placeholder="ชื่อผู้ใช้"
                                onChange={(e) => setUsername(e.target.value)}
                            />
                            <Form.Control.Feedback type="invalid">
                                กรุณากรอก ชื่อผู้ใช้
                            </Form.Control.Feedback>
                        </Form.Group>
                    </Row>  
                    <Row className="mb-3">
                        <Form.Group as={Col} controlId="validateProductName">
                            <Form.Label>Password</Form.Label>
                            <Form.Control
                                required
                                type="text"
                                value={password}
                                placeholder="รหัส"
                                onChange={(e) => setPassword(e.target.value)}
                            />
                            <Form.Control.Feedback type="invalid">
                                กรุณากรอก รหัส
                            </Form.Control.Feedback>
                        </Form.Group>
                    </Row>  
                    <Row className="mb-3">
                        <Form.Group as={Col} controlId="validateProductName">
                            <Form.Label>First name</Form.Label>
                            <Form.Control
                                required
                                type="text"
                                value={firstName}
                                placeholder="ชื่อ"
                                onChange={(e) => setFirstName(e.target.value)}
                            />
                            <Form.Control.Feedback type="invalid">
                                กรุณากรอก ชื่อ
                            </Form.Control.Feedback>
                        </Form.Group>
                    </Row>        
                    <Row className="mb-3">
                        <Form.Group as={Col} controlId="validateProductName">
                            <Form.Label>Last name</Form.Label>
                            <Form.Control
                                required
                                type="text"
                                value={lastName}
                                placeholder="นามสกุล"
                                onChange={(e) => setLastNam(e.target.value)}
                            />
                            <Form.Control.Feedback type="invalid">
                                กรุณากรอก นามสกุล
                            </Form.Control.Feedback>
                        </Form.Group>
                    </Row>                 
                    <Row className="mb-3">
                        <Form.Group as={Col} controlId="validateProductName">
                            <Form.Label>อายุ</Form.Label>
                            <Form.Control
                                required
                                type="number"
                                value={age}
                                min={1}
                                placeholder="อายุ"
                                onChange={(e) => setAge(e.target.value)}
                            />
                            <Form.Control.Feedback type="invalid">
                                กรุณากรอก อายุ
                            </Form.Control.Feedback>
                        </Form.Group>
                    </Row>
                    <Row className="mb-3">
                        <Form.Group as={Col} controlId="validateProductName">
                            <Form.Label>Address</Form.Label>
                            <Form.Control
                                required
                                type="text"
                                value={address}
                                placeholder="ที่อยู่"
                                onChange={(e) => setAddress(e.target.value)}
                            />
                            <Form.Control.Feedback type="invalid">
                                กรุณากรอก ที่อยู่
                            </Form.Control.Feedback>
                        </Form.Group>
                    </Row> 
                    <Row className="mb-3">
                        <Form.Group as={Col} controlId="validateProductName">
                            <Form.Label>Email</Form.Label>
                            <Form.Control
                                required
                                type="text"
                                value={email}
                                placeholder="อีเมล"
                                onChange={(e) => setEmail(e.target.value)}
                            />
                            <Form.Control.Feedback type="invalid">
                                กรุณากรอก อีเมล
                            </Form.Control.Feedback>
                        </Form.Group>
                    </Row>   
                    <Row className="mb-3">
                        <Form.Group as={Col} controlId="validateProductName">
                            <Form.Label>Phone umber</Form.Label>
                            <Form.Control
                                required
                                type="text"
                                value={phone}
                                placeholder="เบอร์โทร"
                                onChange={(e) => setPhone(e.target.value)}
                            />
                            <Form.Control.Feedback type="invalid">
                                กรุณากรอก เบอร์โทร
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