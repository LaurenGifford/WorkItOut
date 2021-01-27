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
    difficulty: 1,
    muscle_group: "core",
    url: "u6ZelKyUM6g",
    instructions: "Get in the pushup position, only put your forearms on the ground instead of your hands. ...
    Engage your glutes and abdominals.
    Keep a neutral neck and spine.
    Create a straight, strong line from head to toes and hold."
    },
    {
    category_id: body_weight.id,
    name: "Squat",
    difficulty: 2,
    muscle_group: "glutes",
    url: "9OfycnUL0h8",
    instructions: "Stand with your feet shoulder-width apart.
    Bend your knees, press your hips back and stop the movement once the hip joint is slightly lower than the knees.
    Press your heels into the floor to return to the initial position."
    },
    {
    category_id: body_weight.id,
    name: "Curtsy squat",
    difficulty: 5,
    muscle_group: "inner thighs",
    url: "Qmj9i5ESWh8",
    instructions: "Stand with feet hip-width apart, hands on your hips. 
    Take a big step back with your right leg, crossing it behind your left. 
    Bend your knees and lower your hips until your left thigh is nearly parallel to the floor. Keep your torso upright and your hips and shoulders as square as possible to the wall in front of you. Return to start"
    },
    {
    category_id: body_weight.id,
    name: "Side lunge",
    difficulty: 4,
    muscle_group: "quadriceps",
    url: "YCdVdzN0L_w",
    instructions: "Start standing with legs slightly wider than shoulder-distance apart and toes pointed forward. 
    Shift your body weight to one leg bending the knee until it reaches a 90-degree angle and the other leg is straight. 
    Glutes are pressing back behind you. 
    Return to center and switch sides."
    },
    {
    category_id: body_weight.id,
    name: "Push-up",
    difficulty: 2,
    muscle_group: "placeholder",
    url: "bt5b9x9N0KU",
    instructions: "Get down on all fours, placing your hands slightly wider than your shoulders.
    Straighten your arms and legs.
    Bend arms to lower your body until your chest nearly touches the floor.
    Pause, then push yourself back up."
    },
    {
    category_id: body_weight.id,
    name: "Side plank",
    difficulty: 5,
    muscle_group: "core",
    url: "XeN4pEZZJNI",
    instructions: "Start on your side with your feet together and one forearm directly below your shoulder.
    Contract your core and raise your hips until your body is in a straight line from head to feet.
    Hold the position without letting your hips drop for the allotted time for each set, then repeat on the other side."
    },
    {
    category_id: cardio.id,
    name: "Mountain climbers",
    difficulty: 3,
    muscle_group: "abdominals",
    url: "cnyTQDSE884",
    instructions: "Put both hands and feet on the floor.
    Place your right foot near your right hand and extend your left leg behind you.
    In one smooth motion, switch your legs, keeping your arms in the same position.
    Switch your legs back and forth twice, such that your right leg is again close to your right hand."
    },
    {
    category_id: cardio.id,
    name: "Burpees",
    difficulty: 4,
    muscle_group: "quadriceps",
    url: "qLBImHhCXSw",
    instructions: "Stand straight with your feet shoulder-width apart.
    Squat and place your hands in front of your feet.
    Jump back until your legs are fully extended and your body is in plank position.
    Do a push up, jump forward and then push through the heels to return to the starting position."
    },
    {
    category_id: cardio.id,
    name: "Jump rope",
    difficulty: 1,
    muscle_group: "calves",
    url: "u3zgHI8QnqE",
    instructions: "Hold the rope while keeping your hands at hip level.
    Rotate your wrists to swing the rope and jump.
    Jump with both feet at the same time, one foot at a time, alternating between feet, etc.
    Repeat until the set is complete."
    },
    {
    category_id: cardio.id,
    name: "Running form",
    difficulty: 1,
    muscle_group: "lungs",
    url: "K6I24WgiiPw",
    instructions: "Look Ahead. Your eyes should be focused on the ground about 10 to 20 feet ahead of you. ...
    Keep hands at your waist and relaxed
    Check Your Posture. Relax Your Shoulders.
    Rotate Your Arms From the Shoulder. Don't Bounce."
    },
    {
    category_id: cardio.id,
    name: "Plank jacks",
    difficulty: 2,
    muscle_group: "core",
    url: "EICQruYVhA4",
    instructions: "Begin in plank position, with your shoulders over your wrists, your body in one straight line, and your feet together. 
    Like the motion of a jumping jack, jump your legs wide and then back together. 
    Jump as quickly as you want, but keep your pelvis steady and don't let your booty rise toward the ceiling."
    },
    {
    category_id: pilates.id,
    name: "Teaser",
    difficulty: 11,
    muscle_group: "core",
    url: "xVwpoIlQZPA",
    instructions: "Extend your legs to a 45-degree angle. You can also start with your legs outstretched if you want a more advanced version.
    Exhale, lengthen your spine to nod your head slightly, and begin scooping your abdominal muscles in and up so that your upper body starts to roll off the mat. Simultaneously, your arms come up to parallel your legs. Your fingertips reach past your toes while keeping your shoulders down. (This is a scooping move. The energy moves up the front and down the back with a feeling of support along the backs of your legs.)
    Inhale as you come to the top and open your chest, lifting your head slightly to express the length of your spine.
    Exhale to roll down. Start from the low abs and use control, rolling down sequentially along the spine. 
    Keep your legs together and think of rolling down your midline."
    },
    {
    category_id: stretch.id,
    name: "Pigeon pose",
    difficulty: 6,
    muscle_group: "Outer hips",
    url: "M1gEGLtF1p0",
    instructions: "From all fours, bring your right knee forward towards your right wrist. 
    Your right ankle will be somewhere in front of your left hip. 
    Giving you a stretch on your outer hip without any discomfort in your knee. 
    Slide your left leg back and point your toes, your heel is pointing up to the ceiling. Keep your hips level.
    As you inhale, come onto your fingertips, lengthen your spine, draw your navel in and open your chest.
    As you exhale, walk your hands forward and lower your upper body towards the floor. You can rest your forearms and forehead on the mat.
    Try to release the tension in your right hip.
    To come out of the pose, push back through the hands, lift your hips and move your leg back into all fours. Repeat on the other side."
    },
    {
    category_id: stretch.id,
    name: "Sun salutation",
    difficulty: 2,
    muscle_group: "hamstrings",
    url: "FPjppcOquE4",
    instructions: "Stand with your feet hip-width apart. Press your palms together in prayer position. 
    Inhale as you sweep your arms out to the side and overhead. Gently arch your back and gaze toward the sky. 
    Exhale as you fold forward from the hips. Bend your knees if necessary. Rest your hands beside your feet and bring your nose to your knees.
    Inhale as you lift your torso halfway, lengthening your spine forward so your back is flat. Your torso should be parallel to the floor. 
    Keep your fingertips on the floor, or bring them to your shins.
    Exhale as you step or jump back into Plank Pose (High Push-Up Pose), with your hands under your shoulders and feet hip-distance apart. 
    Continue exhaling as you lower your body toward the floor. Keep your elbows tucked in toward your sides. If needed, come to your knees for Half Chaturanga. 
    Otherwise, keep your legs straight and reach back through your heels.
    Inhale as you draw your chest forward and straighten your arms. Draw your shoulders back and lift your heart to the sky. Press through the tops of your feet, lifting your thighs off the floor and fully engaging your leg muscles. 
    Keep your elbows tucked in toward your sides. Exhale as you lift your hips and roll over your toes, placing the soles of your feet on the floor. Your heels do not need to touch the ground. Ground down through your hands and the soles of your feet as you lengthen your spine. 
    Lift your belly and sit bones toward the sky. Stay here for five breaths. On your last exhalation, bend your knees and look between your hands. Inhale as you step or jump both feet between your hands. 
    Lift your torso halfway, lengthening your spine forward so your back is flat. Your torso should be parallel to the floor. Keep your fingertips on the floor, or bring them to your shins. 
    Exhale as you fold your torso over your thighs. Bend your knees if necessary. Rest your hands beside your feet and bring your nose to your knees. Inhale as you sweep your arms out to the side and extend up once again. 
    Gently arch your back and gaze toward the sky. Exhale as you come back into Mountain Pose. Bring your hands into prayer position. Rest your thumbs on your sternum. Repeat the sequence two or more times."
    },
    {
    category_id: stretch.id,
    name: "Wheel pose",
    difficulty: 10,
    muscle_group: "back",
    url: "4F4lTh09Z5E",
    instructions: "Lie on your back. Bend your knees, bringing the soles of your feet onto your mat close to the buttocks. 
    Reach down with your fingertips and make sure that you can just graze your heels. The feet should be parallel and hips' distance apart.
    Bend your elbows and bring the palms of your hands overhead, placing them underneath your shoulders with the fingertips pointing towards your feet.
    Inhale and press down into your palms and your feet as you lift your shoulders and hips up off the floor. Do not press all the way up yet.
    Bring the crown of your head to the mat, making sure not to put too much weight on the neck. Use your hands and feet for leverage. Pause here for a moment as you make sure that your elbows are staying parallel and not splaying out to the sides.
    Straighten your arms as you lift your head off the floor.
    Make sure to keep your feet parallel and knees in line with your feet.
    Reach your chest towards the wall behind you.
    Begin to straighten your legs.
    To come down, tuck your chin into your chest and lower down slowly."
    },
    {
    category_id: warm_up.id,
    name: "Crunch",
    difficulty: 1,
    muscle_group: "abdominals",
    url: "0t4t3IpiEao",
    instructions: "Lay supine in a relaxed position with your knees up and hands across your chest.
    Exhale and squeeze your abs as you curl your upper body off the floor.
    Once your abs are fully contracted and your upper back is off the floor, slowly lower yourself back to the starting position."
    },
    {
    category_id: warm_up.id,
    name: "Tabletop",
    difficulty: rand(1..12),
    muscle_group: "arms",
    url: "zBdY96ZoOgM",
    instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
    category_id: warm_up.id,
    name: "Up-down planks",
    difficulty: 7,
    muscle_group: "triceps",
    url: "AAPpXm-q7lc",
    instructions: "Begin in a plank position with your arms straight and hands on the ground.
    One hand at a time, come down onto your forearms.
    With the same hand leading, press yourself up onto your hands, keeping the rest of your body as stable as possible.
    Repeat the full movement, alternating the arm that makes the first move each time."
    },
    {
    category_id: weightlifting.id,
    name: "Kettlebell deadlift",
    difficulty: 5,
    muscle_group: "back",
    url: "hinonqqzatk",
    instructions: "Stand with a kettlebell between your feet.
    Bend the knees, driving the hips back, with the chest lifted, and grab onto the handles with both hands.
    Push into the ground to stand up with straight arms, lifting the kettlebell just above the knees."
    },
    {
    category_id: weightlifting.id,
    name: "Dumbell woodchop",
    difficulty: 2,
    muscle_group: "obliques",
    url: "b65s5BtdOEc",
    instructions: "Start with your feet slightly wider than shoulder width while holding the dumbbell in both hands at your side.
    Swing the dumbbell up and across the body and over the opposite shoulder.
    Swing the dumbbell back down to your hip with full control and repeat."
    },
    {
    category_id: weightlifting.id,
    name: "Single leg deadlift",
    difficulty: 7,
    muscle_group: "hamstrings",
    url: "84hrdsHgDuQ",
    instructions: "Stand on one leg with your knee slightly bent and hold a dumbbell in each hand.
    Start bending at the hips and extend your free leg behind you.
    Lower your torso until you're parallel to the floor.
    Return to the starting position and repeat with the opposite leg."
    },
    {
    category_id: weightlifting.id,
    name: "Triceps kickback",
    difficulty: 3,
    muscle_group: "triceps",
    url: "ReP0UzlrkAo",
    instructions: "Grab a set of dumbbells, bring your torso forward and bend your knees slightly.
    Bring your elbows up, so that your upper arms are parallel to the floor, and kick back until your arms are fully extended.
    Slowly lower the weights to the starting position."
    },
    {
    category_id: yoga.id,
    name: "Chair pose",
    difficulty: 5,
    muscle_group: "quadriceps",
    url: "YBGtKQgExZo",
    instructions: "Stand with feet hip-distance apart.
    Inhale and raise your arms above your head, perpendicular to the floor.
    Exhale as you bend your knees, bringing your thighs as parallel to the floor as they can get."
    },
    {
    category_id: yoga.id,
    name: "Bridge pose",
    difficulty: 9,
    muscle_group: "glutes",
    url: "0hlKymgBr2s",
    instructions: "Lie on your back with your knees bent and feet on the floor. Extend your arms along the floor, palms flat.
    Press your feet and arms firmly into the floor, lift your hips toward the ceiling. Hold your buttocks off the floor.
    Roll your shoulders back and underneath your body. Clasp your hands and extend your arms along the floor beneath your pelvis. 
    Straighten your arms as much as possible, pressing your forearms into the mat. Keep your thighs and feet parallel. 
    Press your weight evenly across all four corners of both feet. Lengthen your tailbone toward the backs of your knees.
    Hold for up to one minute. "
    },
    {
    category_id: yoga.id,
    name: "Crow pose",
    difficulty: 12,
    muscle_group: "triceps",
    url: "TJOJH1PS7jw",
    instructions: "To come into Crow Pose from standing, squat down and place your hands flat on your mat about shoulder-width apart. 
    Lift the hips way up toward the sky, bend the knees and lift the heels off the floor so just the balls of the feet are down. 
    Gently press the knees in to the backs of the triceps and begin to shift your weight into the fingertips, picking one foot at a time off the floor. 
    Bend the elbows if necessary for balance. Use the core to draw the navel in toward the spine to stabilize the elbows and hold. 
    Be sure to bring your gaze just between the hands to maintain balance."
    },
    {
    category_id: yoga.id,
    name: "Downward-facing dog",
    difficulty: 3,
    muscle_group: "hamstrings",
    url: "WSVxPPQO248",
    instructions: "Your hands should be shoulder-width apart and spread your fingers out wide. 
    Press your hands into the mat and gently tuck your toes under and take a deep inhale, then 
    keeping your hands pressed into the mat exhale deeply, lifting your knees off the floor and 
    straightening your legs as much as you can."
    },
    {
    category_id: yoga.id,
    name: "Triangle pose",
    difficulty: 12,
    muscle_group: "core",
    url: "_1124fj0BeQ",
    instructions: "Step or jump your feet wide.
    Pivot in your left foot; turn out your right foot 90 degrees.
    Press into your outer left heel. Turn your left thigh outward.
    Press into your inner right foot. Turn your right thigh outward.
    Reach your right hand to the floor and left hand to the ceiling.
    Turn your navel and chest upwards. Gaze up at your top thumb."
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
