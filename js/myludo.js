//each color's path
const paths = {
	Y: [
		{ x: 5, y: 1 }, { x: 5, y: 2 }, { x: 5, y: 3 }, { x: 5, y: 4 }, { x: 5, y: 5 },
		{ x: 4, y: 5 }, { x: 3, y: 5 }, { x: 2, y: 5 }, { x: 1, y: 5 },
		{ x: 1, y: 6 }, { x: 1, y: 7 }, { x: 2, y: 7 }, { x: 3, y: 7 },
		{ x: 4, y: 7 }, { x: 5, y: 7 }, { x: 5, y: 8 }, { x: 5, y: 9 },
		{ x: 5, y: 10 }, { x: 5, y: 11 }, { x: 6, y: 11 }, { x: 7, y: 11 },
		{ x: 7, y: 10 }, { x: 7, y: 9 }, { x: 7, y: 8 }, { x: 7, y: 7 },
		{ x: 8, y: 7 }, { x: 9, y: 7 }, { x: 10, y: 7 }, { x: 11, y: 7 },
		{ x: 11, y: 6 }, { x: 11, y: 5 }, { x: 10, y: 5 }, { x: 9, y: 5 },
		{ x: 8, y: 5 }, { x: 7, y: 5 }, { x: 7, y: 4 }, { x: 7, y: 3 },
		{ x: 7, y: 2 }, { x: 7, y: 1 }, { x: 6, y: 1 }, { x: 5, y: 1 },
		{ x: 6, y: 2 }, { x: 6, y: 3 }, { x: 6, y: 4 }, { x: 6, y: 5 }
	],

	G: [
		{ x: 1, y: 7 }, { x: 2, y: 7 }, { x: 3, y: 7 },
		{ x: 4, y: 7 }, { x: 5, y: 7 }, { x: 5, y: 8 }, { x: 5, y: 9 },
		{ x: 5, y: 10 }, { x: 5, y: 11 }, { x: 6, y: 11 }, { x: 7, y: 11 },
		{ x: 7, y: 10 }, { x: 7, y: 9 }, { x: 7, y: 8 }, { x: 7, y: 7 },
		{ x: 8, y: 7 }, { x: 9, y: 7 }, { x: 10, y: 7 }, { x: 11, y: 7 },
		{ x: 11, y: 6 }, { x: 11, y: 5 }, { x: 10, y: 5 }, { x: 9, y: 5 },
		{ x: 8, y: 5 }, { x: 7, y: 5 }, { x: 7, y: 4 }, { x: 7, y: 3 },
		{ x: 7, y: 2 }, { x: 7, y: 1 }, { x: 6, y: 1 }, { x: 5, y: 1 }, 
		{ x: 5, y: 2 }, { x: 5, y: 3 }, { x: 5, y: 4 }, { x: 5, y: 5 },
		{ x: 4, y: 5 }, { x: 3, y: 5 }, { x: 2, y: 5 }, { x: 1, y: 5 },
		{ x: 1, y: 6 }, { x: 1, y: 7 }, { x: 2, y: 6 }, { x: 3, y: 6 },
		{ x: 4, y: 6 }, { x: 5, y: 6 }
	],

	B: [
		{ x: 7, y: 11 }, { x: 7, y: 10 }, { x: 7, y: 9 }, { x: 7, y: 8 }, { x: 7, y: 7 },
		{ x: 8, y: 7 }, { x: 9, y: 7 }, { x: 10, y: 7 }, { x: 11, y: 7 },
		{ x: 11, y: 6 }, { x: 11, y: 5 }, { x: 10, y: 5 }, { x: 9, y: 5 },
		{ x: 8, y: 5 }, { x: 7, y: 5 }, { x: 7, y: 4 }, { x: 7, y: 3 },
		{ x: 7, y: 2 }, { x: 7, y: 1 }, { x: 6, y: 1 }, { x: 5, y: 1 }, 
		{ x: 5, y: 2 }, { x: 5, y: 3 }, { x: 5, y: 4 }, { x: 5, y: 5 },
		{ x: 4, y: 5 }, { x: 3, y: 5 }, { x: 2, y: 5 }, { x: 1, y: 5 },
		{ x: 1, y: 6 }, { x: 1, y: 7 }, { x: 2, y: 7 }, { x: 3, y: 7 },
		{ x: 4, y: 7 }, { x: 5, y: 7 }, { x: 5, y: 8 }, { x: 5, y: 9 },
		{ x: 5, y: 10 }, { x: 5, y: 11 }, { x: 6, y: 11 }, { x: 7, y: 11 },
		{ x: 6, y: 10 }, { x: 6, y: 9 }, { x: 6, y: 8 }, { x: 6, y: 7 }
	],

	R: [
		{ x: 11, y: 5 }, { x: 10, y: 5 }, { x: 9, y: 5 },
		{ x: 8, y: 5 }, { x: 7, y: 5 }, { x: 7, y: 4 }, { x: 7, y: 3 },
		{ x: 7, y: 2 }, { x: 7, y: 1 }, { x: 6, y: 1 }, { x: 5, y: 1 }, 
		{ x: 5, y: 2 }, { x: 5, y: 3 }, { x: 5, y: 4 }, { x: 5, y: 5 },
		{ x: 4, y: 5 }, { x: 3, y: 5 }, { x: 2, y: 5 }, { x: 1, y: 5 },
		{ x: 1, y: 6 }, { x: 1, y: 7 }, { x: 2, y: 7 }, { x: 3, y: 7 },
		{ x: 4, y: 7 }, { x: 5, y: 7 }, { x: 5, y: 8 }, { x: 5, y: 9 },
		{ x: 5, y: 10 }, { x: 5, y: 11 }, { x: 6, y: 11 }, { x: 7, y: 11 },
		{ x: 7, y: 10 }, { x: 7, y: 9 }, { x: 7, y: 8 }, { x: 7, y: 7 },
		{ x: 8, y: 7 }, { x: 9, y: 7 }, { x: 10, y: 7 }, { x: 11, y: 7 },
		{ x: 11, y: 6 }, { x: 11, y: 5 }, { x: 10, y: 6 }, { x: 9, y: 6 },
		{ x: 8, y: 6 }, { x: 7, y: 6 }
	]
};

//each color's pieces
var playerPositions = {
	Y: [0, 0, 0, 0],
	G: [0, 0, 0, 0],
	B: [0, 0, 0, 0],
	R: [0, 0, 0, 0],
};

const winningNumbers = [41, 42, 43, 44];
var me={};
var me_extra=[];
var me_extra_starting=[];
var game_status={};

$( function() {
    draw_empty_board();
    fill_board();
    $('#ludo_reset').click(reset_board);
	$('#ludo_login').click(login_to_game);
	$('#do_move').click(do_move);
	$('#do_zari').click(do_zari);
} );

function draw_empty_board() {
	var t='<table id="ludo_table">';

	for(var i=11;i>0;i--) {
		t += '<tr>';
		for(var j=1;j<12;j++) {
			t += '<td class="ludo_square" id="square_'+j+'_'+i+'"></td>'; 
		}
		t+='</tr>';
	}

	t+='</table>';
	$('#ludo_board').html(t);
}

function fill_board() {
	$.ajax(
		{url: "ludo.php/board/", 
		 success: fill_board_by_data });
}

function fill_board_by_data(data) {
	for(var i=0;i<data.length;i++) {
		var o = data[i];
		var id = '#square_'+ o.x +'_' + o.y;
		var c = (o.piece!=null)?o.piece_color:'';
        var im = (o.piece!=null)?'<img class="piece" src="images/'+c+'.png">':'';
		$(id).addClass(o.b_color+'_square').html(im);
	}
	console.log(data);
}

async function reset_board() {
	playerPositions[me.piece_color] = [0,0,0,0];

	await $.ajax(
		{url: "ludo.php/board/", 
         method: 'post',
		 success: fill_board_by_data 
		}
		);
}

function login_to_game() {
	if($('#username').val()=='') {
		alert('You have to set a username');
		return;
	}
	var p_color = $('#pcolor').val();
	draw_empty_board(p_color);
	fill_board();
	
	$.ajax({url: "ludo.php/players/"+p_color, 
			method: 'PUT',
			dataType: "json",
			contentType: 'application/json',
			data: JSON.stringify( {username: $('#username').val(), piece_color: p_color}),
			success: login_result,
			error: login_error});
}

function login_result(data) {
	me = data[0];

	console.log(me);

	$('#game_initializer').hide();
	update_info();
	game_status_update();

	getInfoPieces();
}

function getInfoPieces() {
	$.ajax(
		{url: "ludo.php/board/", 
		 success: function(data) {
			getColorPieces(data);
			getColorStarting(data);
		 
		 var x2, y2;

		 for(var i=0;i<me_extra_starting.length;i++) {
			if(me.piece_color == me_extra_starting[i].b_color) {
				x2 = me_extra_starting[i].x;
				y2 = me_extra_starting[i].y;
				break;
			}
		}
	
		console.log(x2,y2);
	
		if (me_extra && me_extra.length > 0) {
			var firstElement = me_extra.shift();
			var x1 = firstElement.x;
			var y1 = firstElement.y;
		  
		  } else {
			console.error("me_extra is undefined or empty.");
		  }
	
		console.log(x1,y1);

		$.ajax({
			url: "ludo.php/board/piece/" + x1 + '/' + y1,
			method: 'PUT',
			dataType: "json",
			contentType: 'application/json',
			data: JSON.stringify({ x: x2, y: y2, token: me.token }),
			success: move_result,
			error: login_error
		  });		

	} });
}

function login_error(data,y,z,c) {
	var x = data.responseJSON;
	alert(x.errormesg)
	$('#username').val("");
}

function update_info(){
	$('#game_info').html
		("I am Player: "+me.piece_color
		+", my name is "+me.username 
		+'<br>Token='+me.token
		+'<br>Game state: '+game_status.status+', '
		+ game_status.p_turn+' must play now.');	
}

function game_status_update() {
	$.ajax(
		{url: "ludo.php/status/", 
		success: update_status });
}

function update_status(data) {
	// if (game_status.p_turn==null 
	// 	||  data[0].p_turn != game_status.p_turn 
	// 	||  data[0].status != game_status.status) {
	// 	fill_board();
	// }

	game_status=data[0];
	update_info();

	//  if(game_status.p_turn==me.piece_color &&  me.piece_color!=null) {
	// 	x=0;
	// 	// do play
	// 	$('#move_div').show(1000);
	// 	setTimeout(function() { game_status_update();}, 15000);
	// } else {
	// 	// must wait for something
	// 	$('#move_div').hide(1000);
	// 	setTimeout(function() { game_status_update();}, 4000);
	// } 
 	
}

function do_move() {
	var s = $('#the_move').val();
	
	var a = s.trim().split(/[ ]+/);
	if(a.length!=4) {
		alert('Must give 4 numbers');
		return;
	}
	$.ajax({url: "ludo.php/board/piece/"+a[0]+'/'+a[1], 
			method: 'PUT',
			dataType: "json",
			contentType: 'application/json',
			data: JSON.stringify( {x: a[2], y: a[3], token: me.token}),
			success: move_result,
			error: login_error});
	
}

function getColorPieces(data){
	for(var i=0;i<data.length;i++) {
		var o = data[i];
		if (o.piece_color == me.piece_color){
			me_extra.push(o);
		}
	}

	// sto me_Extra exw ta pionia k olo to info sortarismeno 1 --> 4
	// tou current player/color
	me_extra.sort(function(a, b) {
        return a.piece - b.piece;
    });

	console.log(me_extra);
}

function getColorStarting(data) {
	for(var i=0; i<data.length; i++) {
		var o = data[i];
		if (o.status == 'STARTING_Y'
			|| o.status == 'STARTING_G'
			|| o.status == 'STARTING_B'
			|| o.status == 'STARTING_R') {
				me_extra_starting.push(o);
			}
	}

	console.log(me_extra_starting);
}

async function do_zari() {
	var s = $('#zari').val();
	var a = s.trim().split(/[ ]+/);
	if(a.length==0) {
		alert('Must give 1 number');
		return;
	}

	var p = $('#pawn').val();
	var pa = p.trim().split(/[ ]+/);
	if(pa.length==0) {
		alert('Must give 1 number');
		return;
	}

	var pint = parseInt(pa);
	var sint = parseInt(a);
	var t_color = me.piece_color;

	await moveDice(t_color, pint, sint);
}

async function moveDice(color, pieceIndex, steps) {
	if (me_extra.length > 0 
		&& playerPositions[color][pieceIndex-1] == 0) {
		await isAtBase(pieceIndex);
	}

	 await moveDicePawn (color, pieceIndex, steps);

	 await isWinner(playerPositions[me.piece_color], winningNumbers);
}

async function isWinner(array, numbers) {
		if (array.length !== numbers.length) {
			return false;
		}
	
		const arrayCopy = [...array];
	
		for (const number of numbers) {
			const index = arrayCopy.indexOf(number);
	
			if (index !== -1) {
				arrayCopy.splice(index, 1);
			} else {
				return false;
			}
		}

		await announceWinner();
		await empty_players();
		//refreshWindow();
}

async function empty_players() {
	await $.ajax(
		{url: "ludo.php/finished/", 
         method: 'post',
		 success: reset_board 
		});
}

function refreshWindow() {
	location.reload();
}

async function announceWinner() {
	alert(me.piece_color + " IS THE WINNER!!!");
}

async function moveDicePawn (color, pieceIndex, steps) {
	var path = paths[color];
	var currentPosition = playerPositions[color][pieceIndex-1];
	var { x: x1, y: y1 } = path[currentPosition];
	var newPositionIndex = currentPosition + steps;

	if (newPositionIndex >= 45) {
		alert("Pawn can't move to that square!");
		return;
	}
  
	if (newPositionIndex < path.length) {
		var newPosition = path[newPositionIndex];
		var { x, y } = newPosition; 
	  playerPositions[color][pieceIndex-1] = newPositionIndex;
  
	  await $.ajax({
		url: "ludo.php/board/piece/" + x1 + '/' + y1,
		method: 'PUT',
		dataType: "json",
		contentType: 'application/json',
		data: JSON.stringify({ x: x, y: y, token: me.token }), // Correct variable names
				success: function(data) {
					move_result(data);
					console.log("Main AJAX success:", data);},
		error: login_error
	  });
	}
}

async function isAtBase (pieceIndex) {
	var element = [];
	var length_m = me_extra.length;

	for (var i=0; i<length_m; i++) {
		element[i] = me_extra.pop();
	}

	console.log(me_extra);
	console.log(element);

	for (var i=0; i<element.length; i++) {
		if (pieceIndex != element[i].piece) {
			me_extra.unshift(element[i]);
		}
		
		else {
			var x_curr = element[i].x;
			var y_curr = element[i].y;

			var x_curr1, y_curr1;

			for(var j=0;j<me_extra_starting.length;j++) {
				if(me.piece_color == me_extra_starting[j].b_color) {
					x_curr1 = me_extra_starting[j].x;
					y_curr1 = me_extra_starting[j].y;
					break;
				}
			}

			await $.ajax({
				url: "ludo.php/board/piece/" + x_curr + '/' + y_curr,
				method: 'PUT',
				dataType: "json",
				contentType: 'application/json',
				data: JSON.stringify({ x: x_curr1, y: y_curr1, token: me.token }), 
				success: function(data) {
					move_result(data);
					console.log("Base Sec AJAX success:", data);},
				error: login_error
			  });
		}
	}

}

function move_result(data){
	fill_board_by_data(data);
}