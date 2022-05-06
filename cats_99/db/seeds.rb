# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
    Cat.delete_all

    Cat.create(
        name: "Caty",
        color: "grey",
        sex: "M",
        birth_date: "02/21/2000",
        description: "I'm a cat"
    )
end
    # t.date "birth_date", null: false
    # t.string "color", null: false
    # t.string "name", null: false
    # t.string "sex", limit: 1, null: false
    # t.text "description", null: false
    # t.datetime "created_at", null: false
    # t.datetime "updated_at", null: false