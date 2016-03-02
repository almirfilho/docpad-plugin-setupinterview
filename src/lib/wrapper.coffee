handlebars = require 'handlebars'

module.exports = (section) ->
  result = ''

  if section?
    templateStr = '''
      <section>
        <div>{{ title }}</div>
        <div>{{ content }}</div>
      </section>
    '''

    if section.content
      section.content = section.content.join ''

    template = handlebars.compile templateStr, noEscape: true
    result = template section

  result
