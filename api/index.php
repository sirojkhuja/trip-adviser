<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST');

require_once(dirname(__FILE__)."/configs/setup.php"); // Loading project configuration information
require_once(dirname(__FILE__)."/configs/mysql_connect.php"); // Loading a mysql-object language options	

if($_SERVER['REQUEST_METHOD'] === 'GET') {
    $method = $_GET['method'];

    if($method) {
        try {
            echo json_encode(($method)());
        } catch (\Throwable $th) {
            echo json_encode(array(
                'OK' => false,
                'error' => $method.' method was not found.'
            ));
        }
    } else {
        echo json_encode(noParam("method"));
    }
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $reqBody = json_decode(file_get_contents('php://input'), true);

    if($reqBody['method']) {
        try {
            echo json_encode(($reqBody['method'])($reqBody["params"]));
        } catch (\Throwable $th) {
            echo json_encode(array(
                'OK' => false,
                'error' => $method.' method was not found.'
            ));
        }
    } else {
        echo json_encode(noParam("method"));
    }
}

function getQuestion() {
    global $db;
    $questionId = $_GET["question_id"];
    $result = $db->sql2array("SELECT a.*, q.question_title, q.param_id FROM `tb_answers` a LEFT JOIN `tb_questions` q ON a.question_id=q.id WHERE a.question_id=".$questionId);
    if (!$result) return success();
    return $result;
}

function getResults($params) {
    global $db;
    $rule_params = $db->sql2array('SELECT p.id, tb.param FROM (SELECT param_1 as param FROM `tb_rules` WHERE param_1_value!="" UNION ALL SELECT param_2 as param FROM `tb_rules` WHERE param_2_value!="" UNION ALL SELECT param_3 as param FROM `tb_rules` WHERE param_3_value!="") tb LEFT JOIN `tb_params` p ON tb.param=p.param_name GROUP BY p.id');

    $choosen_params = [];
    $rule_params_choosen = [];
    foreach ($rule_params as $row) {
        array_push($rule_params, $row['id']);
    }


    foreach ($params as $row) {
        if (in_array($row['paramId'], $rule_params_choosen)) {
            array_push($choosen_params, $row['paramId']);
        }
    }
    return $choosen_params;
}

function noParam($param) {
    return array(
        "OK" => false,
        "error" => "Parameter - ".$param." - was not provided"
    );
}

function incorrectVal($param, $value) {
    return array(
        "OK" => false,
        "error" => "Incorrect ".$param." value was provided: ".$value
    );
}

function success() {
    return ["OK" => true];
}
die();
?>