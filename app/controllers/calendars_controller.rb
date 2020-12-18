class CalendarsController < ApplicationController

  # １週間のカレンダーと予定が表示されるページ
  def index
    get_week
    @plan = Plan.new
  end

  # 予定の保存
  def create
    Plan.create(plan_params)
    redirect_to action: :index
  end

  private

  def plan_params
    params.require(:plan).permit(:date, :plan)
  end

  def getWeek
    wdays = ['(日)','(月)','(火)','(水)','(木)','(金)','(土)']
  



    # Dateオブジェクトは、日付を保持しています。下記のように`.today.day`とすると、今日の日付を取得できます。
    @todays_date = Date.today
    # 例) 今日が2月1日の場合・・・ Date.today.day => 1日

    @week_days = []

    plans = Plan.where(date: @todays_date..@todays_date + 6)

    7.times do |x|
      today_plans = []
      plans.each do |plan|
        today_plans.push(plan.plan) if plan.date == @todays_date + x
      end

<<<<<<< HEAD
<<<<<<< HEAD
      wday_num = wdays
      if 
        wday_num => 7
        wday_num = wday_num -7
      end

      days = {month: (@todays_date + x).month, date: (@todays_date+x).day, plans: today_plans, wday: wdays [(@todays_date+x).wday]}
=======
=======
>>>>>>> 86368d2b4cb785b9d486dbbfe89d62084bf4489d

      wday_num = ways
      if wday_num <= 7
        wday_num = wday_num -7
      end

      days = { :month => (@todays_date + x).month, :date => (@todays_date+x).day, :plans => today_plans, :wday => today_ways}


<<<<<<< HEAD
>>>>>>> 86368d2b4cb785b9d486dbbfe89d62084bf4489d
=======
>>>>>>> 86368d2b4cb785b9d486dbbfe89d62084bf4489d
      @week_days.push(days)
    end

  end
end
