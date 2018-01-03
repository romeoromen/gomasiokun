# Description:
#   挨拶をしてくれる機能です。
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot おはよう - "おはようございます！"と返答
#
# Notes:
#   初めて作りました。
#
# Author:
#   uchida
module.exports = (robot) ->
 
  robot.respond /おはよう/i, (msg) ->
    msg.reply "おはようございます！"
# ここから↓が今回追加したやつ
 
  robot.respond /(おやす(|み)|Good Night)/i, (msg) ->
    goodnight = msg.random [
      "おやすみなさい"
      "おやすみなさい"
      "おやすみなさい"
      "おやすみなさい、また明日！"
      "おやすみなさい、また明日！" 
      "もう私も寝ますね！おやすみなさい" 
      "もう私も寝ますね！おやすみなさい"
      "もう寝ちゃうんですか？"
      "今日は一緒に寝ますか？"
      "イチャイチャ、しないの？"
    ]
    msg.reply "#{goodnight}"