expect = require('chai').expect
splitter = require '../../src/lib/splitter'


describe 'Splitter', ->
  it 'should return an array', ->
    expect(splitter()).to.be.an.instanceof Array
    expect(splitter('')).to.be.an.instanceof Array
    expect(splitter({})).to.be.an.instanceof Array
    expect(splitter(123)).to.be.an.instanceof Array
    expect(splitter(null)).to.be.an.instanceof Array

  it 'should return an empty array', ->
    expect(splitter('')).to.be.empty
    expect(splitter('non html text')).to.be.empty
    expect(splitter('<div>html text</div>')).to.be.empty

  it 'should return a section', ->
    expect(splitter('<h2>title</h2>')).to.have.length 1
