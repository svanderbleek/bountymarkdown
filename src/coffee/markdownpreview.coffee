markdownPreview = (previewSelector, refresh) ->
  refresh ?= 400

  textarea = this 
  preview = $ previewSelector 

  converter = new Markdown.getSanitizingConverter()

  convert = -> 
    text = textarea.val()
    preview.html converter.makeHtml text

  setInterval convert, refresh 

  this

(($) -> 
  $.fn.markdownPreview = markdownPreview
)(jQuery)
