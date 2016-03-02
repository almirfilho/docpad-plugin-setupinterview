handlebars = require 'handlebars'

module.exports = (section, templateStr) ->
  result = ''

  if section? and templateStr?
    if section.content
      section.content = section.content.join ''

    template = handlebars.compile templateStr, noEscape: true
    result = template section

  result
