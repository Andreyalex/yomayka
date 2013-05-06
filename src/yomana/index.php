<?php
$admin_cookie_code = 'mvmsdfo45n3aef7dsyf';
setcookie('JoomlaAdminSession', $admin_cookie_code, 0, '/');
header('Location: ../administrator/index.php');
?>
