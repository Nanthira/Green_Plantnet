const mysql = require("mysql");

module.exports = {
    createProduct: async (pool, username, password, firstName, lastName, age, address, email, phone) => {
        var sql = "INSERT INTO products (user_name, user_pwd, , first_name, last_name, age, address, email, phone	) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        sql = mysql.format(sql, [ username, password, firstName, lastName, age, address, email, phone]);
      return await pool.query(sql);
    }
}
