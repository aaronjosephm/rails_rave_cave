
require "date"

Booking.destroy_all if Rails.env.development?
Warehouse.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

mark = User.create(email: "no22mark@yahoo.com", password: "wagon_2018")
caroline = User.create(email: "scottish@yahoo.com", password: "braveheart")


turkey = Warehouse.new(name: "Hairy Addiction",
                        subtitle: "Raki All Day Long",
                        description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, , comes from a line in section 1.10.32.",
                        address: "240 chemin Bates, Borough Mount-Royal, Montreal",
                        price: "$5,000"
                        )


turkey.remote_photo_url = "https://images.unsplash.com/photo-1515584292151-a8ce75f68eff?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c36c6d8f37d7f0656586017ac5c13952&auto=format&fit=crop&w=1567&q=80.jpg"
turkey.user = caroline
turkey.save

turkish_bath_house = Warehouse.new(name: "Tiger in the Bathroom",
                        subtitle: "WOOOOOOW",
                        description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, , comes from a line in section 1.10.32.",
                        address: "4700 Sainte-Catherine Street West Borough Westmount, Montreal",
                        price: "$2,691"
                        )

turkish_bath_house.remote_photo_url = "http://res.cloudinary.com/furkankarayer/image/upload/v1534455745/ddr0oe0daoklha3dytui.jpg"
turkish_bath_house.user = mark
turkish_bath_house.save

schmuck_house = Warehouse.new(name: "Schmuck House",
                        subtitle: "Stomping the Glass All Day Long",
                        description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, , comes from a line in section 1.10.32.",
                        address: "Rue Beaumont Borough La Petite-Patrie, Montreal",
                        price:  "$3,464"
                        )

schmuck_house.remote_photo_url = "https://images.pexels.com/photos/236709/pexels-photo-236709.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260.jpg"
schmuck_house.user = caroline
schmuck_house.save

mile_end = Warehouse.new(name: "Eternal Snow",
                       subtitle: "Parking Lot Nose Job",
                       description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, , comes from a line in section 1.10.32.",
                       address: "https://images.unsplash.com/photo-1533926047076-36f4f5b4ba44?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=e7ef9f61bf4cd9dd6c30d0497e60ac7f&auto=format&fit=crop&w=1498&q=80.jpg",
                       price:  "$4,049"
                       )

mile_end.remote_photo_url = "http://res.cloudinary.com/furkankarayer/image/upload/v1534455767/yhozkqvqcp1gozvqyrnz.jpg"
mile_end.user = mark
mile_end.save

under_table_stool = Warehouse.new(name: "Under table stool",
                         subtitle: "Yeh you know the drill",
                         description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, , comes from a line in section 1.10.32.",
                         address: "334 terasse Saint-Denis / Sherbrooke Borough Downtown, Montreal",
                         price:  "$2,639"
                        )

under_table_stool.remote_photo_url = "https://images.pexels.com/photos/257636/pexels-photo-257636.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
under_table_stool.user = caroline
under_table_stool.save

scotish_cave = Warehouse.new(name: "Radical",
                             subtitle: "Feel the Berne",
                             description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, , comes from a line in section 1.10.32.",
                             address: "875 Viger Avenue East Borough Downtown, Montreal",
                             price:  "$3,135"
                             )

scotish_cave.remote_photo_url = "http://res.cloudinary.com/furkankarayer/image/upload/v1534455749/u7ayqaoj4de1tdiuicna.jpg"
scotish_cave.user = caroline
scotish_cave.save


crank_house = Warehouse.new(name: "Crank House",
                        subtitle: "No Drugs Allowed",
                        description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, , comes from a line in section 1.10.32.",
                        address: "831 Rockland Avenue Borough Outremont, Montreal",
                        price:  "$3,502"
                        )

crank_house.remote_photo_url = "https://res.cloudinary.com/furkankarayer/image/upload/v1534455759/ciuzyxsdsjhzgkbejg5u.jpg"
crank_house.user = mark
crank_house.save


snow = Warehouse.new(name: "Turkish Bath House",
                        subtitle: "Hot, Sweaty exfoliation",
                        description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, , comes from a line in section 1.10.32.",
                        address: "2491 Saint-Patrick Street Borough Pointe Saint-Charles, Montreal",
                        price:  "$2,701"

                        )

snow.remote_photo_url = "https://res.cloudinary.com/furkankarayer/image/upload/v1534455763/nlhmjsboa6dg6hfmkqff.png"
snow.user = caroline
snow.save

scottish = Warehouse.new(name: "Braveheart!!!!",
                        subtitle: "Freeeeedom - Only Kilts and pissed off Scots Allowed",
                        description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, , comes from a line in section 1.10.32.",
                        address: "100 21 iem LAchine Avenue Borough Lachine, Montreal",
                        price: "$4,879"
                        )

scottish.remote_photo_url = "http://res.cloudinary.com/furkankarayer/image/upload/v1534455767/yhozkqvqcp1gozvqyrnz.jpg"
scottish.user = caroline
scottish.save

trump_land = Warehouse.new(name: "Make Rave Great Again",
                        subtitle: "Red Hats Abound",
                        description: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, , comes from a line in section 1.10.32.",
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





