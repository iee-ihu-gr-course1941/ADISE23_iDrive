<?php

function show_status() {
    global $mysqli;
	
	$sql = 'select * from game_status';
	$st = $mysqli->prepare($sql);
	$st->execute();
	$res = $st->get_result();
	header('Content-type: application/json');
	print json_encode($res->fetch_all(MYSQLI_ASSOC), JSON_PRETTY_PRINT);
}

function dice_turn() {
    global $mysqli;
	
	$sql = 'call dice_turn()';
	$st = $mysqli->prepare($sql);
	$st->execute();
	$res = $st->get_result();
	header('Content-type: application/json');
	print json_encode($res->fetch_all(MYSQLI_ASSOC), JSON_PRETTY_PRINT);
}

function set_dice($d_dice, $d_color) {
    global $mysqli;
	
	$sql = 'update players 
			set dice=?
			where piece_color=?';
	$st = $mysqli->prepare($sql);
	$st->bind_param('ss',$d_dice, $d_color);
	$st->execute();
}

function set_turn($b_turn) {
    global $mysqli;
	
	$sql = 'update game_status set p_turn=?';
	$st = $mysqli->prepare($sql);
	$st->bind_param('s',$b_turn);
	$st->execute();
}

function update_status_winner($winner_color) {
	global $mysqli;

	$new_status = 'ended'; 

	$sql = 'update game_status set status=?, result=?';
	$st = $mysqli->prepare($sql);
	$st->bind_param('ss',$new_status, $winner_color);
	$st->execute();
}

function update_game_status() {
	global $mysqli;
	
	$sql = 'select * from game_status';
	$st = $mysqli->prepare($sql);
	$st->execute();
	$res = $st->get_result();
	$status = $res->fetch_assoc();
	
	
	$new_status=null;
	$new_turn=null;
	
	// $st3=$mysqli->prepare('select count(*) as aborted from players WHERE last_action< (NOW() - INTERVAL 5 MINUTE)');
	// $st3->execute();
	// $res3 = $st3->get_result();
	// $aborted = $res3->fetch_assoc()['aborted'];
	// if($aborted>0) {
	// 	$sql = "UPDATE players SET username=NULL, token=NULL WHERE last_action< (NOW() - INTERVAL 5 MINUTE)";
	// 	$st2 = $mysqli->prepare($sql);
	// 	$st2->execute();
	// 	if($status['status']=='started') {
	// 		$new_status='aborted';
	// 	}
	// }

	
	$sql = 'select count(*) as c from players where username is not null';
	$st = $mysqli->prepare($sql);
	$st->execute();
	$res = $st->get_result();
	$active_players = $res->fetch_assoc()['c'];
	
	
	switch($active_players) {
		case 0: $new_status='not active'; 
			break;
		case 1: $new_status='started'; 
			break;
		case 2: $new_status='started'; 
			break;
	}

	$sql = 'update game_status set status=?';
	$st = $mysqli->prepare($sql);
	$st->bind_param('s',$new_status);
	$st->execute();
}

function read_status() {
	global $mysqli;
	
	$sql = 'select * from game_status';
	$st = $mysqli->prepare($sql);

	$st->execute();
	$res = $st->get_result();
	$status = $res->fetch_assoc();
	return($status);
}

?>