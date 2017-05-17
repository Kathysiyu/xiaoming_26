$ ->
  $('#user-tweets').hide()
  $('#user-rank').hide()
  $('#user-profile').show()
  $('#qr-div').hide()

  $('#user-tweets-btn').click ->
    $('#user-profile').hide()
    $('#user-rank').hide()
    $('#user-tweets').show()

  $('#user-profile-btn').click ->
    $('#user-rank').hide()
    $('#user-tweets').hide()
    $('#user-profile').show()

  $('#user-rank-btn').click ->
    $('#user-profile').hide()
    $('#user-tweets').hide()
    $('#user-rank').show()

  toggle = true
  $('#qr-btn').click ->
    if toggle
      $('#qr-div').show()
      toggle = false
    else
      $('#qr-div').hide()
      toggle = true