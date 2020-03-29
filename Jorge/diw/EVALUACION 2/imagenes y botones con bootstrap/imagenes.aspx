﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="imagenes.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Imágenes</title>

    <!-- Bootstrap -->
    <link href="../bootstrap-4.0.0-alpha.4/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

    <div class="container">

        <h1>Imágenes</h1>

        <div class="row">
            <div class="col-xs-12 col-sm-6">
                <img src="./img/th.jpg" alt="gatito" class="img-fluid">
            </div>
            <div class="col-xs-12 col-sm-6">
                <img src="./img/th.jpg" alt="gatito" class="img-fluid img-thumbnail">
            </div>

            <div class="col-xs-12 col-sm-6">
                <img src="./img/th.jpg" alt="gatito" class="img-fluid img-rounded">
            </div>
            <div class="col-xs-12 col-sm-6">
                <img src="./img/th.jpg" alt="gatito" class="img-fluid img-rounded img-thumbnail">
            </div>

            <div class="col-xs-12 col-sm-6">
                <img src="./img/th.jpg" alt="gatito" class="img-fluid img-circle">
            </div>
            <div class="col-xs-12 col-sm-6">
                <img src="./img/th.jpg" alt="gatito" class="img-fluid img-circle img-thumbnail">
            </div>
        </div>

    </div>


</body>

</html>
