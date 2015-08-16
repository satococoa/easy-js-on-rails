$ ->
  $('form[data-remote]').on('ajax:before', (e) ->
    $('[type="submit"]').hide()
    $('.mdl-spinner').addClass('is-active')

  ).on('ajax:beforeSend', (e, xhr, settings) ->
    settings.timeout = 10000

  ).on('ajax:success', (e, data, status, xhr) ->
    $(data.html).prependTo('.posts-table > tbody')
    $('#post_body').val('')
    $('[type="submit"]').show()
    $('.mdl-spinner').removeClass('is-active')
    alert "保存しました！！"

  ).on('ajax:error', (e, xhr, status, error) ->
    $('[type="submit"]').show()
    $('.mdl-spinner').removeClass('is-active')
    alert "エラーが発生しました！！:\n#{xhr.responseJSON.errors}"
  )
