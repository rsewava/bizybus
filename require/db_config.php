<?php
  $DB_host                = "localhost";
  $DB_username            = "admin";
  $DB_password            = "@sakurut2008";
  $DB_name                = "bizybus";
  try
  {
    $DB_connection_handler  = new PDO("mysql:host={$DB_host};dbname={$DB_name}",$DB_username,$DB_password);
    $DB_connection_handler->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  }
  catch(PDOException $e)
  {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
  }
?>