# frozen_string_literal: true

require 'date'

# Main worker class that removes diaries whose expiration is coming to an end
class ExpiredDiariesWorker
  include Sidekiq::Worker

  # Woker initializer
  def perform
    scheduler = Rufus::Scheduler.new
    scheduler.every '10min' do
      diaries = Diary.all

      diaries.each do |diary|
        if diary.expiration <= Time.now.in_time_zone
          diary.destroy
          puts 'Дневник ', diary.title, ' удален!'
        end
      end
    end
  end
end
