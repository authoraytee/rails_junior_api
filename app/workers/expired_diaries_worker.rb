# frozen_string_literal: true

require 'date'

class ExpiredDiariesWorker
  include Sidekiq::Worker

  def perform
    Sidekiq.logger.info 'test'

    scheduler = Rufus::Scheduler.new
    scheduler.every '10min' do
      time_now = Time.now.in_time_zone

      diaries = Diary.all

      diaries.each do |diary|
        if diary.expiration <= time_now
          diary.destroy
          puts 'Дневник ', diary.title, ' удален!'
        end
      end
    end
  end
end
