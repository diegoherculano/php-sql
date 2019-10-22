<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Projeto - Aula MySQL</title>
        <link rel="stylesheet" href="estilo/style.css">
    </head>
    <body>
        <?php
            require_once "includes/banco.php";
            require_once "includes/funcoes.php";
        ?>
        <div id="corpo">
            <h1>Escolha seu jogo!</h1>
            <table class="listagem">
                <?php
                    $busca = $banco->query("select * from jogos order by nome");
                    if(!$busca){
                        echo "<tr><td>Infelizmente a busca deu errado";
                    } else {
                        if($busca->num_rows == 0){
                            echo "<tr><td>Nenhum registro encontrado.";
                        } else {
                            while($reg=$busca->fetch_object()){
                                $t = thumb($reg->capa);
                                echo "<tr><td><img src='$t' class='mini'/><td>
                                <a href='detalhes.php?cod=$reg->cod'>$reg->nome";
                                echo "<td>Adm";
                            }
                        }
                    }
                ?>            
        </div>
    </body>
</html>