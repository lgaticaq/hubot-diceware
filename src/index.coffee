# Description
#   Generate a passphrases using the diceware method
#
# Dependencies:
#   "diceware-generator": "^1.2.1"
#
# Commands:
#   hubot diceware -> black gimpy gp lath blue trudge
#   hubot diceware sp 10 -> zampar 729 antia Cabo afino fue Sra. 134 pie orden
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
    res.send passphrase
    robot.send {room: res.message.user.name}, "`#{passphrase}`"
