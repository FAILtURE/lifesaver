<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script>
var socket = null;
$(document).ready( function() {
    connectWS();	
});
	function connectWS() {
	    console.log("tttttttttttttt")
	    var ws = new WebSocket("ws://13.209.132.37:8080/lifesaver/replyEcho");
	    socket = ws;
	    ws.onopen = function () {
	        console.log('Info: connection opened.');
	    };
	    ws.onmessage = function (event) {
	        console.log("ReceiveMessage:"+ event.data+'\n');
	        let $socketAlert = $('div#socketAlert');
	        $socketAlert.html(event.data);
	        $socketAlert.css('display', 'block');
	        
	        setTimeout( function() {
	        	$socketAlert.css('display', 'none');
	        }, 5000);
	    };
	    ws.onclose = function (event) { 
	        console.log('Info: connection closed.');
	        setTimeout( function(){ connectWS(); }, 1000); // retry connection!!
	    }; 
	    ws.onerror = function (err) { console.log('Error:', err); };
	}
</script>   