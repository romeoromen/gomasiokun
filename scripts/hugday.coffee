# Description:
#   ごましおくんが金曜の17:00をお知らせしてくれる機能です。
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   None
#
# Notes:
#   金曜が終わるよ。
#
# Author:
#   uchida
cronJob = require('cron').CronJob
module.exports = (robot) ->
 
  cronjob = new cronJob(
    cronTime: "0 00 17 * * fri"   # 実行時間
    start:    true                # すぐにcronのjobを実行するか
    timeZone: "Asia/Tokyo"        # タイムゾーン指定
    onTick: ->                    # 時間が来た時に実行する処理
      robot.send {room: "#general"}, "もうすぐ金曜日がおわるよ！がんばれ！"
  )