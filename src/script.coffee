# Description
#   Generate a passphrases using the diceware method
#
# Dependencies:
#   "diceware-generator": "^2.0.0"
#
# Commands:
#   hubot diceware (en|sp) <len> -> Get a diceware
#
# Author:
#   lgaticaq

dwGen = require("diceware-generator")

module.exports = (robot) ->
  robot.respond /diceware(\s{1})?(\w{2})?(\s{1})?(\d+)?/i, (res) ->
    passphrase = dwGen({
      language: res.match[2] or "en",
      wordcount: res.match[4] or 6,
      format: "string",
    })
    robot.send {room: res.message.user.name}, "`#{passphrase}`"
