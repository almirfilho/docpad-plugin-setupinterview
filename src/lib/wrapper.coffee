handlebars = require 'handlebars'
templateStr = require('fs').readFileSync __dirname + '/../template/section.hbt', 'utf8'

module.exports = (section) ->
  result = ''

  if section?
    if section.content
      section.content = section.content.join ''

    template = handlebars.compile templateStr, noEscape: true
    result = template section

  result
