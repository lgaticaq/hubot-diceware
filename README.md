# hubot-diceware

[![npm version](https://img.shields.io/npm/v/hubot-diceware.svg?style=flat-square)](https://www.npmjs.com/package/hubot-diceware)
[![npm downloads](https://img.shields.io/npm/dm/hubot-diceware.svg?style=flat-square)](https://www.npmjs.com/package/hubot-diceware)
[![Build Status](https://img.shields.io/travis/lgaticaq/hubot-diceware.svg?style=flat-square)](https://travis-ci.org/lgaticaq/hubot-diceware)
[![devDependency Status](https://img.shields.io/david/dev/lgaticaq/hubot-diceware.svg?style=flat-square)](https://david-dm.org/lgaticaq/hubot-diceware#info=devDependencies)
[![Join the chat at https://gitter.im/lgaticaq/hubot-diceware](https://img.shields.io/badge/gitter-join%20chat%20%E2%86%92-brightgreen.svg?style=flat-square)](https://gitter.im/lgaticaq/hubot-diceware?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

A hubot script for generate passphrases using the [diceware method](http://world.std.com/~reinhold/diceware.html)

## Install

```bash
npm i -S hubot-diceware
```

Add `["hubot-diceware"]` in `external-scripts.json`.

## Example
`hubot diceware sp` -> `<random passphrases in spanish whith 6 phrases>`
`hubot diceware en` -> `<random passphrases in english whith 6 phrases>`
`hubot diceware sp 10` -> `<random passphrases in english whith 10 phrases>`
