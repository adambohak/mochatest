assert = require 'assert'
_ = require 'lodash'

# EDIT ME
jubilantFanicular = ->

describe 'Jubilant Fanicular', ->
  it 'reverses strings', ->
    assert.equal jubilantFanicular('alma'), 'amla', 'alma'
    assert.equal jubilantFanicular('barac'), 'carab', 'barac'

  describe 'Argument count', ->
    it 'expects an argument', ->
      assert.throws -> jubilantFanicular()
    it 'expects a single argument', ->
      assert.throws -> jubilantFanicular 'a', 'b'

  describe 'Corner cases', ->
    it 'handles empty string', ->
      assert.equal jubilantFanicular(''), '', 'empty string'

    it 'handles numbers', ->
      assert.equal jubilantFanicular(123), '321', '123'

    it 'throws otherwise', ->
      assert.throws -> jubilantFanicular null
      assert.throws -> jubilantFanicular []
      assert.throws -> jubilantFanicular {}
