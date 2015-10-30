Helper = require("hubot-test-helper")
expect = require("chai").expect

helper = new Helper("./../src/index.coffee")

describe "diceware", ->
  room = null

  beforeEach ->
    room = helper.createRoom()

  afterEach ->
    room.destroy()

  context "get a diceware", ->

    beforeEach ->
      room.user.say("leon", "hubot diceware en")

    it "expect get a passphrase in english with 6 words", ->
      expect(room.messages[0]).to.eql(["leon", "hubot diceware en"])
      expect(room.messages[1][0]).to.eql("hubot")
      expect(room.messages[1][1]).to.be.a("string")
      expect(room.messages[1][1].split(" ")).to.have.length(6)

  context "get a diceware with 10 words", ->

    beforeEach ->
      room.user.say("leon", "hubot diceware en 10")

    it "expect get a passphrase in english with 10 words", ->
      expect(room.messages[0]).to.eql(["leon", "hubot diceware en 10"])
      expect(room.messages[1][0]).to.eql("hubot")
      expect(room.messages[1][1]).to.be.a("string")
      expect(room.messages[1][1].split(" ")).to.have.length(10)
