const mysql = require("mysql");

module.exports = {
    createProductx: async (pool, productxName, productxTypeId, price, stock) => {
        var sql = "INSERT INTO productz (productx_name, productx_type_id, price, stock) "
                    + "VALUES (?, ?, ?, ?)";
        sql = mysql.format(sql, [productxName, productxTypeId, price, stock]);

        return await pool.query(sql);
    },

    getByProductxId: async (pool, productxId) => {
        var sql = "SELECT * FROM productz WHERE productx_id = ?";
        sql = mysql.format(sql, [productxId]);

        return await pool.query(sql);
    },

    updateProductx: async (pool, productxId, productxName, productxTypeId, price, stock) => {
        var sql = "UPDATE productz SET "
                + "productx_name=?,"
                + "productx_type_id=?,"
                + "price=?,"
                + "stock=? "
                + "WHERE productx_id = ?";
        sql = mysql.format(sql, [productxName, productxTypeId ,price, stock, productxId]);

        return await pool.query(sql);
    },

    deleteProductx: async (pool, productxId) => {
        var sql = "DELETE FROM productz WHERE productx_id = ?";
        sql = mysql.format(sql, [productxId]);

        return await pool.query(sql);
    },

    updateImagex: async (pool, productxId, fileName) => {
        var sql = "UPDATE productz SET image_url = ? "
                    + "WHERE productx_id = ?";
        sql = mysql.format(sql, [fileName, productxId]);

        return await pool.query(sql);
    },

    getSumProductx: async (pool) => {
        var sql = "SELECT a.productx_type_id,"
                    + "b.productx_type_name,"
                    + "SUM(a.stock) as productx_count "
                    + "FROM productz a "
                    + "JOIN productx_types b ON a.productx_type_id = b.productx_type_id "
                    + "GROUP BY a.productx_type_id, b.productx_type_name";
        
        return await pool.query(sql);
    }
}