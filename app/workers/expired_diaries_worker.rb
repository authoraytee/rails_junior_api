# frozen_string_literal: true

require 'date'

# Main worker class that removes diaries whose expiration is coming to an end
class ExpiredDiariesWorker
  include Sidekiq::Worker

  # Woker initializer
  def perform
    diaries = Diary.where(
      kind: :personal
    ).where(
      'expiration <= ?', DateTime.current # Time.now.in_time_zone
    ).destroy_all
  end
end
