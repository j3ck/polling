jQuery ->
  update()

update = ->
  if $('#comments').length > 0
    last_id = $('.comment:first-child').attr('data-id')
    $.get '/comments?last_id='+last_id, null, (data) ->
      $('#comments').prepend(data.form_html)
  setTimeout update, 5000
