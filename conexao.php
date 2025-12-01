<?php
$servername = "localhost";
$username = "root";  
$password = "";       
$dbname = "bi";


$conn = new mysqli( $servername, $username ,$password ,$dbname );


if ($conn->connect_error) {
  die("Falha na conexão: " . $conn->connect_error);
} else {
  echo "conexao bem sucedida";
}

$tipo_bi = $_POST['tipo_bi'];
$nome = $_POST['nome'];
$data_nascimento = $_POST['data_nascimento'];
$idade = $_POST['idade'];
$vitalicio = $_POST['vitalicio'];
$num_bi_anterior = $_POST['num_bi_anterior'];
$provincia = $_POST['provincia'];
$distrito = $_POST['distrito'];
$localidade = $_POST['localidade'];
$data_agendamento = $_POST['data_agendamento'];


$sql = "INSERT INTO pedidos (tipo_bi, nome, data_nascimento, idade, vitalicio, num_bi_anterior, provincia, distrito, localidade, data_agendamento)
VALUES ('$tipo_bi', '$nome', '$data_nascimento', '$idade', '$vitalicio', '$num_bi_anterior', '$provincia', '$distrito', '$localidade', '$data_agendamento')";

if ($conn->query($sql) === TRUE) {
  echo "Agendamento registado com sucesso!";
} else {
  echo "Erro: " . $sql . "<br>" . $conn->error;
}


$conn->close();
?>

