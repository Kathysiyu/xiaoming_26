$ ->
  $('#user-profile').hide()
  $('#user-rank').hide()
  $('#user-tweets').show()

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
