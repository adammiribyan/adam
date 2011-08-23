jQuery ->
  ($ "ul#projects li").bind "mouseenter", -> ($ "p.description").html($(@).attr("data-description")).show();
  ($ "ul#projects li").bind "mouseleave", -> ($ "p.description").hide();
  