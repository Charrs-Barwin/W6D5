    # t.date "birth_date", null: false
    # t.string "color", null: false
    # t.string "name", null: false
    # t.string "sex", limit: 1, null: false
    # t.text "description", null: false
    # t.datetime "created_at", null: false
    # t.datetime "updated_at", null: false
require 'action_view'
class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper

    validates :color, inclusion: { in: %w(white black orange grey), message: "%{value} is not a valid color" }
    validates :sex, inclusion: { in: %w(M F), message: "%{value} is not a valid gendre" }

    validates :birth_date, :color, :name, :sex, :description, presence: true
end
