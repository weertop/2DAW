﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="botoneshtml.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Botones</title>

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

        <h1>Botones</h1>

        <h2>Tipos</h2>

        <button type="button" class="btn btn-primary">Primary</button>
        <button type="button" class="btn btn-secondary">Secondary</button>
        <button type="button" class="btn btn-success">Success</button>
        <button type="button" class="btn btn-info">Info</button>
        <button type="button" class="btn btn-warning">Warning</button>
        <button type="button" class="btn btn-danger">Danger</button>
        <button type="button" class="btn btn-link">Link</button>

        <h2>Activados</h2>

        <button type="button" class="btn active btn-primary" aria-pressed="true">Primary</button>
        <button type="button" class="btn active btn-secondary" aria-pressed="true">Secondary</button>
        <button type="button" class="btn active btn-success" aria-pressed="true">Success</button>
        <button type="button" class="btn active btn-info" aria-pressed="true">Info</button>
        <button type="button" class="btn active btn-warning" aria-pressed="true">Warning</button>
        <button type="button" class="btn active btn-danger" aria-pressed="true">Danger</button>
        <button type="button" class="btn active btn-link" aria-pressed="true">Link</button>

        <h2>Desactivados</h2>

        <button type="button" disabled class="btn btn-primary">Primary</button>
        <button type="button" disabled class="btn btn-secondary">Secondary</button>
        <button type="button" disabled class="btn btn-success">Success</button>
        <button type="button" disabled class="btn btn-info">Info</button>
        <button type="button" disabled class="btn btn-warning">Warning</button>
        <button type="button" disabled class="btn btn-danger">Danger</button>
        <button type="button" disabled class="btn btn-link">Link</button>

        <h2>Outline</h2>

        <button type="button" class="btn btn-outline-primary">Primary</button>
        <button type="button" class="btn btn-outline-secondary">Secondary</button>
        <button type="button" class="btn btn-outline-success">Success</button>
        <button type="button" class="btn btn-outline-info">Info</button>
        <button type="button" class="btn btn-outline-warning">Warning</button>
        <button type="button" class="btn btn-outline-danger">Danger</button>

        <h2>Enlaces como botones</h2>

        <a href="#" class="btn" role="button">Link as button</a>
        <a href="#" class="btn active" role="button">Link as button Active</a>
        <a href="#" class="btn disabled" role="button">Link as button Disabled</a>
        <br />
        <br />
        <a href="#" class="btn btn-secondary" role="button">Secondary link</a>
        <a href="#" class="btn btn-secondary active" role="button">Secondary link Active</a>
        <a href="#" class="btn btn-secondary disabled" role="button">Secondary link Disabled</a>
        <br />
        <br />
        <a href="#" class="btn btn-primary" role="button">Primary link</a>
        <a href="#" class="btn btn-primary active" role="button">Primary link Active</a>
        <a href="#" class="btn btn-primary disabled" role="button">Primary link Disabled</a>

        <h2>Inputs como botones</h2>

        <input type="button" class="btn btn-secondary" value="Input as button">
        <input type="button" class="btn btn-secondary active" value="Input as button Active">
        <input type="button" class="btn btn-secondary disabled" value="Input as button Disabled">
        <br />
        <br />
        <input type="submit" class="btn btn-secondary" value="Submit as button">
        <input type="submit" class="btn btn-secondary active" value="Submit as button Active">
        <input type="submit" class="btn btn-secondary disabled" value="Submit as button Disabled">
        <br />
        <br />
        <input type="reset" class="btn btn-secondary" value="Reset as button">
        <input type="reset" class="btn btn-secondary active" value="Reset as button Active">
        <input type="reset" class="btn btn-secondary disabled" value="Reset as button Disabled">

        <h2>Tamaños</h2>

        <button type="button" class="btn btn-primary btn-lg">Large button</button>
        <button type="button" class="btn btn-primary">Normal button</button>
        <button type="button" class="btn btn-primary btn-sm">Small button</button>

        <h2>Expandir</h2>

        <button type="button" class="btn btn-primary btn-lg btn-block">Large button</button>
        <button type="button" class="btn btn-primary btn-block">Normal button</button>
        <button type="button" class="btn btn-primary btn-sm btn-block">Small button</button>

        <br />
        <br />
        <br />
        <br />
    </div>


</body>

</html>
