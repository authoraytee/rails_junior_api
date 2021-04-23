# frozen_string_literal: true

class Note < ApplicationRecord
  belongs_to :diary
  validates_associated :diary

  validates :text, presence: true, length: { in: 5..300 }
  validates :diary_id, presence: true
end
