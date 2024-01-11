<?php
require_once "lib/dbconnect.php"; 
require_once "lib/board.php";
require_once "lib/game.php";
require_once "lib/users.php";

$method = $_SERVER['REQUEST_METHOD'];
$request = explode('/', trim($_SERVER['PATH_INFO'],'/'));

$input = json_decode(file_get_contents('php://input'),true);


switch ($r=array_shift($request)) {
    case 'board' : 
		switch ($b=array_shift($request)) {
			case '': 
			case null: handle_board($method);
				break;
			case 'piece': handle_piece($method, $request[0],$request[1],$input);
				break;
			default: header("HTTP/1.1 404 Not Found");
				break;
	}
		break;
	case 'status': 
		if(sizeof($request)==0) {handle_status($method, $input);}
		else {header("HTTP/1.1 404 Not Found");}
		break;
	case 'players': handle_player($method, $request,$input);
		break;
	case 'finished': handle_finished($method);
		break;
	case 'turn': handle_turn($method, $input);
		break;
	case 'dice': handle_dice($method, $input);
		break;
	case 'dices': handle_dice_turn($method);
		break;
    default: 	
		header("HTTP/1.1 404 Not Found");
	exit;
}

function handle_dice_turn($method) {
    if($method=='GET') {
		dice_turn();
    } 
	else {
        header('HTTP/1.1 405 Method Not Allowed');
    }
    
}

function handle_dice($method, $input) {
    if($method=='GET') {
    } 
	else if ($method=='PUT') {
           set_dice($input['dice'], $input['color']);
    } 
	else {
        header('HTTP/1.1 405 Method Not Allowed');
    }
    
}

function handle_turn($method, $input) {
    if($method=='GET') {
    } 
	else if ($method=='PUT') {
           set_turn($input['turn']);
    } 
	else {
        header('HTTP/1.1 405 Method Not Allowed');
    }
    
}

function handle_finished($method) {
    if($method=='GET') {
    } 
	else if ($method=='POST') {
           reset_players();
    } 
	else {
        header('HTTP/1.1 405 Method Not Allowed');
    }
    
}

function handle_board($method) {
    if($method=='GET') {
            show_board();
    } else if ($method=='POST') {
           reset_board();
    } else {
        header('HTTP/1.1 405 Method Not Allowed');
    }
    
}

function handle_piece($method, $x,$y,$input) {
	if($method=='GET') {
		show_piece($x,$y);
	} else if ($method=='PUT') {
		move_piece($x,$y,$input['x'], $input['y'], $input['token']);
	}    
}

function handle_player($method, $p, $input) {
	switch ($b=array_shift($p)) {
			case '':
			case null: if($method=='GET') {
					   		show_users();}
					   else {
					   		header("HTTP/1.1 400 Bad Request"); 
							print json_encode(['errormesg'=>"Method $method not allowed here."]);}
		               break;
			case 'Y': 
			case 'G':
			case 'B':
			case 'R': handle_user($method, $b,$input);
				break;
			default: header("HTTP/1.1 404 Not Found");
					 print json_encode(['errormesg'=>"Player $b not found."]);
					 break;
		}
}

function handle_status($method, $input) {
    if($method=='GET') {
        show_status();
    } else {
        update_status_winner($input['color']);
    }
}

?>