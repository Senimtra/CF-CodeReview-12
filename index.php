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
                <div><img class='cardImg' src='" . $row['loc_image'] . "'></div>
                <div class='cardTitle mt-3'>$row[loc_name]</div>
                <div class='cardDshort mt-1'>$row[descr_short]</div>
                <div class='cardPrice mt-1'>$ $row[price]</div>
                <div class='btn-group mt-4'>
                <button type='button' class='btn btn-secondary'><a href='update.php?id=" . $row['id'] . "'>Edit</a></button>
                <button type='button' class='btn btn-secondary'><a href='delete.php?id=" . $row['id'] . "'>Delete</a></button>
                <button type='button' class='btn btn-secondary'><a href='details.php?id=" . $row['id'] . "'>Details</a></button>
                </div>
            </div>
        </div>";
    };
} else {
    $tbody =  "<tr><td colspan='5'><center>No Data Available </center></td></tr>";
}

// <div class="btn-group btn-group-toggle" data-toggle="buttons">
//   <label class="btn btn-secondary active">
//     <input type="radio" name="options" id="option1" autocomplete="off" checked> Active
//   </label>
//   <label class="btn btn-secondary">
//     <input type="radio" name="options" id="option2" autocomplete="off"> Radio
//   </label>
//   <label class="btn btn-secondary">
//     <input type="radio" name="options" id="option3" autocomplete="off"> Radio
//   </label>
// </div>

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
    <?php include_once 'header.php' ?>
    <?php include_once 'navbar.php' ?>
    <div class="container-fluid">
        <div class="row g-4 px-5 mt-2">
            <?= $tbody; ?>
        </div>
    </div>
    <?php include_once 'footer.php' ?>
</body>

</html>