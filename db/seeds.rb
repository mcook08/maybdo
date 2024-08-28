# frozen_string_literal: true

# db/seeds.rb

daily_challenges = [
  'Do 25 Pushups',
  'Run or Walk a Mile',
  'Draw a Self-Portrait',
  'High-Five a Stranger',
  'Sit Quietly Outside for 10 Minutes',
  'Hold Your Breath as Long as You Can',
  'Write One Paragraph in a Journal',
  'Learn a New Word and Use It in a Sentence',
  'Do 10 Minutes of Yoga or Stretching',
  'Compliment Three People Today',
  'Drink 8 Glasses of Water',
  'Read a Chapter from a Book',
  'Try a New Recipe',
  'Write a Letter to Your Future Self',
  'Take a Cold Shower',
  'Go for a 15-Minute Walk',
  'Do 15 Jumping Jacks',
  'Call a Friend or Family Member',
  'Meditate for 5 Minutes',
  'Watch a TED Talk',
  'Declutter One Drawer or Shelf',
  'Do a Random Act of Kindness',
  'Make a List of 3 Things You’re Grateful For',
  'Do a 5-Minute Breathing Exercise',
  'Dance to Your Favorite Song',
  'Do 5 Minutes of Planking',
  'Read an Article on a Topic You Know Nothing About',
  'Organize Your Desk',
  'Write Down 3 Goals for the Week',
  'Try a New Stretch',
  'Plan a Fun Activity for the Weekend',
  'Go an Hour Without Your Phone',
  'Compliment Yourself in the Mirror',
  'Learn a New Fact',
  'Try a Digital Detox for 30 Minutes',
  'Make Your Bed as Soon as You Wake Up',
  'Spend 5 Minutes Appreciating Nature',
  'Write a Haiku Poem',
  'Try a New Fruit or Vegetable',
  'Take a Photo of Something That Makes You Happy',
  'Do 3 Sets of 10 Squats',
  'Listen to a Podcast on a New Topic',
  'Spend 10 Minutes Tidying Up',
  'Try to Remember and Write Down a Dream You Had',
  'Take a Different Route to Work or School',
  'Leave a Positive Note for Someone to Find',
  'Do a Digital Cleanup – Delete Unnecessary Files',
  'Write Down a Positive Affirmation and Say It Out Loud',
  'Learn a New Dance Move',
  'Do 5 Minutes of Jump Rope',
  'Try a New Type of Tea or Coffee',
  'Write a Thank-You Note to Someone',
  'Sketch or Doodle Freely for 10 Minutes',
  'Write Down 5 Positive Things About Yourself',
  'Walk Barefoot on Grass for a Few Minutes',
  'Try to Solve a Brain Teaser or Puzzle',
  'Watch the Sunrise or Sunset',
  'Do 20 Lunges',
  'Clean Out Your Email Inbox',
  'Practice Deep Breathing for 2 Minutes',
  'Spend 5 Minutes Stretching Your Neck and Shoulders',
  "Do a Task You've Been Procrastinating",
  'Read a Short Story',
  'Listen to a Classical Music Piece',
  'Take a 5-Minute Power Nap',
  'Write a Short Story in 5 Sentences',
  'Try Eating With Your Non-Dominant Hand for a Meal',
  'Identify and Write Down Your Core Values',
  'Do a Facial Massage or Apply a Face Mask',
  'Read a Motivational Quote and Reflect on It',
  'Walk or Run Up and Down a Flight of Stairs for 5 Minutes',
  'Write Down Your Dreams and Aspirations',
  'Try a New Hairstyle or Grooming Routine',
  'Spend 5 Minutes Observing Your Breathing',
  'Find and Learn the Capital of a Country You Don’t Know',
  'Draw Your Favorite Animal from Memory',
  'Try to Memorize a Short Poem or Quote',
  'Send a Nice Message to a Friend You Haven’t Spoken to in a While',
  'Write Down a Recent Dream You Remember',
  'Look at Old Photos and Reminisce',
  'Read About a Random Historical Event',
  'Make a Playlist of Your Favorite Songs',
  'Try Writing With Your Non-Dominant Hand',
  'Do a 5-Minute Clean-Up of Your Immediate Space',
  'Plan a Fun Outing for the Weekend',
  'Take 10 Deep Breaths While Focusing on Your Exhale',
  'Do a 2-Minute Plank Challenge',
  'Write Down 3 Things You Appreciate About Today',
  'Try Out a New App or Tool',
  'Watch a Nature Documentary',
  'Plan Your Meals for the Next Day',
  'Write Down 5 Things You Love About Your Best Friend',
  'Do 30 Seconds of High Knees',
  'Try Mindful Eating for One Meal',
  'Research a Famous Person You Admire',
  'Compliment a Co-Worker or Classmate',
  'Set a Timer and Declutter a Space for 5 Minutes',
  'Write a Short Poem About Your Day',
  'Try a New Form of Exercise',
  'Visualize Your Ideal Day and Write It Down',
  'Give Yourself a Mini Hand Massage',
  'Spend 10 Minutes Gardening or Tending to Plants',
  'Learn a New Tongue Twister',
  'Write Down Your Favorite Childhood Memory',
  'Try Intermittent Fasting for 12 Hours',
  'Find and Try a Simple Breathing Exercise',
  'Spend 10 Minutes Researching a Hobby You’d Like to Try',
  'Practice Gratitude by Writing Down 3 Things You’re Thankful For',
  'Write Down Your Ideal Travel Destination and Why',
  'Do 15 Sit-Ups',
  'Research a Recipe and Make a Healthy Snack',
  'Draw Something Using Only One Line',
  'List 5 Things You Like About Yourself',
  'Try to Read a Page of a Book in a Foreign Language',
  'Learn How to Say “Hello” in 5 Different Languages',
  'Spend 5 Minutes Organizing Your Closet',
  'Write Down Your Top 3 Priorities for the Month',
  'Do a 1-Minute Cold Water Splash on Your Face',
  'Watch a Video About a Place You Want to Visit',
  'Read About a New Culture',
  'Do 5 Minutes of Light Cardio',
  'Learn a New Stretch for Flexibility',
  'Write a Thank You Note to Yourself',
  "Practice Saying 'No' to Something Today",
  'Find a New Walking Route and Try It Out',
  'Spend 5 Minutes Drawing Your Favorite Scene from a Movie',
  'Plan a Simple Home Workout Routine',
  'Learn the Basic Steps of a Dance You’ve Never Tried',
  'Spend 10 Minutes Visualizing Your Goals',
  'Try Cooking a Meal Without a Recipe',
  'Practice a Relaxation Technique',
  'Try to Solve a Math Problem You’ve Never Done Before',
  'Read an Inspirational Story',
  'Think of a New Idea and Write It Down',
  'Write a List of Your Top 5 Favorite Movies',
  'Try to Balance on One Leg for 30 Seconds Each',
  'Do 20 Minutes of Physical Activity',
  'Read a Book for 30 Minutes Without Any Distraction',
  'Write a Love Letter to Yourself',
  'Declutter Your Desk for 5 Minutes',
  'Do 5 Minutes of Mindfulness Meditation',
  'Spend 10 Minutes Focusing on Your Breath',
  'Try to Identify 3 New Things About Your Surroundings',
  'Set a Goal for the Day and Achieve It',
  'Plan a Future Trip You’ve Been Dreaming About',
  'List 5 Books You Want to Read',
  'Write Down 3 Positive Affirmations and Say Them Aloud',
  'Learn a Quick Breathing Technique to Reduce Stress',
  'Try Cooking with a New Ingredient',
  'Make a Small Donation to a Cause You Care About',
  'Try to Learn a New Language for 5 Minutes',
  'Spend Time with a Pet or Animal',
  'Plan Your Week Ahead for 10 Minutes',
  'Create a Vision Board Online or on Paper',
  'Do 20 Burpees',
  'Try to Write with Your Non-Dominant Hand for 5 Minutes',
  'Take a Walk and Notice 5 Things You’ve Never Seen Before',
  'Write a Short Story Based on Your Day',
  'Practice a Breathing Exercise for 3 Minutes',
  'Take 5 Minutes to Stretch Your Whole Body',
  'Write Down a List of Your Favorite Things',
  'Practice Balance by Standing on One Leg for 1 Minute Each',
  'Write Down 5 Goals You Want to Achieve This Year',
  'Make a Gratitude List with at Least 10 Items',
  'Spend 5 Minutes Focusing on Your Posture',
  'Do a 2-Minute Wall Sit',
  'Practice Writing in Cursive for 10 Minutes',
  'Make a List of Your Top 5 Favorite Foods',
  'Take a Picture of Something Beautiful You See Today',
  'Write a Review for a Book or Movie You Recently Enjoyed',
  'Clean Your Phone Screen and Case',
  'Spend 10 Minutes Reading a Blog on a Topic You’re Interested In',
  'Write Down 3 Things You Want to Improve About Yourself',
  'Try a New Physical Activity You’ve Never Done Before',
  'Write a List of 5 Things That Make You Happy',
  'Listen to Your Favorite Song and Dance to It',
  'Do 10 Squats and 10 Lunges',
  'Write a Thank You Note to Someone Who Helped You Recently',
  'Learn a New Skill for 10 Minutes',
  'Try Cooking a New Dish',
  'Spend 5 Minutes Appreciating a Piece of Art',
  'List 3 Things You’re Looking Forward to This Week',
  'Plan a Fun Weekend Activity',
  'Spend 5 Minutes Stretching Your Legs',
  'Write Down 3 Lessons You Learned Recently',
  'Compliment Someone and Make Their Day',
  'Try to Remember Your Last Dream and Write It Down',
  'Make a List of Your Top 5 Favorite Quotes',
  'Learn a New Fact About History',
  'Take 10 Deep Breaths While Closing Your Eyes',
  'Write a Short Poem About Your Feelings Today',
  'Draw a Simple Map of Your Favorite Place',
  'Find and Read a New Poem',
  'Write a List of 5 Things You’re Grateful For',
  'Take a Moment to Appreciate the Present',
  'Spend 5 Minutes Visualizing Your Ideal Life',
  'Try Eating a Healthy Snack You’ve Never Tried Before',
  'Spend 5 Minutes Stretching Your Back',
  'Make a List of Your Favorite Songs and Share It with Someone',
  'Write Down 3 Things You Love About Yourself',
  'Learn a New Stretch for Your Shoulders',
  'Spend 10 Minutes Working on a Hobby',
  'Take 5 Minutes to Reflect on Your Day',
  'Plan a Simple Meal for Tomorrow',
  'Try to Identify 5 Birds You’ve Never Seen Before',
  'Write a Letter to Your Past Self',
  'Spend 5 Minutes Observing the Sky',
  'Do a 3-Minute Meditation',
  'Find a New Exercise to Try and Do It for 10 Minutes',
  'Write a List of 3 Things You’d Like to Learn',
  'Spend 5 Minutes Reflecting on Your Goals',
  'Take a Walk in a Park and Enjoy Nature',
  'Make a List of Your Favorite Smells',
  'Write Down 3 New Things You Learned This Week',
  'Spend 5 Minutes in Silence, Focusing on Your Breath',
  'Read an Article on a New Topic',
  'Practice Gratitude for 5 Minutes',
  'Write a Letter to Your Future Self',
  'Do 10 Minutes of Light Cardio',
  'Spend 5 Minutes Drawing a Doodle',
  'Write Down Your Favorite Memory from the Past Year',
  'Take a 5-Minute Power Nap to Refresh Yourself',
  'Write a Short Story Using Only 5 Sentences',
  'Learn How to Say “Thank You” in 3 Different Languages',
  'Try a New Recipe and Share It with Friends',
  'Write a List of Your Top 5 Favorite Activities',
  'Spend 10 Minutes Practicing a New Language',
  'Write a Thank You Note to a Mentor or Teacher',
  'Try a New Craft or Art Project',
  'Write a List of Your Top 3 Strengths',
  'Spend 5 Minutes Thinking About Your Personal Growth',
  'Watch a Documentary on a New Topic',
  'Write Down 5 Things You Love About Your Life',
  'Take a 10-Minute Walk Outside',
  'Write a Poem About Nature',
  'Make a List of Your Favorite Books and Share It with Someone',
  'Try a New Meditation Technique',
  'Spend 5 Minutes Stretching Your Neck',
  'Write Down Your Goals for the Next 6 Months',
  'Do 10 Minutes of Light Exercise',
  'Write a Short Story Based on a Random Object',
  'Spend 5 Minutes in Silence, Reflecting on Your Day',
  'Make a List of Your Top 5 Favorite Movies',
  'Try a New Type of Exercise',
  'Write a Letter to Your Future Self with Your Hopes and Dreams',
  'Spend 10 Minutes Drawing a Picture',
  'Write Down 3 Things You Want to Achieve Today',
  'Take a Break and Enjoy a Cup of Tea or Coffee',
  'Spend 5 Minutes Thinking About Your Future Goals',
  'Read a Chapter from a Book You’ve Been Meaning to Finish',
  'Write a List of Your Top 5 Favorite Things to Do',
  'Try a New Form of Meditation',
  'Write a Letter to Your Future Self',
  'Spend 10 Minutes Drawing a Picture',
  'Write Down 3 Things You Might Do Today',
  'Enjoy an extra Cup of Tea or Coffee to Relax and Recharge and Feel Refreshed',
  'Write a Thank You Note to Yourself',
  'Spend 5 Minutes Thinking About Your Future Goals',
  'Read a Chapter from a Book',
  'Write a List of Your Top 5 Favorite Things',
  'Try a New Form of Meditation',
  'Spend 10 Minutes Working on a Puzzle',
  'Take a 10-Minute Walk',
  'Write a Short Story About Your Day',
  'Spend 5 Minutes Stretching',
  'Make a List of Your Top 5 Favorite Foods',
  'Recommend a book to a friend',
  'Ask a trusted friend for a book recommendation'
]

daily_challenges.each do |challenge_name|
  DailyChallenge.find_or_create_by(name: challenge_name)
end
