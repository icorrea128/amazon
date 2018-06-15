var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "Economics",
  database: "bamazon"
});

var queryString = 'SELECT * FROM products';

connection.connect(function(err){
    if (err) throw err;
    console.log("Success");
})

console.log("Product Store");
connection.query(queryString, function(err, rows, fields) {
  if (err) throw err;

  for (var i in rows) {
      console.log('Item ID: ', rows[i].item_id);
      console.log('Product Name:', rows[i].product_name);
      console.log('Departmenmt Name:', rows[i].department_name);
      console.log('Price:', rows[i].price);
      console.log('Stock Quantity:', rows[i].stock_quantity);
  }
});


inquirer.prompt([

  {
    type: "list",
    name: "id",
    message: "What product ID would you like to choose?",
    choices:["0","1","2","3","4","5","6","7","8","9"]
  },
  {
    type: "list",
    name: "quantity",
    message: "How much of this product are you willing to purchase?",
    choices: ["150","300","450","600","750","900","1050","1200","1350","1500","1650"] 
  }
]).then(function(user) {

  // If the user guesses the password...
  if (user.quantity > 1500) {
    console.log("Insufficient Quantity.");
  }
  // If the user doesn't guess the password...
  else {
    // var productName = "SELECT product_name FROM products"
    // var product = connection.query(productName,function(err,rows,fields){
    //   for (i in rows){
    //     user.id === rows[i];
    //   }
    // })
    // console.log(product)
    console.log("Order successfully placed.");
    console.log("This Data-Mart will cost you an amount of $" + user.quantity * 500);
    connection.query(queryString,function(err,rows,fields){
      rows.stock_quantity - user.quantity;
    })
  }
});
