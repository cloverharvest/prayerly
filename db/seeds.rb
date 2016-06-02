# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.destroy_all
puts "All category have been cleared."

Prayer.destroy_all
puts "All old prayers have been cleared."

Comment.destroy_all
puts "All comments have been cleared."

Category.create({cat_name: "Basic Catholic Prayers"})
Category.create({cat_name: "Prayers to Jesus"})
Category.create({cat_name: "Marian Prayers"})
Category.create({cat_name: "Prayers of the Saints"})
Category.create({cat_name: "Personal Prayers"})
Category.create({cat_name: "Prayers for Children"})

puts "Created #{Category.count} categories"

Prayer.create({image: "http://ewtn.com/art/jesus/emaus08_th.jpg", title: "Prayer for Travelers", text: "O Almighty and merciful God, who hast commissioned Thy angels to guide and protect us, command them to be our assiduous companions from our setting out until our return; to clothe us with their invisible protection; to keep from us all danger of collision, of fire, of explosion, of fall and bruises, and finally, having preserved us from all evil, and especially from sin, to guide us to our heavenly home. Through Jesus Christ, our Lord. Amen.", categories: Category.where(cat_name: "Personal Prayers")});
Prayer.create({image: "http://ewtn.com/Devotionals/prayers/images/resurrection.jpg", title: "Short Prayer", text: "Lord help me to remember that nothing is going to happen to me today that You and I together can't handle.Amen.", categories: Category.where(cat_name: "Personal Prayers")})
Prayer.create({image: "http://ewtn.com/Devotionals/prayers/images/morning.jpg", title: "Morning Offering", text: "O Jesus, through the Immaculate Heart of Mary, I offer You my prayers, works, joys and sufferings of this day for all the intentions of Your Sacred Heart, in union with the Holy Sacrifice of the Mass throughout the world, in reparation for my sins, for the intentions of all my relatives and friends, and in particular for the intentions of the Holy Father. Amen.", categories: Category.where(cat_name: "Personal Prayers")})
Prayer.create({image: "http://www.ewtn.com/Devotionals/prayers/images/St_Benedict_of_Nursia.jpg", title: "Prayer of St. Benedict of Nursia", text: "O Lord, I place myself in your hands and dedicate myself to you. I pledge myself to do your will in all things: To love the Lord God with all my heart, all my soul, all my strength. Not to kill. Not to steal. Not to covet. Not to bear false witness. To honor all persons. Not to do to another what I would not wish done to myself. To chastise the body. Not to seek after pleasures. To love fasting. To relieve the poor. To clothe the naked. To visit the sick. To bury the dead. To help in trouble. To console the sorrowing. To hold myself aloof from worldly ways. To prefer nothing to the love of Christ. Not to give way to anger. Not to foster a desire for revenge. Not to entertain deceit in the heart. Not to make a false peace. Not to forsake charity. Not to swear, lest I swear falsely. To speak the truth with heart and tongue. Not to return evil for evil. To do no injury: yea, even to bear patiently any injury done to me. To love my enemies. Not to curse those who curse me, but rather to bless them. To bear persecution for justice' sake. Not to be proud. Not to be given to intoxicating drink. Not to be an over-eater. Not to be lazy. Not to be slothful. Not to be a murmured. Not to be a detractor. To put my trust in God. To refer the good I see in myself to God. To refer any evil in myself to myself. To fear the Day of Judgment. To be in dread of hell. To desire eternal life with spiritual longing. To keep death before my eyes daily. To keep constant watch over my actions. To remember that God sees me everywhere. To call upon Christ for defense against evil thoughts that arises in my heart. To guard my tongue against wicked speech. To avoid much speaking. To avoid idle talk. To read only what is good to read. To look at only what is good to see. To pray often. To ask forgiveness daily for my sins, and to seek ways to amend my life. To obey my superiors in all things rightful. Not to desire to be thought holy, but to seek holiness. To fulfill the commandments of God by good works. To love chastity. To hate no one. Not to be jealous or envious of anyone. Not to love strife. Not to love pride. To honor the aged. To pray for my enemies. To make peace after a quarrel, before the setting of the sun. Never to despair of your mercy, O God of Mercy. Amen.", categories: Category.where(cat_name: "Prayers of the Saints")})
Prayer.create({image: "http://images5.fanpop.com/image/photos/25000000/Children-are-praying-for-God-god-the-creator-25046264-252-323.gif", title: "Prayer for a Child", text: "Come Gracious Spirit, Heavenly Dove, With light and comfort from above. Be Thou our Guardian, Thou our Guide, Stay close by every child's side. Amen!", categories: Category.where(cat_name: "Prayers for Children")})
Prayer.create({image: "http://www.ewtn.com/art/saints/Ambrosio_2.jpg", title: "Te Deum", text: "O God, we praise Thee, and acknowledge Thee to be the supreme Lord.
Everlasting Father, all the earth worships Thee.
All the Angels, the heavens and all angelic powers,
All the Cherubim and Seraphim, continuously cry to Thee:s
Holy, Holy, Holy, Lord God of Hosts!
Heaven and earth are full of the Majesty of Thy glory.
The glorious choir of the Apostles,
The wonderful company of Prophets,
The white-robed army of Martyrs, praise Thee.
Holy Church throughout the world acknowledges Thee:
The Father of infinite Majesty;
Thy adorable, true and only Son;
Also the Holy Spirit, the Comforter.
O Christ, Thou art the King of glory!
Thou art the everlasting Son of the Father.
When Thou tookest it upon Thyself to deliver man,
Thou didst not disdain the Virgin's womb.
Having overcome the sting of death, Thou opened the Kingdom of Heaven to all
believers.
Thou sitest at the right hand of God in the glory of the Father.
We believe that Thou willst come to be our Judge.
We, therefore, beg Thee to help Thy servants whom Thou hast redeemed with Thy
Precious Blood.
Let them be numbered with Thy Saints in everlasting glory.

V.  Save Thy people, O Lord, and bless Thy inheritance!
R.  Govern them, and raise them up forever.

V.  Every day we thank Thee.
R.  And we praise Thy name forever, yes, forever and ever.

V.  O Lord, deign to keep us from sin this day.
R.  Have mercy on us, O Lord, have mercy on us.

V.  Let Thy mercy, O Lord, be upon us, for we have hoped in Thee.
R.  O Lord, in Thee I have put my trust; let me never be put to shame.", categories: Category.where(cat_name: "Personal Prayers")})
Prayer.create({image:"https://upload.wikimedia.org/wikipedia/commons/7/7c/Cima_da_Conegliano,_God_the_Father.jpg", title: "Our Father", text: "Our Father, Who art in heaven, Hallowed be Thy Name. Thy Kingdom come. Thy Will be done, on earth as it is in Heaven. Give us this day our daily bread. And forgive us our trespasses, as we forgive those who trespass against us. And lead us not into temptation, but deliver us from evil. Amen.", categories: Category.where(cat_name: "Basic Catholic Prayers")})
Prayer.create({image:"http://www.marysheart.com/online/wp-content/gallery/images-of-mary/virgin-mary.jpg", title: "Memorare", text: "Remember, O most gracious Virgin Mary, that never was it known that anyone who fled to thy protection, implored thy help, or sought thine intercession was left unaided. Inspired by this confidence,I fly unto thee, O Virgin of virgins, my mother; to thee do I come, before thee I stand, sinful and sorrowful. O Mother of the Word Incarnate, despise not my petitions, but in thy mercy hear and answer me. Amen.", categories: Category.where(cat_name: "Marian Prayers")})
Prayer.create({image:"http://wallpapershdfine.com/wp-content/gallery/infant-jesus-images/litany20c.jpg" ,title: "Prayer to the Infant Jesus", text:"O Most Amiable Child Jesus, You Who said: 'Ask and you shall receive,' graciously hear my petition and grant me the favor I ask of You, if it be for Your Greater Honor and Glory and for the good of my soul. Amen.", categories: Category.where(cat_name: "Prayers to Jesus")})
Prayer.create({image:"http://www.seeminglyunfocused.com/wp-content/uploads/2015/12/Our-Lady-2.jpg", title: "The Fatima Prayer", text: "O my God, I believe, I adore, I hope and I love Thee. I ask pardon for those who do not believe, do not adore, do not hope and do not love Thee.", categories: Category.where(cat_name: "Basic Catholic Prayers")})

puts "Created #{Prayer.count} prayers."

# Comment.create({name:"Fatima", prayer_intention:"I hope I have fun and have a safe trip to Kathmandu.", prayers: Prayer.where(title: "Prayer for Travelers")})
# Comment.create({name:"Cyrus", prayer_intention:"Please pray for all the children in Syria.", prayers: Prayer.where(title: "Prayer for a Child")})
# Comment.create({name:"Charlie", prayer_intention:"Please pray for me. I will be embarking on a pilgrimage across Europe. May it be a fruitful and protected endeavour. Thank you.", prayers: Prayer.where(title: "Prayer of St. Benedict of Nursia")})
# Comment.create({name:"David", prayer_intention:"There's lost of stuff to fo today. May I keep a good perspective and be a kind person even amid the busyness.", prayers: Prayer.where(title:"Morning Offering")})
# Comment.create({name:"Edward", prayer_intention:"I don't know what's next. Please guide me, Lord. Thank you.", prayers: Prayer.where(title: "Short Prayer")})
# Comment.create({name:"Francesca", prayer_intention:"Please teach me how to pray.", prayers: Prayer.where(title:"Te Deum")})
# Comment.create({name:"George", prayer_intention:"After living far away from home, my father wrote to me in a letter, one day, that when I feel down I should consider praying the Our Father", prayers: Prayer.where(title:"Our Father")})
# Comment.create({name:"Henry", prayer_intention:"A priest once told me that it would be good take Mary as my Spiritual Mother especially in matters of being a good wife and mother", prayers: Prayer.where(title:"Memorare")})
#
#
# puts "Created #{Comment.count} prayer intentions."
