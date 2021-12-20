<?php

/*
* Created by Behzod Jumayev @ 2012
* bekzod_8904@mail.ru
*/


// Database connection
require_once("database.php");
global $db;
$db = new CDatabase(DATABASENAME, DATABASEHOST, DATABASEUSER, DATABASEPASSWORD);
?>