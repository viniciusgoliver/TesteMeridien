<?php

/*
    Neste Teste Coloquei 2 formas de Inverssуo,
    a primeiro com laчo for, e a segundo com a funчуo nativa implode e
    array reverse.

*/

// Funчуo de Inversуo com FOR
function StringInversao_1($string){

    $varString = '';
    for ($i = 0, $length = mb_strlen($string); $i < $length; $i++) {
        $varString .= $string[$length - $i - 1];
    }

    return $varString;

}

// Funчуo de Inversуo com IMPLODE e ARRAY_REVERSE
function StringInversao_2($string){

    $varString = implode('', array_reverse(str_split($string)));

    return $varString;

}