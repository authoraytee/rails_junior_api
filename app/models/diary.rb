# frozen_string_literal: true

class Diary < ApplicationRecord
  has_many :notes, inverse_of: :diary, dependent: :delete_all

  validates :title, presence: true, length: { in: 5..300 }
  validates :expiration, presence: true

  enum kind: { for_all: 2, personal: 1}, presence: true
end
