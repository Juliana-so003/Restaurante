<?php
 if(isset($_POST['buscarNome']) && $_POST['buscarNome'] == 'Buscar')
 { $nome = $_POST['nome']; 
} if(empty($nome)){ 
echo "<script type='text/javascript'>alert('Informe o nome!');javascript:window.location='consulta.php';</script>"; 
}else
 { $strcon = mysqli_connect("localhost", "root", "", "estagio") or die("<script type='text/javascript'>alert('Erro ao conectar no banco de dados!');javascript:window.location='consulta.php';</script>");
 $nome = mysqli_real_escape_string( $strcon, $nome ); 
$sql = "SELECT * FROM tbl_usuario WHERE nome LIKE '%".$nome."%'"; 
$con = mysqli_query($strcon, $sql) or die("<script type='text/javascript'>alert('Erro ao tentar fazer a consulta');javascript:window.location='consulta.php';</script>"); 
?> 
<table border="1">
 <tr>
 <td>CPF</td>
 <td>Nome</td>
 <td>Sexo</td>
 <td>Idade</td>
 <td>Cidade</td>
 <td>Telefone</td>
 <td>Email</td>
 </tr>
 <?php 
while($dado = $con->fetch_array()){
 ?>
 <tr>
 <td><?php echo $dado['cpf']; ?></td> 
<td><?php echo $dado['nome']; ?></td> 
<td><?php echo $dado['sexo']; ?></td> 
<td><?php echo $dado['idade']; ?></td> 
<td><?php echo $dado['cidade']; ?></td>
 <td><?php echo $dado['telefone']; ?></td> 
<td><?php echo $dado['email']; ?></td> 
</tr> <?php
 } ?>
 '</table>';
 <?php }
 ?> 






