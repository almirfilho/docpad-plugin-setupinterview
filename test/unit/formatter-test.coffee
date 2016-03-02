cheerio = require 'cheerio'
expect = require('chai').expect
format = require '../../src/lib/formatter'


describe 'Formatter', ->
  html = '''
    <h2>title 1</h2>
    <p>content 11</p>
    <h2>title 2</h2>
    <p>content 21</p>
    <p>content 22</p>
  '''
  $sections = null

  before ->
    $ = cheerio.load format html
    $sections = $ 'section'

  it 'should return structured sections', ->
    expect($sections).to.have.length 2

  it 'should return structured subsections', ->
    expect($sections.eq(0).children()).to.have.length 2
    expect($sections.eq(1).children()).to.have.length 2

  it 'should return structured content', ->
    $subsections1 = $sections.eq(0).children()
    $subsections2 = $sections.eq(1).children()

    expect($subsections1.eq(0).children()).to.have.length 1
    expect($subsections1.eq(1).children()).to.have.length 1
    expect($subsections2.eq(0).children()).to.have.length 1
    expect($subsections2.eq(1).children()).to.have.length 2
