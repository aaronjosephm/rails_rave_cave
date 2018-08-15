
require "date"

Booking.destroy_all if Rails.env.development?
Warehouse.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

mark = User.create(email: "no22mark@yahoo.com", password: "wagon_2018")
caroline = User.create(email: "scottish@yahoo.com", password: "braveheart")


turkey = Warehouse.new(name: "Hairy Addiction",
                        description: "Raki All Day Long",
                        photo: "https://www.residentadvisor.net/images/events/flyer/2017/5/uk-0519-961187-front.jpg"
                        )

turkey.user = caroline
turkey.save

turkish_bath_house = Warehouse.new(name: "turkish_bath_house",
                        description: "Hot, Sweaty exfoliation",
                        photo: "https://files.slack.com/files-pri/T02NE0241-FC972CR6H/empty2.jpg"
                        )

turkish_bath_house.user = mark
turkish_bath_house.save

schmuck_house = Warehouse.new(name: "schmuck_house",
                        description: "Stomping the Glass All Day Long",
                        photo: "https://files.slack.com/files-pri/T02NE0241-FC8QUSSEQ/architecture-building-business-236698.jpg"
                        )

schmuck_house.user = caroline
schmuck_house.save

mile_end = Warehouse.new(name: "Falafel Sweetness",
                       description: "Fine Tuned Pump Action",
                       photo: "https://files.slack.com/files-pri/T02NE0241-FC8U0F23D/architecture-building-business-236709.jpg"
                       )

mile_end.user = mark
mile_end.save

old_port = Warehouse.new(name: "USA Bro's",
                         description: "Budweiser all day long",
                         photo: "https://files.slack.com/files-pri/T02NE0241-FC8U0F23D/architecture-building-business-236709.jpg"
                        )

old_port.user = caroline
old_port.save

scotish_cave = Warehouse.new(name: "Radical",
                             description: "Feel the Berne",
                             photo: "https://files.slack.com/files-pri/T02NE0241-FC8G0RN8H/chemiewerk_ru__dersdorf_abandoned_chemical_factory_berlin-007.jpg"
                             )
scotish_cave.user = caroline
scotish_cave.save


tribeca = Warehouse.new(name: "Crack House",
                        description: "No Drugs Allowed",
                        photo: "http://www.real-estate-vietnam.com/images/bien607/p1.jpg"
                        )

tribeca.user = mark
tribeca.save


snow = Warehouse.new(name: "Eternal Snow",
                        description: "Parking Lot Nose Job",
                        photo: "https://d31fr2pwly4c4s.cloudfront.net/7/5/7/938101_0_warehouseraves_400.jpg"
                        )

snow.user = caroline
tribeca.save

scottish = Warehouse.new(name: "Braveheart!!!!",
                        description: "Freeeeedom - Only Kilts and pissed off Scots Allowed",
                        photo: "https://www.residentadvisor.net/images/events/flyer/2017/5/uk-0519-961187-front.jpg"
                        )

scottish.user = caroline
scottish.save

trump_land = Warehouse.new(name: "Make Rave Great Again",
                        description: "Red Hats Abound",
                        photo: "https://cdnews-pull2-mvaqgu6sx.netdna-ssl.com/wp-content/uploads/2017/04/Trump-rally-Harrisburg-Pennsylvania.png"
                        )

trump_land.user = mark
trump_land.save




booking1 = Booking.new(date: Date.today)
booking1.user = mark
booking1.warehouse = scotish_cave
booking1.save

booking2 = Booking.new(date: Date.tomorrow)
booking2.user = caroline
booking2.warehouse = tribeca
booking2.save


