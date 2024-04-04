<?php
// Database connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "scrm_db";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);





// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $item_name = $_POST['item_name'];
    $quantity = $_POST['quantity'];
    $user_id = $_POST['user_id'];

    // SQL query to insert data into the 'order' table
    $sql = "INSERT INTO `order` (item_name, quantity, username, uid) VALUES ('$item_name', '$quantity', '$user_id' ,1 )";

    if ($conn->query($sql) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Close connection
$conn->close();
?>
