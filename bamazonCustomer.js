
var mysql = require("mysql");
var inquirer = require("inquirer");
var id = parseInt(id);

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "",
  database: "bamazon"
});

connection.connect(function (err) {
  if (err) throw err;
  start();
});

function start() {
  //display all of the items available for sale. Include the ids, names, and prices of products for sale.
  connection.query('SELECT * FROM products', function (error, results) {
    if (error) throw error;
    results.forEach(function (RowDataPacket) {
      console.log("ID: " + RowDataPacket.id);
      console.log("Product Name: " + RowDataPacket.product_name);
      console.log("Price: " + RowDataPacket.price);
      // console.log("Deapartment Name: " + RowDataPacket.department_name);
      // console.log("Quantity: " + RowDataPacket.stock_quantity);
      console.log("-------------------------------------");
    });
    prompt();
  });
}
//^^^^^^^^^^^^^I'm going to clean this to use console.table


//prompt users with two messages: 
//1. ask them the ID of the product they would like to buy
function prompt() {
  inquirer
    .prompt({
      name: "action",
      type: "input",
      message: [
        "What is the ID # of the product you would like to buy?"
      ]
    })
    .then(function (answer) {
      id = answer.action;
      //check if the product is available
      checkAvailability();
      // console.log(id);
    });
}

//check if your store has enough of the product to meet the customer's request
function checkAvailability() {
  //display all of the items available for sale. Include the ids, names, and prices of products for sale.
  connection.query('SELECT * FROM products', function (error, results) {
    if (error) throw error;
    results.forEach(function (RowDataPacket) {

    });
    Quantity();
  });
}


//2. ask how many units of the product they would like to buy. 
function Quantity() {
  var id = parseInt(id);
  inquirer
    .prompt({
      name: "action",
      type: "input",
      message: [
        "How many would you like to buy?"
      ]
    })
    .then(function (answer) {
      
    });
}

//IN PROGRESSSSSSSSS: ONSITE INTERVIEW THIS WEEK THEN FINISHING THIS BAD BOY BY MONDAY 5/1
