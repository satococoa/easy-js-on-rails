$ ->
  $('form[data-remote]').on('ajax:success', (e, data, status, xhr) ->
    $tr = $('<tr/>')
    $body = $('<td/>').addClass('mdl-data-table__cell--non-numeric').text(data.body)
    $created = $('<td/>').text(data.created_at)
    $tr.append($body).append($created).prependTo('.posts-table > tbody')
    $('#post_body').val('')
    alert "保存しました！！"

  ).on('ajax:error', (e, xhr, status, error) ->
    alert "エラーが発生しました！！:\n#{xhr.responseJSON.errors}"
  )
