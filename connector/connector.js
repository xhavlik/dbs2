const fs = require("fs");
const mysql = require('mysql');
const credentials = require('./credentials');

const input = fs.readFileSync(0, "utf-8");

const con = mysql.createConnection({
    multipleStatements: true,
    host: credentials.host,
    user: credentials.user,
    password: credentials.password,
    database: "wine"
});

con.connect(err => {
    if (err) throw err;

    con.query(input, (err, result) => {
        if (err) throw err;
        console.log(result);

        con.end(err => {
            if (err) throw err
        });
    });
});
