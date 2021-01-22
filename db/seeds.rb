started_seeding = Time.now


#Coach
coaches_arr = [
    {name: "John",
    password: "abc123",
    avatar: " ",
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
    age: 45,
    avatar: " ",
    bio: "I can't wait to get fit!",
    experience: 2
    },
    {coach_id: 2,
    name: "Nick",
    password: "lifter5507",
    age: 27,
    avatar: " ",
    bio: "Just looking for some pointers on my lifting form.",
    experience: 8
    },
    {coach_id: 1,
    name: "Meg",
    password: "111aaa",
    age: 21,
    avatar: " ",
    bio: "I am training for a marathon and need a coach for cross-training.",
    experience: 10
    }
]

#Workout
# workouts_arr = [
#     {client_id: 1,
#     name: "Intro Workout",
#     length: 30,
#     completed: false
#     },
#     {client_id: 2,
#     name: "Bikini Bod Workout",
#     length: 60,
#     completed: false
#     },
#     {client_id: 3,
#     name: "Quick Workout",
#     length: 20,
#     completed: false
#     },
#     {client_id: 1,
#     name: "Super Intense Workout",
#     length: 100,
#     completed: false
#     },
#     {client_id: 2,
#     name: "De-Stress Workout",
#     length: 20,
#     completed: false
#     },
#     {client_id: 3,
#     name: "Feel the Burn",
#     length: 60,
#     completed: false
#     }
# ]

# #Exercise
# exercises_arr = [
#     {category_id: 4,
#     name: "Bicep Curls",
#     difficulty: 1,
#     muscle_group: "Biceps",
#     url: ""
#     },
#     {category_id: 5,
#     name: "Jumping Jacks",
#     difficulty: 3,
#     muscle_group: "Calves",
#     url: ""
#     },
#     {category_id: 4,
#     name: "Plank Hold",
#     difficulty: 9,
#     muscle_group: "Core",
#     url: ""
#     },
#     {category_id: 1,
#     name: "Boat Pose",
#     difficulty: 7,
#     muscle_group: "Abdominals",
#     url: ""
#     },
#     {category_id: 3,
#     name: "Bench Press",
#     difficulty: 5,
#     muscle_group: "Chest",
#     url: ""
#     },
#     {category_id: 2,
#     name: "Hill Sprints",
#     difficulty: 8,
#     muscle_group: "Quadriceps",
#     url: ""
#     },
#     {category_id: 1,
#     name: "Dancer Pose",
#     difficulty: 10,
#     muscle_group: "Erector Spinae",
#     url: ""
#     }
# ]

#Category
categories_arr = [
    {name: "Yoga",
    mobility: "low"
    },
    {name: "Running",
    mobility: "high"
    },
    {name: "Weightlifting",
    mobility: "low"
    },
    {name: "Barre",
    mobility: "medium"
    },
    {name: "HIIT",
    mobility: "high"
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
categories_arr.each{ |category| Category.create(category) }
expertises_arr.each{ |expertise| Expertise.create(expertise) }


# def seed_items(seeds_array)
#     seeds_array.each do |seed|
#         Workout.create(seed)
#     end
# end

# seed_items(workouts_arr)


# def seed_items(seeds_array)
#     seeds_array.each do |seed|
#         Exercise.create(seed)
#     end
# end

# seed_items(exercises_arr)


# def seed_items(seeds_array)
#     seeds_array.each do |seed|
#         Expertise.create(seed)
#     end
# end

# seed_items(expertises_arr)


done_seeding = Time.now

puts "seeded: #{done_seeding - started_seeding} seconds"
