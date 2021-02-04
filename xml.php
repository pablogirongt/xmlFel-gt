<?php



$file_factura = $_FILES["input_factura"];

$xml_content = file_get_contents($file_factura["tmp_name"]);

$xml_content = str_replace("<dte:", "<", $xml_content);
$xml_content = str_replace("</dte:", "</", $xml_content);

$xml_content = simplexml_load_string(utf8_encode($xml_content));

$xml_content = (array) $xml_content;

// xml data
//$xml_data["version"]       = $xml_content["@attributes"]["Version"];
$xml_content["SAT"] = (array) $xml_content["SAT"];
$xml_content["SAT"]["DTE"] = (array) $xml_content["SAT"]["DTE"];
$xml_content["SAT"]["DTE"]["DatosEmision"] = (array) $xml_content["SAT"]["DTE"]["DatosEmision"];
$xml_content["SAT"]["DTE"]["DatosEmision"]["Emisor"] = (array) $xml_content["SAT"]["DTE"]["DatosEmision"]["Emisor"];
$xml_content["SAT"]["DTE"]["DatosEmision"]["Receptor"] = (array) $xml_content["SAT"]["DTE"]["DatosEmision"]["Receptor"];
$xml_content["SAT"]["DTE"]["DatosEmision"]["Frases"] = (array) $xml_content["SAT"]["DTE"]["DatosEmision"]["Frases"];


$xml_data["nombreEmisor"]  =    $xml_content["SAT"]["DTE"]["DatosEmision"]["Emisor"]["@attributes"]["NombreComercial"];
$xml_data["nitEmisor"]  =       $xml_content["SAT"]["DTE"]["DatosEmision"]["Emisor"]["@attributes"]["NITEmisor"];
$xml_data["nombreReceptor"]  =  $xml_content["SAT"]["DTE"]["DatosEmision"]["Receptor"]["@attributes"]["NombreReceptor"];
$xml_data["nitReceptor"]  =     $xml_content["SAT"]["DTE"]["DatosEmision"]["Receptor"]["@attributes"]["IDReceptor"];
$xml_data["bien"]  =            $xml_content["SAT"]["DTE"]["DatosEmision"]["Frases"]["@attributes"]["CodigoEscenario"];

print_r($xml_data);


?>