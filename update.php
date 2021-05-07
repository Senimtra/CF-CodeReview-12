<?php
require_once 'actions/db_connect.php';

if ($_GET['id']) {
    $id = $_GET['id'];
    $sql = "SELECT * FROM locations WHERE id = {$id}";
    $result = $connect->query($sql);
    if ($result->num_rows == 1) {
        $data = $result->fetch_assoc();
        $loc_name = $data['loc_name'];
        $image = $data['image'];
    } else {
        header("location: error.php");
    }
    $connect->close();
} else {
    header("location: error.php");
}
?>

<!DOCTYPE html>
<html>

<head>
    <title>Edit Location</title>
    <?php require_once 'components/bootstrap.php' ?>
    <style type="text/css">
        fieldset {
            margin: auto;
            margin-top: 100px;
            width: 60%;
        }

        .img-thumbnail {
            width: 70px !important;
            height: 70px !important;
        }
    </style>
</head>

<body>
    <fieldset>
        <legend class='h2'>Update request <img class='img-thumbnail rounded-circle' src='<?php echo $image ?>' alt="<?php echo $loc_name ?>"></legend>
        <form action="actions/a_update.php" method="post">
            <table class="table">
                <tr>
                    <th>Name</th>
                    <td><input class="form-control" type="text" name="name" placeholder="Location Name" value="<?php echo $loc_name ?>" /></td>
                </tr>
                <tr>
                    <th>Price</th>
                    <td><input class="form-control" type="number" name="price" step="any" placeholder="Price" value="<?php echo $price ?>" /></td>
                </tr>
                <tr>
                    <th>Image</th>
                    <td><input class="form-control" type="text" name="image" value="<?php echo $image ?>" /></td>
                </tr>
                <tr>
                    <input type="hidden" name="id" value="<?php echo $data['id'] ?>" />
                    <input type="hidden" name="image" value="<?php echo $data['image'] ?>" />
                    <td><button class="btn btn-success" type="submit">Save Changes</button></td>
                    <td><a href="index.php"><button class="btn btn-warning" type="button">Back</button></a></td>
                </tr>
            </table>
        </form>
    </fieldset>
</body>

</html>