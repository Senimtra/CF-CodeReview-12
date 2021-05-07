<?php
require_once 'actions/db_connect.php';
$sql = "SELECT * FROM locations";
$result = mysqli_query($connect, $sql);
$tbody = ''; //this variable will hold the body for the table
if (mysqli_num_rows($result)  > 0) {
    while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
        $tbody .= "
        <div class='col-4'>
            <div class='p-4 border card'>
                <div><img class='img-thumbnail' src='" . $row['loc_image'] . "'></div>
                <div>$row[loc_name]</div>
                <div>$row[price]</div>
                <div><a href='update.php?id=" . $row['id'] . "'><button class='btn btn-primary btn-sm' type='button'>Edit</button></a><a href='delete.php?id=" . $row['id'] . "'><button class='btn btn-danger btn-sm' type='button'>Delete</button></a><a href='details.php?id=" . $row['id'] . "'><button class='btn btn-success btn-sm' type='button'>Details</button></a></div>
            </div>
        </div>";
    };
} else {
    $tbody =  "<tr><td colspan='5'><center>No Data Available </center></td></tr>";
}

$connect->close();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mount Everest Travel Agency</title>
    <?php require_once 'components/bootstrap.php' ?>
    <link rel="stylesheet" type="text/css" href="styles/styles.css">
</head>

<body>
    <?php include_once 'navbar.php' ?>
    <div class="container-fluid">
        <div class="row g-5 px-5 mt-2">
            <?= $tbody; ?>
        </div>
    </div>
</body>

</html>