timedPersist = (url, parameter, interval) ->
  interval ?= 120000

  toPersist = this

  oldValue = toPersist.val()
  changed = (newValue) ->
    not(oldValue == newValue)

  persist = ->
    value = toPersist.val()

    if changed value
      oldValue = value

      data = {}
      data[parameter] = encodeURIComponent value

      $.post url, data
  
  setInterval persist, interval

  this

(($) -> 
  $.fn.timedPersist = timedPersist 
)(jQuery)
