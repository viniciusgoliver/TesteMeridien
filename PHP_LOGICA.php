<?php

require_once('funcoes/functions.php');

$string_inversao_1 = "VINICIUS GOMES DE OLIVEIRA";
$string_inversao_2 = "VINICIUS GOMES DE OLIVEIRA";


print utf8_encode('Primeiro M�todo de Invers�o de String - ').StringInversao_1($string_inversao_1).'<br><br>';
print utf8_encode('Segundo M�todo de Invers�o de String - ').StringInversao_2($string_inversao_2);


?>