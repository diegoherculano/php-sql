<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="estilo/style.css">
</head>
<body>
    <?php
        require_once "includes/banco.php";
        require_once "includes/funcoes.php";
    ?>
    <div id="corpo">
        <?php
            $c = $_GET['cod'] ?? 0;
            $busca = $banco->query("select * from jogos where cod='$c'");
        ?>
        <h1>Detalhes do jogo</h1>
        <table class="detalhes">
            <?php
                if(!$busca){
                    echo "<tr><td>Busca falhou!";
                } else {
                    if($busca->num_rows == 1){
                        $reg = $busca->fetch_object();
                        $t = thumb($reg->capa);
                        echo "<tr><td rowspam='3'><img src='$t' class='full'>";
                        echo "<tr><td><h1>$reg->nome</h1>";
                        echo "Nota: " . number_format($reg->nota, 1) . "/10.0";
                        echo "<tr><td>$reg->descricao";
                        echo "<tr><td>Adm";
                    } else {
                        echo "<tr><td>Nenhum registro encontrado";
                    }
                }
            
            ?>
        </table>
        <a href="index.php"><img src="icones/icoback.png"></a>
    </div>    
</body>
</html>