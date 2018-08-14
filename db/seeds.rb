
require "date"

Booking.destroy_all if Rails.env.development?
Warehouse.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

mark = User.create(email: "no22mark@yahoo.com", password: "wagon_2018")
caroline = User.create(email: "scottish@yahoo.com", password: "braveheart")

mile_end = Warehouse.new(name: "milend awesome",
                       description: "Awesome Rave",
                       photo: "https://source.unsplash.com/random"
                       )

mile_end.user = mark
mile_end.save

old_port = Warehouse.new(name: "industrial vapid",
                         description: "Brick House",
                         photo: "https://source.unsplash.com/random"
                        )

old_port.user = caroline
old_port.save

scotish_cave = Warehouse.new(name: "Radical",
                             description: "Cold and Dark",
                             photo: "https://source.unsplash.com/random"
                             )
scotish_cave.user = caroline
scotish_cave.save


tribeca = Warehouse.new(name: "Crack House",
                        description: "No Drugs Allowed",
                        photo: "https://source.unsplash.com/random"
                        )

tribeca.user = mark
tribeca.save


booking1 = Booking.new(date: Date.today)
booking1.user = mark
booking1.warehouse = scotish_cave
booking1.save

booking2 = Booking.new(date: Date.tomorrow)
booking2.user = caroline
booking2.warehouse = tribeca
booking2.save


