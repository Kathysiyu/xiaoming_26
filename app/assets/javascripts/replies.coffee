$ ->
  $('#reply-btn').click ->
    text = $('#reply-text').val()
    $.ajax
      url: '/create_reply'
      method: 'post'
      dataType: 'json'
      data:
        tweetid: $(this).data('tweetid')
        text: text
      context: this
      success: (data) ->
        $('#replies').append "<p><strong><a href='/users/#{data.userid}'>#{data.username}</a> : </strong>#{text}</p>"
        $('#reply-text').val ''
