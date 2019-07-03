assert = require 'assert'
_ = require 'lodash'

# EDIT ME
marvelousContraption = ->

describe 'Marvelous contraption', ->
  artefact = null
  bang = null

  it 'is a function', ->
    assert _.isFunction(marvelousContraption), 'marvelousContraption is a function'

  describe 'artefact', ->
    it 'is another function', ->
      artefact = marvelousContraption()
      assert _.isFunction(artefact), 'artefact is a function'

    [ 0 .. 3 ].forEach (i) ->
      it "returns #{i}", ->
        x = artefact()
        assert _.isNumber(x), 'x is number'
        assert.equal x, i, "x is #{i}"

    null

  describe 'bang', ->
    it 'is another function', ->
      bang = marvelousContraption 103
      assert _.isFunction(bang), 'artefact is a function'

    [ 103 .. 106 ].forEach (i) ->
      it "returns #{i}", ->
        x = bang()
        assert _.isNumber(x), 'x is number'
        assert.equal x, i, "x is #{i}"

    null

  describe 'artefact again', ->
    it 'returns 4', ->
      x = artefact()
      assert _.isNumber(x), 'x is number'
      assert.equal x, 4, 'x is 4'
