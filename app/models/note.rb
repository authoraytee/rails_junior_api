# frozen_string_literal: true

class Note < ApplicationRecord
    belongs_to :diary, index: true, foreign_key: true
    validates_associated :diary

    validates :text, presence: true, length: { in: 5..300 }, allow_nil: true
    validates :diary_id, presence: true, allow_nil: true
end
