jQuery ->
  ($ "ul#projects li")
    .bind "mouseenter", -> 
      ($ "p.description").html($(@).attr("data-description")).show();
    .bind "mouseleave", -> 
      ($ "p.description").hide();
  