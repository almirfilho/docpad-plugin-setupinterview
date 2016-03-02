cheerio = require 'cheerio'
expect = require('chai').expect
wrap = require '../../src/lib/wrapper'


describe 'Wrapper', ->
  it 'should return a string', ->
    expect(wrap()).to.be.a 'string'
    expect(wrap({})).to.be.a 'string'

  context 'should return html markup', ->
    $ = null

    before ->
      section = title: '<h2>title</h2>', content: ['<p>line</p>']
      $ = cheerio.load wrap section

    it 'with subsection wrapping title', ->
      $subsection = $('h2').parent().get 0
      expect($subsection).to.have.property 'tagName', 'div'

    it 'with subsection wrapping content', ->
      $subsection = $('p').parent().get 0
      expect($subsection).to.have.property 'tagName', 'div'

    it 'with section wrapping everything', ->
      $section = $($.root().get(0).children[0]).get 0
      expect($section).to.have.property 'tagName', 'section'
