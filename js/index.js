$("li").click(function(){

	$("li").removeClass("active");
	$(this).addClass("active");
});
function changeFrameHeight(){
    var ifm= document.getElementById("myiframe"); 
    var height = $("#mynav").height();
    ifm.height=document.documentElement.clientHeight - height*2;
}
window.onresize=function(){  
     changeFrameHeight();  
} 