<?php
if (!empty($_POST["password"]) && !empty($_POST["confirmpassword"])) {
    $password = $_POST["password"];
    $confirmPassword = $_POST["confirmpassword"];

    // Minimum password length
    $minPasswordLength = 6;

    if (strlen($password) < $minPasswordLength) {
        echo json_encode(["error" => "Password should be at least {$minPasswordLength} characters long.", "disableSubmit" => true]);
    } elseif ($password !== $confirmPassword) {
        echo json_encode(["error" => "Passwords don't match.", "disableSubmit" => true]);
    } else {
        // You can add additional password strength criteria here if needed

        echo json_encode(["success" => "Password is valid.", "disableSubmit" => false]);
    }
}
?>
