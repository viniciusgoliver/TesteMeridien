<?php

/*
    Neste Teste Coloquei 2 formas de Inverss�o,
    a primeiro com la�o for, e a segundo com a fun��o nativa implode e
    array reverse.

*/

// Fun��o de Invers�o com FOR
function StringInversao_1($string){

    $varString = '';
    for ($i = 0, $length = mb_strlen($string); $i < $length; $i++) {
        $varString .= $string[$length - $i - 1];
    }

    return $varString;

}

// Fun��o de Invers�o com IMPLODE e ARRAY_REVERSE
function StringInversao_2($string){

    $varString = implode('', array_reverse(str_split($string)));

    return $varString;

}