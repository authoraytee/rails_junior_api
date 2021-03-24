# frozen_string_literal: true

class Diary < ApplicationRecord
  has_many :notes, dependent: :delete_all
  validates :title, presence: true
  validates :expiration, presence: true

  # validates :kind, presence: true
  enum kind: {
    for_all: 2,
    personal: 1
  }
end
