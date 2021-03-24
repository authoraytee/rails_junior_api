# frozen_string_literal: true

class Diary < ApplicationRecord
  has_many :notes, dependent: :delete_all
  validates :title, presence: true
  validates :expiration, presence: true

  #validates :kind, presence: true
  enum kind: {
    yes_public: 2,
    not_public: 1
  }
end
