var width = document.documentElement.clientWidth;
var height = document.documentElement.clientHeight;
(function(){
        if(width<=414){
                var htmlSize = 100*(width/750)+"px";
                // document.documentElement.css("font-size",htmlSize)
                document.documentElement.style['font-size'] = htmlSize;
        }
})();