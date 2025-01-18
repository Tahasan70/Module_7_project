<?php

use Config\Database;
use Api\TaskApi\Task;
use Api\TaskApi\Router;

require_once "./vendor/autoload.php";
header("Content-Type: application/json");

// Database Initialization
$db = new Database();
$conn = $db->getConnection();
$task = new Task($conn);
$router = new Router($task); 


// Handle Request
$router->handleRequest();

$conn->close();
