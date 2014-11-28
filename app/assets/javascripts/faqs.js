function changeIcon(o){   
   obj = document.getElementById(o);
   if (obj.className=="icon icon-chevron-down") 
     setTimeout(function(){obj.className= "icon icon-chevron-up"}, 800);
   else if (obj.className=="icon icon-chevron-up") 
      obj.className= "icon icon-chevron-down";     
}   