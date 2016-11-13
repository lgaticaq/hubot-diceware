# Description
#   Generate a passphrases using the diceware method
#
# Dependencies:
#   "diceware-generator": "^3.0.1"
#   "diceware-wordlist-en-eff": "^1.0.1"
#   "diceware-wordlist-sp": "^1.0.0"
#
# Commands:
#   hubot diceware -> Get a diceware in english with 6 words
#   hubot diceware (en|sp) <len> -> Get a diceware
#
# Author:
#   lgaticaq

dwGen = require("diceware-generator")
enEFF = require("diceware-wordlist-en-eff")
sp = require("diceware-wordlist-sp")

langs = {en: enEFF, sp: sp}

module.exports = (robot) ->
  robot.respond /diceware(\s+)?(en|sp)?(\s+)?(\d+)?/i, (res) ->
    if typeof res.match[4] isnt "undefined"
      wordcount = parseInt(res.match[4], 10)
    else
      wordcount = 6
    passphrase = dwGen({
      language: langs[res.match[2]] or enEFF,
      wordcount: wordcount,
      format: "string",
    })
    robot.send {room: res.message.user.name}, "`#{passphrase}`"
