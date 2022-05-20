<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/app.css">
    <title>Alert</title>
</head>
<body>
    <div class="container">
        <div class="groupeBar">
            <h3>Group List</h3>
            <div><span></span></div>
        </div>
        <div class="userBar">
            <div class="userList">
                <h3>Users List</h3>
                <span>Limited at 15</span>
                <?php foreach($users as $user): ?>
                <div class="userBox"><span><?= $user->getLastName() . $user->getFirstName()[0]; ?></span></div>
                <?php endforeach; ?>
            </div>
        </div>

        <div class="interface">