var mysql      = require('mysql');

var connection = mysql.createConnection({
  host     : "localhost",
  port     : "3306",
  user     : "root",
  password : "GUS1234gus",
  database : "queveohoy"
});

module.exports = connection;
