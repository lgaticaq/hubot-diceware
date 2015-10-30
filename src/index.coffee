# Description
#   Generate a passphrases using the diceware method
#
# Dependencies:
#   diceware-password-generator
#
# Commands:
#   hubot diceware sp -> <random passphrases in spanish whith 6 phrases>
#   hubot diceware en -> <random passphrases in english whith 6 phrases>
#   hubot diceware sp 10 -> <random passphrases in english whith 10 phrases>
#
# Author:
#   lgaticaq

dwGen = require("diceware-password-generator")

module.exports = (robot) ->
  robot.respond /diceware(\s{1})?(\w{2})?(\s{1})?(\d+)?/i, (msg) ->
    passphrase = dwGen({
      language: msg.match[2] or "en",
      wordcount: msg.match[4] or 6,
      format: "string",
    })
    msg.send passphrase
