Promise = require 'bluebird'
assert = require 'assert'

sorry = -> {}.sorry()

describe 'Three ways to go', ->
  it 'Direct', ->
    null

  it 'Callback', (done) ->
    done()

  it 'Promise', ->
    Promise.resolve()

describe 'Return value ignored', ->
  it 'true', -> true
  it 'false', -> false
  it 'null', -> null
  it 'undefined', -> {}.x
  it '0', -> 0
  it '1', -> 1
  it 'x', -> 'x'
  it 'it', -> it
  it 'Math', -> Math

describe 'Top level', ->
  describe 'Nested', ->
    describe 'Deeper', ->
      it 'anything', ->
  describe 'Another one', ->
    it 'something', ->
  describe 'Empty (no show)', ->
  it 'mix and match', ->

describe 'Assertions', ->
  it 'plain', ->
    assert true, 'true'

  it 'equal', ->
    assert.equal 2/2, 1, '1'

describe 'Fail', ->
  it 'assert', ->
    assert false, 'false'

  it 'assert.equal', ->
    assert.equal 2/2, 2, '2'

  it 'timeout', (done) ->
    setTimeout done, 2500

  it 'exception', ->
    throw new Error 'Nemnemnem'

  it 'exception (implied)', ->
    sorry()

describe 'Testing for failure', ->
  it 'catch', ->
    pass =
      try
        sorry()
        false
      catch error
        console.log 'This happened:', error
        true
    assert pass, 'pass'

  it 'assert.throws', ->
    assert.throws sorry

describe 'Procedural generation', ->
  [ 'Haydn', 'Mozart', 'Beethoven' ].forEach (c) ->
    it c, ->
