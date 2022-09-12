<?php
include("connection.php");

$sql = "SELECT * FROM books";
        $result = mysqli_query($conn, $sql);
        echo('<table border="1">
        <tr><td>id</td><td>title</td><td>author</td><td>discription</td></tr>');

   
        if (mysqli_num_rows($result) > 0) {
            while($row = mysqli_fetch_assoc($result)) {
            echo('<tr><td>'.$row["id"].'</td><td>'.$row["title"].'</td><td>'.$row["author"].'</td><td>'.$row["disc"].'</td></tr>');
            }
            echo('</table>');
          } else {
            echo "0 results";
          }

          mysqli_close($conn);
?>