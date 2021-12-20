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
            echo json_encode(($reqBody['method'])($reqBody['params']));
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
    $result = $db->sql2array("SELECT a.answer_title, a.next_question_id, pv.param_value, q.question_title, p.param_name 
    FROM `tb_answers` a 
    LEFT JOIN `tb_param_values` pv ON a.`param_value_id`=pv.id 
    LEFT JOIN `tb_questions` q ON a.question_id=q.id 
    JOIN `tb_params` p ON q.param_id=p.id
    WHERE a.question_id=".$questionId);
    file_put_contents("result.txt", "some");

    if (!$result) return success();
    return $result;
}

function getResults($params) {
    global $db;
    $rules = $db->sql2array('SELECT * FROM `tb_rules`');
    $selected_attributes = [];
    $selected_params = [];

    foreach ($params as $param) {
        $selected_params[$param['paramName']] = $param['paramValue'];
    }

    foreach ($rules as $rule) {
        if(array_key_exists($rule['param_1'], $selected_params)) {
            if($selected_params[$rule['param_1']] == $rule['param_1_value']) {
                if ($rule['param_2'] != "") {
                    if(array_key_exists($rule['param_2'], $selected_params)) {
                        if($selected_params[$rule['param_2']] == $rule['param_2_value']) {
                            if ($rule['param_3'] != "") {
                                if(array_key_exists( $rule['param_3'], $selected_params)) {
                                    if($selected_params[$rule['param_3']] == $rule['param_3_value']) {
                                        $selected_attributes[$rule['attribute']] = $rule['attribute_value'];        
                                    }
                                }
                            } else {
                                $selected_attributes[$rule['attribute']] = $rule['attribute_value'];
                            }
                        }
                    }            
                } else {
                    $selected_attributes[$rule['attribute']] = $rule['attribute_value'];
                }
            }
        }
    }

    $query = "SELECT city_title FROM `tb_cities`";
    $additions = "WHERE ";
    $i = 0;
    foreach ($selected_attributes as $key => $attribute) {
        $additions .= "".$key."='".$attribute."' AND ";
        $i++;
    }

    if ($i == 0) {
        return [];        
    } else {
        $query .= substr($additions, 0, -5).";";
    }

    $selected_cities = $db->sql2array($query);

    return $selected_cities;
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