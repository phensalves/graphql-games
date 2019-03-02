# personagens
mario = Character.create(name: "Mario")
peach = Character.create(name: "Peach")
dk = Character.create(name: "Donkey Kong")
zelda = Character.create(name: "Zelda")
 
# games
mario_world = Game.create(name: "Super Mario World", description: "SNES game", launch_year: "1990", characters: [mario, peach])
mario_kart = Game.create(name: "Mario Kart 8", description: "Wii U Game", launch_year: "2014", characters: [mario, peach, dk])
smash_bros = Game.create(name: "Super Smash Bros Wii U", description: "Wii U Game", launch_year: "2014", characters: [mario, peach, dk, zelda])
# adicionando games aos personagens
mario.games << [mario_world, mario_kart, smash_bros]
mario.save
 
peach.games << [mario_world, mario_kart, smash_bros]
peach.save
 
zelda.games << [smash_bros]
zelda.save
 
dk.games << [mario_kart, smash_bros]
dk.save