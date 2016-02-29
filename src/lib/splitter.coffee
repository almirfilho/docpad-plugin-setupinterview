cheerio = require 'cheerio'

module.exports = (htmlContent) ->
  sections = []

  if htmlContent
    $ = cheerio.load htmlContent
    $('h2').each (i, el) ->
      $next = $(this).next()
      sections.push
        title: $.html this
        content: while $next.length and $next[0].name isnt 'h2'
          current = $next[0]
          $next = $next.next()
          $.html current

  sections
