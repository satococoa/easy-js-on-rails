$ ->
  $('form[data-remote]').on('ajax:before', (e) ->
    # 送信ボタンを隠して代わりにスピナーを出す
    $('[type="submit"]').hide()
    $('.mdl-spinner').addClass('is-active')

  ).on('ajax:complete', (e, xhr, status) ->
    # スピナーを隠して送信ボタンを出す
    $('.mdl-spinner').removeClass('is-active')
    $('[type="submit"]').show()

  ).on('ajax:beforeSend', (e, xhr, settings) ->
    # タイムアウトを10秒に設定
    settings.timeout = 10000

  ).on('ajax:success', (e, data, status, xhr) ->
    $(data.html).prependTo('.posts-table > tbody')
    $('#post_body').val('')

    alert "保存しました！！"

  ).on('ajax:error', (e, xhr, status, error) ->
    alert "エラーが発生しました！！:\n#{xhr.responseJSON.errors}"
  )
