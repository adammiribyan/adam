jQuery ->
  Comments.init();
  
Comments = 
  init: ->
    ($ "div.facebook-comments").each (index, element) ->
      comments = $(@);
      
      if comments.children("p.comments-count").length > 0
      
        comments.showLink = ($ "p.comments-count a", comments);
        comments.container = ($ "div.comments", comments);
        
        comments.container.hide();
        comments.isVisible = false;
        
        comments.toggleComments = (event) ->
          event.preventDefault();
          if @isVisible then @hideComments() else @showComments();
          
        comments.showComments = ->
          @showLink.parent().hide();
          @container.fadeIn();
          @isVisible = true;
          
        comments.hideComments = ->
          @container.fadeOut();
          @isVisible = false;
          
        comments.showLink.bind "click", (event) -> comments.toggleComments(event);