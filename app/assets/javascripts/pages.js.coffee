jQuery ->
  ($ "form.request label").inFieldLabels()
  ($ "form input#request_body").focus()
  ($ "span.return-sign").click -> ($ "form.request").submit()
  ($ "form.request").submit -> ($ "div#request_form").html "<p class='notice'>...</p>"