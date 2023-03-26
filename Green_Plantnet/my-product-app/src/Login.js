import 'bootstrap/dist/css/bootstrap.min.css';

import { useNavigate } from 'react-router-dom';
import { API_GET, API_POST } from "./api";
import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import { Button, Col, Form, Row } from "react-bootstrap";
import { SERVER_URL } from "./app.config";


var md5 = require("md5");


export default function UsertDetail() {
    const getAuthenToken = async () => {
        const response = await fetch(
            "http://localhost:8080/api/authen_request",
            {
                method: "POST",
                headers: {
                    Accept: "application/json",
                    'Content-type': 'application/json',
                },
                body: JSON.stringify({
                    username: md5(username)
                })
            }
        );

        const data = await response.json();

        console.log(data);ไ
        return data;
    };

    const getAccessToken = async (authToken) => {
        var baseString = username + "&" + md5(password);
        var authenSignature = md5(baseString);

        const response = await fetch(
            "http://localhost:8080/api/access_request",
            {
                method: "POST",
                headers: {
                    Accept: "application/json",
                    "Content-Type": "application/json"
                },
                body: JSON.stringify({
                    authen_signature: authenSignature,
                    auth_token: authToken
                })
            }
        );

        const data = await response.json();
        return data;
    };
    let Navigate = useNavigate();
    const onLogin = (event) => {
        const form = event.currentTarget;
        event.preventDefault();
    
        if (form.checkValidity() === false) {
            event.stopPropagation();
        } else {
            doLogin();
        }
    
        setValidated(true);
    }
    const doLogin = async () => {
        const data1 = await getAuthenToken();
        const authToken = data1.data.auth_token;

        console.log(data1);


        const data2 = await getAccessToken(authToken);

        console.log(data2);

        localStorage.setItem("access_token",data2.data.access_token);
        localStorage.setItem("user_id",data2.data.account_info.user_id);
        localStorage.setItem("username",username);
        localStorage.setItem("first_name",data2.data.account_info.first_name);
        localStorage.setItem("last_name",data2.data.account_info.last_name);
        localStorage.setItem("age",data2.data.account_info.age);
        localStorage.setItem("address",data2.data.account_info.address);
        localStorage.setItem("email",data2.data.account_info.email);
        localStorage.setItem("phone",data2.data.account_info.phone);
        localStorage.setItem("role_id",data2.data.account_info.role_id);
        localStorage.setItem("role_name",data2.data.account_info.role_name);

        Navigate("home", {replace: false });

    }
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
                <Form noValidate validated={validated} onSubmit={onLogin}>
                <Row className="mb-3">
                    <Form.Group as={Col} controlId="validateUsername">
                        <Form.Label>Username</Form.Label>
                        <Form.Control
                            required
                            type="text"
                            placeholder="Username"
                            onChange={(e) => setUsername(e.target.value)}
                        />
                        <Form.Control.Feedback type="invalid">
                            กรุณากรอก Username
                        </Form.Control.Feedback>
                    </Form.Group>
                </Row>
                <Row className="mb-3">
                    <Form.Group as={Col} controlId="validatePassword">
                        <Form.Label>Password</Form.Label>
                        <Form.Control
                            required
                            type="password"
                            placeholder="Password"
                            onChange={(e) => setPassword(e.target.value)}
                        />
                        <Form.Control.Feedback type="invalid">
                            กรุณากรอก Password
                        </Form.Control.Feedback>
                    </Form.Group>
                </Row>
                <Row>
                    <Col md={3}>
                        <Button type="submit">Login</Button>
                    </Col>
                </Row>
            </Form>
            </div>
        </>
    );
}
