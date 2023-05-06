<!DOCTYPE html>
<html>
  <head>
    <title>User List</title>
    <style>
      <?php include "../Styles/styles.css"?>
    </style>
  </head>
  <body>
    <a href="/testproject">
      <button class="my-button">Back to Homepage</button>
    </a>
    <h1>User List</h1>
    <div class="table-wrapper">
      <table class="fl-table">
        <thead>
          <tr>
            <th>Name</th>
            <th>Id</th>
          </tr>
        </thead>
        <tbody> <?php
			require('../Controller/userController.php');

			$userController = new UserController();
			$users = $userController->getAllUsers();

			
			foreach ($users as $user) {
                echo '
					<tr>';
                echo '
						<td>' . $user->getName() . '</td>';
				echo '
						<td>' . $user->getId() . '</td>';
                echo '
					</tr>';
			}
			
				?> </tbody>
      </table>
  </body>
</html>





