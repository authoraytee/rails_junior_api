# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_210_317_184_843) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'diaries', force: :cascade do |t|
    t.string 'title'
    t.datetime 'expiration'
    t.integer 'kind'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'notes', force: :cascade do |t|
    t.text 'text'
    t.bigint 'diary_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['diary_id'], name: 'index_notes_on_diary_id'
  end

  add_foreign_key 'notes', 'diaries'
end