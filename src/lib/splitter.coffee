cheerio = require 'cheerio'

module.exports = (htmlContent) ->
  sections = []

  if htmlContent
    $ = cheerio.load htmlContent
    sections = $('h2').map((i, el) ->
      title: $.html this
      content: $(this).nextUntil('h2').map((i, el) -> $.html el).get()
    ).get()

  sections
