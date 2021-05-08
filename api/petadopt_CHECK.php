<?php
require_once 'RESTful.php';
$url = 'https://shallow.codes/FSWDC_CodeReview_11/api/webservice.php';
$result = curl_get($url);
$freePets = json_decode($result, true); //it turns the json into an object
$pets = $freePets['data'];
$tbody = "";
foreach ($pets as $data) {
    $tbody .= "
        <tr>
            <td><img class='img-thumbnail' src='" . $data['image'] . "'</td>
            <td>$data[name]</td>
            <td>$data[age]</td>
            <td>$data[hobbies]</td>
            <td>$data[description]</td>
            <td>
        </tr>";
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pet Adoption Check</title>
    <?php require_once '../components/bootstrap.php' ?>
    <link rel="stylesheet" type="text/css" href="../styles/styles.css">
</head>

<body>
    <?php include_once '../header.php' ?>
    <?php include_once '../navbar_a.php' ?>
    <div class="container">
        <div class="row">
            <p class='h2'>Not yet adopted pets - waiting for a new friend!</p>
            <button class="btn btn-sm btn-dark"><a href="http://shallow.codes/FSWDC_CodeReview_11/php/index.php">CodeReview11 - hosted @ shallow.codes</a></button>
            <table class='table table-striped'>
                <thead class='table-success'>
                    <tr>
                        <th>Picture</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Description</th>
                        <th>Hobbies</th>
                    </tr>
                </thead>
                <tbody>
                    <?= $tbody; ?>
                </tbody>
            </table>
        </div>
    </div>
    <?php include_once '../footer.php' ?>
</body>

</html>