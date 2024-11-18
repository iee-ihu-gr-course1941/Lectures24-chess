
$( function() {
    draw_empty_board();
    fill_board();
    $('#chess_reset').click(reset_board);
}
);
function draw_empty_board() {
	var t='<table id="chess_table">';
	for(var i=8;i>0;i--) {
		t += '<tr>';
		for(var j=1;j<9;j++) {
			t += '<td class="chess_square" id="square_'+j+'_'+i+'">' + j +','+i+'</td>'; 
		}
		t+='</tr>';
	}
	t+='</table>';
	$('#chess_board').html(t);
}


function fill_board() {
	$.ajax(
		{	method: "get",
			url: "chess.php/board/", 
		 success: fill_board_by_data 
		}
		);
}

function fill_board_by_data(data) {
	for(var i=0;i<data.length;i++) {
		var o = data[i];
		var id = '#square_'+ o.x +'_' + o.y;
		var c = (o.piece!=null)?o.piece_color + o.piece:'';
        var im = (o.piece!=null)?'<img src="images/'+c+'.png" class="piece">':'';
	//	$(id).addClass(o.b_color+'_square');
		$(id).addClass(o.b_color+'_square').html(im);
		
	}
}


function reset_board() {
	$.ajax(
		{url: "chess.php/board/", 
         method: 'post',
		 success: fill_board_by_data 
		}
		);
}

