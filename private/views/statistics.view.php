<!DOCTYPE html>
<h1> this is the stat page</h1>

<?php
    echo "<pre>";
    echo "This count for users: ";
    print_r($rows1);
    echo "This count for students: ";
    print_r($rows2);

    echo "If this is reached, DB Connection to Stats works :D"

?>
</html>