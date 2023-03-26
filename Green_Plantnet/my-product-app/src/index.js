import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
//import App from './App';
import Login from './Login';
import reportWebVitals from './reportWebVitals';
import {
  BrowserRouter,
  Routes,
  Route,
} from "react-router-dom";
import Home from './Home';
import ProductDetail from './ProductDetail';
import Report from './Report';
////////////
import ProductxDetail from './ProductxDetail';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <BrowserRouter>
    <Routes>
      <Route path="/" element={<Login />} />
      <Route path="home" element={<Home />} />
      <Route path="/product/:productId" element={<ProductDetail />} />
      <Route path="/productx/:productxId" element={<ProductxDetail />} />

      <Route path="report" element={<Reportcata />} />
    </Routes>
  </BrowserRouter>,
  document.getElementById('root')
);

reportWebVitals();