started_seeding = Time.now

#Coach
coaches_arr = [
    {name: "John",
    password: "abc123",
    avatar: "https://media.wired.com/photos/5f51486b5fc9e3620ef2e862/master/w_2560%2Cc_limit/Culture_monitor_936063358.jpg",
    bio: "But do you even lift bro?"
    },
    {name: "Amy",
    password: "123abc",
    avatar: " ",
    bio: "I will get you in shape!"
    }
]
#Client
clients_arr = [
    {coach_id: 1,
    name: "Stacy",
    password: "stace212",
    birthday: Date.new( 1991, 5, 20 ),
    avatar: "https://www.hoganlovells.com/~/media/hogan-lovells/images/people_and_bio_photos/h/hadeka_stacy_h21120.jpg",
    bio: "I can't wait to get fit!",
    experience: 2
    },
    {coach_id: 2,
    name: "Nick",
    password: "lifter5507",
    birthday: Date.new( 1985, 2, 2 ),
    avatar: " ",
    bio: "Just looking for some pointers on my lifting form.",
    experience: 8
    },
    {coach_id: 1,
    name: "Meg",
    password: "111aaa",
    birthday: Date.new( 1980, 10, 1 ),
    avatar: " ",
    bio: "I am training for a marathon and need a coach for cross-training.",
    experience: 10
    }
]

#Workout
workouts_arr = [
    {client_id: 1,
    name: "Intro Workout",
    length: 30,
    completed: false
    },
    {client_id: 2,
    name: "Bikini Bod Workout",
    length: 60,
    completed: false
    },
    {client_id: 3,
    name: "Quick Workout",
    length: 20,
    completed: false
    },
    {client_id: 1,
    name: "Super Intense Workout",
    length: 100,
    completed: false
    },
    {client_id: 2,
    name: "De-Stress Workout",
    length: 20,
    completed: false
    },
    {client_id: 3,
    name: "Feel the Burn",
    length: 60,
    completed: false
    }
]


#Category
body_weight = Category.create( name: "Body weight", mobility: "low" )
cardio = Category.create( name: "Cardio", mobility: "high" ) 
pilates = Category.create( name: "Pilates", mobility: "medium" ) 
stretch = Category.create( name: "Stretch", mobility: "low" ) 
warm_up = Category.create( name: "Warm up", mobility: "medium" ) 
weightlifting = Category.create( name: "Weightlifting", mobility: "medium" ) 
yoga = Category.create( name: "Yoga", mobility: "medium" )


#Exercise
exercises_arr = [
    {
    category_id: body_weight.id ,
    name: "Plank",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "u6ZelKyUM6g",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: body_weight.id,
    name: "Squat",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "9OfycnUL0h8",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: body_weight.id,
    name: "Curtsy squat",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "Qmj9i5ESWh8",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: body_weight.id,
    name: "Side lunge",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "YCdVdzN0L_w",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: body_weight.id,
    name: "Push-up",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "bt5b9x9N0KU",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: body_weight.id,
    name: "Side plank",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "XeN4pEZZJNI",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: cardio.id,
    name: "Mountain climbers",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "cnyTQDSE884",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: cardio.id,
    name: "Burpees",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "qLBImHhCXSw",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: cardio.id,
    name: "Jump rope",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "u3zgHI8QnqE",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: cardio.id,
    name: "Running form",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "K6I24WgiiPw",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: cardio.id,
    name: "Plank jacks",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "EICQruYVhA4",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: pilates.id,
    name: "Teaser",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "xVwpoIlQZPA",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: stretch.id,
    name: "Pigeon pose",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "M1gEGLtF1p0",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: stretch.id,
    name: "Sun salutation",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "FPjppcOquE4",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: stretch.id,
    name: "Wheel pose",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "4F4lTh09Z5E",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: warm_up.id,
    name: "Crunch",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "0t4t3IpiEao",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: warm_up.id,
    name: "Tabletop",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "zBdY96ZoOgM",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: warm_up.id,
    name: "Up-down planks",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "AAPpXm-q7lc",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: weightlifting.id,
    name: "Kettlebell deadlift",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "hinonqqzatk",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: weightlifting.id,
    name: "Dumbell woodchop",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "b65s5BtdOEc",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: weightlifting.id,
    name: "Single leg deadlift",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "84hrdsHgDuQ",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: weightlifting.id,
    name: "Triceps kickback",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "ReP0UzlrkAo",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: yoga.id,
    name: "Chair pose",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "YBGtKQgExZo",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: yoga.id,
    name: "Bridge pose",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "0hlKymgBr2s",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: yoga.id,
    name: "Crow pose",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "TJOJH1PS7jw",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: yoga.id,
    name: "Downward-facing dog",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "WSVxPPQO248",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: yoga.id,
    name: "Triangle pose",
    difficulty: rand(1..12),
    muscle_group: "placeholder",
    url: "_1124fj0BeQ",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    }
]

#Expertise
expertises_arr = [
    {coach_id: 1,
    category_id: 2
    },
    {coach_id: 2,
    category_id: 3
    },
    {coach_id: 1,
    category_id: 4
    },
    {coach_id: 2,
    category_id: 1
    }
]

coaches_arr.each{ |coach| Coach.create(coach) }
clients_arr.each{ |client| Client.create(client) }
expertises_arr.each{ |expertise| Expertise.create(expertise) }
workouts_arr.each{ |workout| Workout.create(workout) }
exercises_arr.each{ |exercise| Exercise.create(exercise) }

# assign two random exercises to each workout
Workout.all.each do | workout |
    two_random_exercises = Exercise.all.shuffle.pop( 2 ) # an array of two random exercises
    two_random_exercises.each{ | random_exercise | WorkoutExercise.create( workout_id: workout.id, exercise_id: random_exercise.id ) }
end

done_seeding = Time.now

puts "🏋️‍♀️🏋️‍♀️🏋️‍♀️🏋️‍♀️🏋️‍♀️🏋️‍♀️ Seeded: #{done_seeding - started_seeding} seconds 🏋️‍♀️🏋️‍♀️🏋️‍♀️🏋️‍♀️🏋️‍♀️🏋️‍♀️"
