var cout1 = 388;
function num1() {
		var spannumber = document.getElementById("num");
		var date = new Date();
		var second = date.getSeconds();
		var minutes = date.getMinutes();
		var hours = date.getHours();
		var number = cout1  + 1 * minutes + second + parseInt(Math.random() * 3);	
		spannumber.innerHTML = number;		
}
var cout2 = 182;
function num2() {
		var spannumber = document.getElementById("num2");
		var date = new Date();
		var second = date.getSeconds();
		var minutes = date.getMinutes();
		var hours = date.getHours();
		var number = cout2  + 1 * minutes - second + parseInt(Math.random() * 2);	
		spannumber.innerHTML = number;		
}
$(function(){
	num1();
	num2();
    setInterval("num1()", 3000);
    setInterval("num2()", 5000);
})
