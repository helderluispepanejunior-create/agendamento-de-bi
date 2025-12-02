# 📌 Agendamento de BI -- Sistema de Agendamento de Bilhete de Identidade

Sistema simples para agendamento de emissão ou renovação do Bilhete de
Identidade, desenvolvido em **HTML, CSS, PHP e MySQL**.

## 📖 1. Descrição do Projeto

Este projeto tem como objetivo permitir que o cidadão faça um
**agendamento do BI** escolhendo: - Tipo de pedido: **Novo** ou
**Renovação** - Local de emissão: Província, Distrito e Localidade -
Data de agendamento - Dados pessoais - Cálculo automático da idade a
partir da data de nascimento

O sistema guarda todas as informações na base de dados para posterior
consulta.

## 🗂️ 2. Estrutura do Projeto

    agendamento-de-bi/
    ├── conexao.php
    ├── teste.html
    ├── processar.php
    ├── bi_base_de_dados.sql
    ├── assets/
    │   ├── css/style.css
    │   ├── img/
    │   └── js/
    └── README.md

## 🛠️ 3. Tecnologias Utilizadas

-   HTML5\
-   CSS3\
-   PHP\
-   MySQL\
-   XAMPP / WAMP / LAMP

## 🗄️ 4. Base de Dados

``` sql
CREATE DATABASE agendamento_bi;
USE agendamento_bi;

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `tipo_bi` varchar(50) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `Idade` int(11) DEFAULT NULL,
  `vitalicio` varchar(10) DEFAULT NULL,
  `num_bi_anterior` varchar(50) DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `distrito` varchar(50) DEFAULT NULL,
  `localidade` varchar(50) DEFAULT NULL,
  `data_agendamento` date DEFAULT NULL
) 
```

## 🔌 5. Configuração do ficheiro de conexão

``` php
<?php
$servidor = "localhost";
$usuario  = "root";
$senha    = "";
$bd       = "agendamento_bi";

$con = mysqli_connect($servidor, $usuario, $senha, $bd);

if(!$con){
    die("Erro na conexão: " . mysqli_connect_error());
}
?>
```

## 📝 6. Como Executar

1.  Instalar XAMPP\
2.  Copiar o projeto para `htdocs`\
3.  Importar o SQL\
4.  Abrir no navegador:\

```{=html}
<!-- -->
```
    http://localhost/agendamento-de-bi/

## 🤝 7. Contribuição

Contribuições são bem-vindas.

## 👤 Autor

Hélder Luís Pepane Júnior
