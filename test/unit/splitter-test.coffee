expect = require('chai').expect
split = require '../../src/lib/splitter'


describe 'Splitter', ->
  it 'should return an array', ->
    expect(split()).to.be.an.instanceof Array
    expect(split('')).to.be.an.instanceof Array
    expect(split({})).to.be.an.instanceof Array
    expect(split(123)).to.be.an.instanceof Array
    expect(split(null)).to.be.an.instanceof Array

  it 'should return an empty array', ->
    expect(split('')).to.be.empty
    expect(split('non html text')).to.be.empty
    expect(split('<div>html text</div>')).to.be.empty

  it 'should return a section with no content', ->
    sections = split '<h2>title</h2>'
    expect(sections).to.have.length 1
    expect(sections[0]).to.deep.equal title: '<h2>title</h2>', content: []

  it 'should return a section with one content', ->
    sections = split '<h2>title</h2><p>line</p>'
    expect(sections).to.have.length 1
    expect(sections[0]).to.deep.equal
      title: '<h2>title</h2>'
      content: ['<p>line</p>']

  it 'should return a section with more than one content', ->
    sections = split '''
      <h2>title</h2><p>line1</p><figure>image</figure><p>line2</p>
    '''
    expect(sections).to.have.length 1
    expect(sections[0]).to.deep.equal
      title: '<h2>title</h2>'
      content: [
        '<p>line1</p>'
        '<figure>image</figure>'
        '<p>line2</p>'
      ]

  it 'should return more than one section with no content', ->
    sections = split '<h2>title1</h2><h2>title2</h2><h2>title3</h2>'
    expect(sections).to.have.length 3
    expect(sections[0]).to.deep.equal title: '<h2>title1</h2>', content: []
    expect(sections[1]).to.deep.equal title: '<h2>title2</h2>', content: []
    expect(sections[2]).to.deep.equal title: '<h2>title3</h2>', content: []

  it 'should return more than one section with contents', ->
    sections = split '''
      <h2>title1</h2><p>line1</p><p>line2</p><h2>title2</h2><p>line2</p>
    '''

    expect(sections).to.have.length(2)
      .and.to.deep.equal [
        { title: '<h2>title1</h2>', content: ['<p>line1</p>', '<p>line2</p>']}
        { title: '<h2>title2</h2>', content: ['<p>line2</p>']}
      ]
