import { useEffect, useState } from "react";
import { Link, Navigate } from "react-router-dom";
import { API_GET, API_POST } from "./api";
import ProductItem from "./ProductItem";
import "./Home.css";
import img1 from "./images/istockphoto-1254474165-170667a.jpg";

export default function Home() {
  const [productTypes, setProductTypes] = useState([]);
  const [productTypeId, setProductTypeId] = useState(0);
  const [products, setProducts] = useState([]);

  useEffect(() => {
    async function fetchData() {
      const response = await fetch("http://localhost:8080/api/product_types", {
        method: "GET",
        headers: {
          Accept: "application/json",
          "content-Type": "application/json",
          Authorization: "Bearer " + localStorage.getItem("access_token"),
        },
      });

      let json = await response.json();
      setProductTypes(json.data);
    }

    fetchData();
  }, []);

  useEffect(() => {
    async function fetchData() {
      const response = await fetch(
        "http://localhost:8080/api/products/type/" + productTypeId,
        {
          method: "GET",
          headers: {
            Accept: "application/json",
            "content-Type": "application/json",
            Authorization: "Bearer " + localStorage.getItem("access_token"),
          },
        }
      );

      const json = await response.json();
      setProducts(json.data);
    }

    fetchData();
  }, [productTypeId]);

  const fetchProducts = async () => {
    let json = await API_GET("products/type/" + productTypeId);
    setProducts(json.data);
  };

  const onDelete = async (data) => {
    let json = await API_POST("product/delete", {
      product_id: data.product_id,
    });

    if (json.result) {
      fetchProducts();
    }
  };

  if (localStorage.getItem("access_token")) {
    return (
      <div className="background">
        <div class="nav container">
          <a href="#" className="logo">
            Green plantnet
          </a>
          <i class="bx bx-shopping-bag" id="cart-icon"></i>
          <div class="cart">
            <h2 class="cart-title">Your Cart</h2>
            <div class="cart-content">
              <i class="bx bxs-trash-alt cart-remove"></i>
            </div>
            <div class="total">
              <div class="total-title">Total</div>
            </div>
            <button type="button" class="btn-buy">
              Buy
            </button>
          </div>
        </div>
        <img src={img1} alt="Flower" className="flower-image" />
        <div className="search-container">
          <input type="text" className="search-input" placeholder="Search..." />
        </div>
        <div className="categories">
          <select
            value={productTypeId}
            onChange={(e) => setProductTypeId(e.target.value)}
            className="categories"
          >
            <option value={0}>ทุกประเภทสินค้า</option>
            {productTypes.map((item) => (
              <option key={item.product_type_id} value={item.product_type_id}>
                {item.product_type}
              </option>
            ))}
          </select>

          <div className="buttons-container">
            <Link to={"/product/add"} className="btn btn-outline-primary me-3">
              เพิ่ม
            </Link>

            <Link to={"/report"} className="btn btn-outline-primary me-3">
              รายงาน
            </Link>
          </div>

          <div className="categories-right"></div>

          <div className="container mt-3">
            {products.map((item) => (
              <ProductItem
                key={item.product_id}
                data={item}
                onDelete={onDelete}
              />
            ))}
          </div>
        </div>
      </div>
    );
  }

  return <Navigate to="/" replace />;
}
