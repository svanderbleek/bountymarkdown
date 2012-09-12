# Setup
```
node -g install coffee-script
```
# Description
When posting bounties, Bountify users describe their task or question in a textarea. After they submit their question or task, its description is interpreted as Markdown. I want users to be able to preview their posts in Markdown as they type, like StackOverflow.

Please provide the html and javascript for a div (#preview) that displays the contents of a textarea (#bounty_description) interpreted as Markdown. The textarea contents should be converted and shown in the preview div as the user types. Please link to the appropriate plugin. Other than that plugin, please stick to Jquery. Furthermore, it should sanitize script tags. No need to style it.

Also, if the contents of the textarea are non-nil and have changed, an ajax POST call should be made to https://bountify.co/save_work every two minutes, with the URL parameter contents containing the contents of the textarea.
# Usage
```
$("#some-text-area").markdownPreview("#some-preview-div", optionalRefreshTime);

$("#some-text-area").timedPersist("http://url.com", parameterName, optionalPostInterval);
```