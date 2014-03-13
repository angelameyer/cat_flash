$(document).keydown (e) ->
  switch e.which
    when 37
      $('.prev-link a')[0].click()
    when 39
      $('.next-link a')[0].click()
    else
      return
  e.preventDefault()
  return