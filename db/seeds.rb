
require "date"

Booking.destroy_all if Rails.env.development?
Warehouse.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

mark = User.create(email: "no22mark@yahoo.com", password: "wagon_2018")
caroline = User.create(email: "scottish@yahoo.com", password: "braveheart")


turkey = Warehouse.new(name: "Hairy Addiction",
                        description: "Raki All Day Long",
                        address: "240 chemin Bates, Borough Mount-Royal, Montreal",
                        price: "$5,000"
                        )


turkey.remote_photo_url = "http://res.cloudinary.com/furkankarayer/image/upload/v1534455767/yhozkqvqcp1gozvqyrnz.jpg"
turkey.user = caroline
turkey.save

turkish_bath_house = Warehouse.new(name: "Tiger in the Bathroom",
                        description: "WOOOOOOW",
                        address: "4700 Sainte-Catherine Street West Borough Westmount, Montreal",
                        price: "$2,691"
                        )

turkish_bath_house.remote_photo_url = "http://res.cloudinary.com/furkankarayer/image/upload/v1534455745/ddr0oe0daoklha3dytui.jpg"
turkish_bath_house.user = mark
turkish_bath_house.save

schmuck_house = Warehouse.new(name: "Schmuck House",
                        description: "Stomping the Glass All Day Long",
                        address: "Rue Beaumont Borough La Petite-Patrie, Montreal",
                        price:  "$3,464"
                        )

schmuck_house.remote_photo_url = "http://res.cloudinary.com/furkankarayer/image/upload/v1534455767/yhozkqvqcp1gozvqyrnz.jpg"
schmuck_house.user = caroline
schmuck_house.save

mile_end = Warehouse.new(name: "Eternal Snow",
                       description: "Parking Lot Nose Job",
                       address: "de Maisonneuve Avenue Boulevard / Avenue Northcliffe Borough Westmount, Montreal",
                       price:  "$4,049"
                       )

mile_end.remote_photo_url = "http://res.cloudinary.com/furkankarayer/image/upload/v1534455767/yhozkqvqcp1gozvqyrnz.jpg"
mile_end.user = mark
mile_end.save

under_table_stool = Warehouse.new(name: "Under table stool",
                         description: "Yeh you know the drill",
                         address: "334 terasse Saint-Denis / Sherbrooke Borough Downtown, Montreal",
                         price:  "$2,639"
                        )

under_table_stool.remote_photo_url = "http://res.cloudinary.com/furkankarayer/image/upload/v1534455745/ddr0oe0daoklha3dytui.jpg"
under_table_stool.user = caroline
under_table_stool.save

scotish_cave = Warehouse.new(name: "Radical",
                             description: "Feel the Berne",
                             address: "875 Viger Avenue East Borough Downtown, Montreal",
                             price:  "$3,135"
                             )

scotish_cave.remote_photo_url = "http://res.cloudinary.com/furkankarayer/image/upload/v1534455749/u7ayqaoj4de1tdiuicna.jpg"
scotish_cave.user = caroline
scotish_cave.save


crank_house = Warehouse.new(name: "Crank House",
                        description: "No Drugs Allowed",
                        address: "831 Rockland Avenue Borough Outremont, Montreal",
                        price:  "$3,502"
                        )

crank_house.remote_photo_url = "https://res.cloudinary.com/furkankarayer/image/upload/v1534455759/ciuzyxsdsjhzgkbejg5u.jpg"
crank_house.user = mark
crank_house.save


snow = Warehouse.new(name: "Turkish Bath House",
                        description: "Hot, Sweaty exfoliation",
                        address: "2491 Saint-Patrick Street Borough Pointe Saint-Charles, Montreal",
                        price:  "$2,701"

                        )

snow.remote_photo_url = "https://res.cloudinary.com/furkankarayer/image/upload/v1534455763/nlhmjsboa6dg6hfmkqff.png"
snow.user = caroline
snow.save

scottish = Warehouse.new(name: "Braveheart!!!!",
                        description: "Freeeeedom - Only Kilts and pissed off Scots Allowed",
                        address: "100 21 iem LAchine Avenue Borough Lachine, Montreal",
                        price: "$4,879"
                        )

scottish.remote_photo_url = "http://res.cloudinary.com/furkankarayer/image/upload/v1534455767/yhozkqvqcp1gozvqyrnz.jpg"
scottish.user = caroline
scottish.save

trump_land = Warehouse.new(name: "Make Rave Great Again",
                        description: "Red Hats Abound",
                        address: "1730-1736 Saint-Patrick Street / Richardson /Richmond / Shearer Borough Pointe Saint-Charles",
                        price: "$2,500.00"
                        )

trump_land.remote_photo_url = "http://res.cloudinary.com/furkankarayer/image/upload/v1534455770/o2cznfsmx2xzcnd5pwhm.png"
trump_land.user = mark
trump_land.save




booking1 = Booking.new(date: Date.today)
booking1.user = mark
booking1.warehouse = scotish_cave
booking1.save

booking2 = Booking.new(date: Date.tomorrow)
booking2.user = caroline
booking2.warehouse = snow
booking2.save





