# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Prayer.destroy_all

puts "All old prayers have been cleared."

Prayer.create({image: "http://ewtn.com/art/jesus/emaus08_th.jpg", title: "Prayer for Travelers", text: "O Almighty and merciful God, who hast commissioned Thy angels to guide and protect us, command them to be our assiduous companions from our setting out until our return; to clothe us with their invisible protection; to keep from us all danger of collision, of fire, of explosion, of fall and bruises, and finally, having preserved us from all evil, and especially from sin, to guide us to our heavenly home. Through Jesus Christ, our Lord. Amen.", category_id: 1});
Prayer.create({image:"http://ewtn.com/Devotionals/prayers/images/resurrection.jpg", title: "Short Prayer", text: "Lord help me to remember that nothing is going to happen to me today that You and I together can't handle.Amen.", category_id:1})
Prayer.create({image:"http://ewtn.com/Devotionals/prayers/images/morning.jpg", title: "Morning Offering", text: "O Jesus, through the Immaculate Heart of Mary, I offer You my prayers, works, joys and sufferings of this day for all the intentions of Your Sacred Heart, in union with the Holy Sacrifice of the Mass throughout the world, in reparation for my sins, for the intentions of all my relatives and friends, and in particular for the intentions of the Holy Father. Amen.", category_id: 1 })

puts "Created #{Prayer.count} prayers."
