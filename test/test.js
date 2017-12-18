'use strict'

const Helper = require('hubot-test-helper')
const { expect } = require('chai')

const helper = new Helper('./../src/index.js')

describe('diceware', () => {
  beforeEach(() => {
    this.room = helper.createRoom({ httpd: false })
  })

  afterEach(() => this.room.destroy())

  context('get a diceware', () => {
    beforeEach(() => this.room.user.say('leon', 'hubot diceware'))

    it('expect get a passphrase in english with 6 words', () => {
      expect(this.room.messages[0]).to.eql(['leon', 'hubot diceware'])
      expect(this.room.messages[1][0]).to.eql('hubot')
      expect(this.room.messages[1][1]).to.be.a('string')
      expect(this.room.messages[1][1].split(' ')).to.have.length(6)
    })
  })

  context('get a diceware with 10 words', () => {
    beforeEach(() => this.room.user.say('leon', 'hubot diceware sp 10'))

    it('expect get a passphrase in english with 10 words', () => {
      expect(this.room.messages[0]).to.eql(['leon', 'hubot diceware sp 10'])
      expect(this.room.messages[1][0]).to.eql('hubot')
      expect(this.room.messages[1][1]).to.be.a('string')
      expect(this.room.messages[1][1].split(' ')).to.have.length(10)
    })
  })
})
