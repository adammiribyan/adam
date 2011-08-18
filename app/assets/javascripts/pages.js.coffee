jQuery ->
  ($ "form.request label").inFieldLabels()
  ($ "form input#request_body").focus()
  ($ "span.return-sign").click -> ($ "form.request").submit()