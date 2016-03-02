
User.destroy_all

toto = User.create!(email: "toto@toto.com", password: "123soleil")
tutu = User.create!(email: "tutu@tutu.com", password: "123soleil")
titi = User.create!(email: "titi@titi.com", password: "123soleil")
tata = User.create!(email: "tata@tata.com", password: "123soleil")
tyty = User.create!(email: "tyty@tyty.com", password: "123soleil")
tete = User.create!(email: "tete@tete.com", password: "123soleil")

titi.spaces.create(name: "Voitures")

toto.followings.create(followable: tutu.acting_as)
toto.followings.create(followable: titi.acting_as)
toto.followings.create(followable: tata.acting_as)
toto.followings.create(followable: tyty.acting_as)

titi.followings.create(followable: tutu.acting_as)
tata.followings.create(followable: tutu.acting_as)
tyty.followings.create(followable: tutu.acting_as)
tete.followings.create(followable: tutu.acting_as)
