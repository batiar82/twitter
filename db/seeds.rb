# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#User.destroy_all
Tweet.destroy_all

#user = User.create!(email: "batiar@gmail.com")
#userb = User.create!(email: "pepe@gmail.com")
usera= User.first
userb= User.last

Tweet.create!([{
    post: "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde ",
    User: usera
    
},
{
    post: "Guys, did you know that as long as you say \"great hit\" or \"great catch\" you can touch another straight guy\'s butt an it's not even weird?",
    User: usera
},
{
    post: "My cat's staring at the wall again. Either she can see ghosts, or she's mulling over past social situations she wishes she'd handled better.",
    User: userb
},
{
    post: "*reads a note sombody put on my desk* [i heard u caught a cold! i hope it FLU away!] *drops note* what.. WAT IS THIS SOME SORT OF SICK JOKE",
    User: userb
},
{
    post: "I don't understand how God can have Ten Commandments for the whole world, and my wife can have 152 just for our house.",
    User: usera

}])