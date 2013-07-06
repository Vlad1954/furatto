jQuery ->
  jPM = $.jPanelMenu()
  jPM.on()

  # Custom selects
  $("select[data-furatto='select']").dropkick()

  #Custom checkboxes
  $("input[data-furatto='checkbox'], input[data-furatto='radio']").each ->
    input = $(@)
    color = $(@).data('color') || 'blue'
    input.iCheck
      checkboxClass: "icheckbox_flat-#{color}"
      radioClass: "iradio_flat-#{color}"

  #Pagination Demo
  $(".pagination a").click (e) ->
    e.preventDefault()
    if (!$(this).parent().hasClass("previous") && !$(this).parent().hasClass("next"))
      $(this).parent().siblings("li").removeClass("active")
      $(this).parent().addClass("active")

  #Closing buttons
  $('.close').each ->
    $(@).click (e) ->
      e.preventDefault()
      $(@).parent().fadeOut();