Joke.destroy_all
Special.destroy_all
Comedian.destroy_all

george = Comedian.create(name: "george carlin", age: 71, city: "new york", description: "One of the most influential comedians of all time, George Carlin changed the very face of stand up comedy.", deceased: true, image: "http://www.gstatic.com/tv/thumb/persons/277/277_v9_ba.jpg")
  george.specials.create(name: "Complaints & Grievances", length: 55, image: "https://m.media-amazon.com/images/M/MV5BMTIyNTg1MjU0Nl5BMl5BanBnXkFtZTcwNzY2ODYyMQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")
  george.specials.create(name: "Back in Town", length: 60, image: "https://m.media-amazon.com/images/M/MV5BMTY2MjcxOTY0OF5BMl5BanBnXkFtZTYwODA5Mzg5._V1_UX182_CR0,0,182,268_AL_.jpg")

john = Comedian.create(name: "john pinnette", age: 50, city: "pittsburgh", description: "John Pinnette's loud, rambunctious style of comedy mirrored his career.", deceased: true, image: "https://images-na.ssl-images-amazon.com/images/I/B1B00bGE0lS._SL1000_.png")
  john.specials.create(name: "Still Hungry", length: 79, image: "https://m.media-amazon.com/images/M/MV5BMTkzNzM3MzMwMV5BMl5BanBnXkFtZTgwOTAxNjA2MDE@._V1_.jpg")

mitch = Comedian.create(name: "mitch hedberg", age: 37, city: "livingston", description: "Known for his incredible one liners, Mitch Headberg's style of deadpan still feels unique to this day.", deceased: true, image: "https://cdn1.thr.com/sites/default/files/imagecache/landscape_928x523/2018/06/gettyimages-74714565-h_2018.jpg")
  mitch.specials.create(name: "Comedy Central Presents: Mitch Hedburg", length: 30, image: "https://images-na.ssl-images-amazon.com/images/I/810e7i2sNjL._SY445_.jpg")

jim = Comedian.create(name: "jim gaffigan", age: 52 , city: "elgin", description: "Jim Gaffigan continues to prove to the world that clean comedy can still entertain modern audiences.", image: "https://peopledotcom.files.wordpress.com/2018/06/jim-gaffigan1.jpg")
  jim.specials.create(name: "Cinco", length: 73, image: "https://m.media-amazon.com/images/M/MV5BYzM5N2YyODQtZTkyMC00ZGVhLWJmZmYtZTI3ZGM2ODAzMzA1L2ltYWdlXkEyXkFqcGdeQXVyMzcwMjcwNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg")
  jim.specials.create(name: "Beyond the Pale", length: 72, image: "https://m.media-amazon.com/images/M/MV5BMTk3NjU2ODY5NF5BMl5BanBnXkFtZTgwNTEyODkwMzE@._V1_UY268_CR4,0,182,268_AL_.jpg")

gabriel = Comedian.create(name: "gabriel iglesias", age: 42, city: "san diego", description: "Known often by his nickname 'Fluffy', Gabriel Iglesias' comedy is highlighted by his goofy sounds and characters.", image: "https://www.trbimg.com/img-5b892150/turbine/mc-ent-allentown-fair-review-gabriel-iglesias-20180824")
  gabriel.specials.create(name: "One Show Fits All", length: 90, image: "https://m.media-amazon.com/images/M/MV5BYTIwZDkzYmYtOThiOS00NWViLTlhZTQtNDE0MWY4ZmRmYTI5XkEyXkFqcGdeQXVyMTY5OTQzNzY@._V1_UY268_CR43,0,182,268_AL_.jpg")
  gabriel.specials.create(name: "I'm Sorry for What I When I Was Hungry", length: 60, image: "https://m.media-amazon.com/images/M/MV5BYjI3MGQyOWEtYzlmOC00OTYxLWIwNmItNTk3NDhiODRmNTc0L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMzk2MTI0NzY@._V1_UY268_CR4,0,182,268_AL_.jpg")

hannibal = Comedian.create(name: "hannibal buress", age: 36, city: "chicago", description: "Hannibal Buress accents his usual deadpan with brief moments of fierce emotion, creating a unqiue flow for his comedy.", image: "https://media1.fdncms.com/sacurrent/imager/u/original/15451643/hannibal_buress_1_-_photo_courtesy.jpg")
  hannibal.specials.create(name: "Comedy Camisado", length: 83, image: "https://m.media-amazon.com/images/M/MV5BNDQ0ZDA3NTQtNzI3NC00Y2NiLWI0ZTctN2RjNDYxNWEyODY4XkEyXkFqcGdeQXVyNTQwMDk4NDM@._V1_UX182_CR0,0,182,268_AL_.jpg")
  hannibal.specials.create(name: "Animal Furnace", length: 65, image: "https://m.media-amazon.com/images/M/MV5BMjI4OTUxMTg1M15BMl5BanBnXkFtZTgwNDI1NjA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg")

kyle = Comedian.create(name: "kye kinane", age: 42, city: "addison", description: "Kyle Kinane's has the wonderful ability to take you down the rabit hole that is his mind, with he himself behing the coloful tour guide.", image: "https://www.maxim.com/.image/t_share/MTM1MTQyODM5MjYwOTEwODY2/placeholder-title.jpg")
  kyle.specials.create(name: "Loose in Chicago", length: 77, image: "https://m.media-amazon.com/images/M/MV5BODZkNzQyNDctMmFmYS00ZDE3LTg1YzMtMDkyOTZiOWVjNjQ5XkEyXkFqcGdeQXVyNjU2MTA3OTY@._V1_UY268_CR147,0,182,268_AL_.jpg")
  kyle.specials.create(name: "Whiskey Icarus", length: 60, image: "https://m.media-amazon.com/images/M/MV5BMTkyNzE4NTE2NF5BMl5BanBnXkFtZTgwMjk1NjYxNTE@._V1_UY268_CR9,0,182,268_AL_.jpg")

brian = Comedian.create(name: "brian regan", age: 60, city: "miami", description: "If one was to describe Brain Regan's comedy style in one word, they'd say animated and loud because one word isn't enough.", image: "https://static1.squarespace.com/static/550c8816e4b07f1da6705ffa/t/5bb872c153450a2db5aa3346/1538814664364/Brian+Regan+headshot.sm.jpg")
  brian.specials.create(name: "The Epitome of Hyperbole", length: 60, image: "https://m.media-amazon.com/images/M/MV5BMTc1MjcxMTY0Ml5BMl5BanBnXkFtZTgwMjk3MjA2MDE@._V1_UY268_CR9,0,182,268_AL_.jpg")
  brian.specials.create(name: "Standing Up", length: 60, image: "https://m.media-amazon.com/images/M/MV5BMTYyNDE3NTc2Nl5BMl5BanBnXkFtZTcwODM4MzA1MQ@@._V1_UY268_CR4,0,182,268_AL_.jpg")

tig = Comedian.create(name: "tig notaro", age: 47, city: "jackson", description: "A master of the longform style, Tig Notaro uniquely paints a story with every joke she tells.", image: "https://i.ytimg.com/vi/V97lvUKYisA/maxresdefault.jpg")
  tig.specials.create(name: "Happy To Be Here", length: 58, image: "https://m.media-amazon.com/images/M/MV5BNWQxMDgzYjAtZTZkOS00MWM2LWIxNTUtZTUwYmUxMWQ0NzM1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY268_CR4,0,182,268_AL_.jpg")
  tig.specials.create(name: "Boyish Girl Interrupted", length: 55, image: "https://m.media-amazon.com/images/M/MV5BMjc4Mzc3MDQwOF5BMl5BanBnXkFtZTgwMTI4NzcwNzE@._V1_UX182_CR0,0,182,268_AL_.jpg")

tom = Comedian.create(name: "tom papa", age: 50, city: "passian", description: "Tom Papa's energetic non-stop style of comedy is sure to leave any listener in a fit of laughter with tears in their eyes.", image: "https://www.maxim.com/.image/t_share/MTM1MTQ1OTgyMzcxMjczMTgy/placeholder-title.jpg")
  tom.specials.create(name: "Human Mule", length: 59, image: "https://m.media-amazon.com/images/M/MV5BOTkyYTQ5ODctMjQ0ZC00NTYxLWI2NzktNDlhZTk1MWYzOWFhL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNTM0MTIyMjQ@._V1_UY268_CR5,0,182,268_AL_.jpg")
  tom.specials.create(name: "Freaked Out", length: 60, image: "https://m.media-amazon.com/images/M/MV5BOTIzNTM5OTUwN15BMl5BanBnXkFtZTgwNjE5NzA2MDE@._V1_UX182_CR0,0,182,268_AL_.jpg")
