
Booking.destroy_all
Warehouse.destroy_all
User.destroy_all

mark = User.create!(email: "no22mark@yahoo.com", password: "wagon12345")
caroline = User.create!(email: "caroline88@gmail", password: "scottish")



warehouse = Warehouse.new(name: "Milened Master",
                          photo: "https://source.unsplash.com/random",
                          description: "Master MC",
                          user_id: mark.id
                          )

warehouse1 = Warehouse.new(name: "Old Port",
                          photo: "https://source.unsplash.com/random",
                          description: "Scotish Cave",
                          user_id: caroline.id)

warehouse2 = Warehouse.new(name: "Tribeca Funk",
                          photo: "https://source.unsplash.com/random",
                          description: "NYC Vibe Funk",
                          user_id: mark.id
                          )

warehouse3 = Warehouse.new(name: "Turkish Bath House",
                          photo: "https://source.unsplash.com/random",
                          description: "Hairy Addiciton",
                          user_id: caroline.id
                          )

warehouse.save!
warehouse1.save!
warehouse2.save!
warehouse3.save!



