$ ->
  $('form[data-remote]').on 'ajax:success', (e, data, status, xhr) ->
    $(data.html).prependTo('.posts-table > tbody')
    $('#post_body').val('')
    alert "保存しました！！"

  $('form[data-remote]').on 'ajax:error', (e, xhr, status, error) ->
    alert "エラーが発生しました！！:\n#{xhr.responseJSON.errors}"
