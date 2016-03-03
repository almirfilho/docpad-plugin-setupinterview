split = require './splitter'
wrap = require './wrapper'

module.exports = (htmlContent) ->
  split(htmlContent).map((section) -> wrap(section)).join '\n'
