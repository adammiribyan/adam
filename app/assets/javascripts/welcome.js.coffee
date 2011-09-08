jQuery ->
  ($ "ul#projects a").bind "mouseenter", -> ($ "p.description").html($(@).attr("data-description")).show();
  ($ "ul#projects a").bind "mouseleave", -> ($ "p.description").hide();
  