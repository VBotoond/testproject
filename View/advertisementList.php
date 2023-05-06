<!DOCTYPE html>
<html>
  <head>
    <title>Advertisement List</title>
    <style>
      <?php include "../Styles/styles.css"?>
    </style>
  </head>
  <body>
    <a href="/testproject">
      <button class="my-button">Back to Homepage</button>
    </a>
    <h1>Advertisement List</h1>
    <div class="table-wrapper">
      <table class="fl-table">
        <thead>
          <tr>
            <th>Title</th>
            <th>Id</th>
            <th>Username</th>
          </tr>
        </thead>
        <tbody> <?php
			require('../Controller/advertisementController.php');

			$advertisementController = new advertisementController();
			$advertisements= $advertisementController->getAllAdvertisements();
			
			foreach ($advertisements as $advertisement) {
                echo '
					<tr>';
				echo '
						<td>' . $advertisement->getTitle() . '</td>';
                echo '
						<td>' . $advertisement->getId() . '</td>';
                echo '
						<td>' . $advertisement->getUsername() . '</td>';
                echo '
					</tr>';
			}
			
				?> </tbody>
      </table>
    </div>
  </body>
</html>







