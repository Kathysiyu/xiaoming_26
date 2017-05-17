$ ->
  $(document).on 'click', '#reply-btn', ->
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

  $(document).on 'click', '#review-btn', ->
    number = $('#review-rate').val()
    text = $('#review-review').val()
    $.ajax
      url: '/create_review'
      method: 'post'
      dataType: 'json'
      data:
        rate: number
        review: text
        userid: $(this).data('userid')
        rid: $(this).data('rid')
      context: this
      success: (data) ->
        $('#reviews').append "<p><strong>Nickname: #{data.nickname}</strong><h4>Rate: #{number}</h4>Review: #{text}</p>"
        $('#review-rate').val ''
        $('#review-review').val ''
