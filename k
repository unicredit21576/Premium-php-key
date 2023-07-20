 <?php
$premium = array(
    "key" => "kubicek6839",
    "kd7SebHXXE4WpgtL" => "k4ftt",
    // add more if u want
);
$data2 = json_decode(file_get_contents('php://input'), true);
if (isset($data2['dhprem'])) {
    $key = base64_decode(base64_decode(base64_decode(base64_decode($data2['dhprem']))));
     if (array_key_exists($key, $premium)) {
       echo base64_encode(base64_encode(base64_encode($premium[$key])));
       } else {
        echo base64_encode(base64_encode(base64_encode('false')));
       }
 } elseif (isset($data2['botprem'])) {
    $key = $data2['botprem'];
    if (array_key_exists($key, $premium)) {
        echo $premium[$key];
        } else {
         echo 'false';
        }
 } else {
    header("Location: https://discord.gg/uSgzNwHDTS");
    exit();
   };
