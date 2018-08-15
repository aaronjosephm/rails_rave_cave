
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

turkish_bath_house = Warehouse.new(name: "Tiger in the Bathroom",
                        description: "Hot, Sweaty exfoliation",
                        photo: "http://unikevent.ca/wp-content/uploads/2016/12/Fonderie-Darling-1170x779.jpg"
                        )

turkish_bath_house.user = mark
turkish_bath_house.save

schmuck_house = Warehouse.new(name: "Schmuck house",
                        description: "Stomping the Glass All Day Long",
                        photo: "https://martell-production.s3.amazonaws.com/uploads/uploaded_file/filename/272549/large_Warehouse_To-let___32_Montreal_Drive___Airport_City__Cape_Town____1_.JPG"
                        )

schmuck_house.user = caroline
schmuck_house.save

mile_end = Warehouse.new(name: "Falafel Sweetness",
                       description: "Fine Tuned Pump Action",
                       photo: "https://cdn.decoist.com/wp-content/uploads/2015/02/Caviar-warehouse-converted-into-a-contemporary-loft-in-New-York.jpg"
                       )

mile_end.user = mark
mile_end.save

under_table_stool = Warehouse.new(name: "Under table stool",
                         description: "Yeh you know the drill",
                         photo: "http://www.real-estate-vietnam.com/images/bien607/p1.jpg"
                        )

under_table_stool.user = caroline
under_table_stool.save

scotish_cave = Warehouse.new(name: "Radical",
                             description: "Feel the Berne",
                             photo: "http://www.real-estate-vietnam.com/images/bien607/p1.jpg"
                             )
scotish_cave.user = caroline
scotish_cave.save


crack_house = Warehouse.new(name: "Crack House",
                        description: "No Drugs Allowed",
                        photo: "http://www.real-estate-vietnam.com/images/bien607/p1.jpg"
                        )

crack_house.user = mark
crack_house.save


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





