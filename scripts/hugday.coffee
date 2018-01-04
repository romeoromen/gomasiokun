# Description:
#   みくりさんが火曜の朝にハグの日をお知らせしてくれる機能です。
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
#   火曜はハグの日。
#
# Author:
#   susuwatarin
cronJob = require('cron').CronJob
module.exports = (robot) ->
 
  cronjob = new cronJob(
    cronTime: "0 30 8 * * tue"    # 実行時間
    start:    true                # すぐにcronのjobを実行するか
    timeZone: "Asia/Tokyo"        # タイムゾーン指定
    onTick: ->                    # 時間が来た時に実行する処理
      robot.send {room: "#general"}, "今日はハグの日ですよ！"
  )