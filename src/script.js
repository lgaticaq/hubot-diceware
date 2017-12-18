// Description
//   Generate a passphrases using the diceware method
//
// Dependencies:
//   "diceware-generator": "^3.0.1"
//   "diceware-wordlist-en-eff": "^1.0.1"
//   "diceware-wordlist-sp": "^1.0.0"
//
// Commands:
//   hubot diceware -> Get a diceware in english with 6 words
//   hubot diceware (en|sp) <len> -> Get a diceware
//
// Author:
//   lgaticaq

'use strict'

const dwGen = require('diceware-generator')
const enEFF = require('diceware-wordlist-en-eff')
const sp = require('diceware-wordlist-sp')

const langs = { en: enEFF, sp }

module.exports = robot => {
  robot.respond(/diceware(\s+)?(en|sp)?(\s+)?(\d+)?/i, res => {
    let wordcount = 6
    if (typeof res.match[4] !== 'undefined') {
      wordcount = parseInt(res.match[4], 10)
    }
    const passphrase = dwGen({
      language: langs[res.match[2]] || enEFF,
      wordcount,
      format: 'string'
    })
    robot.send({ room: res.message.user.name }, `\`${passphrase}\``)
  })
}
