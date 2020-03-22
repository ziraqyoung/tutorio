def seed_instructors
  Instructor.create(full_name: 'First Instructor', profile_name: 'frstInst', email: 'firstinst@test.com', password: 'password', password_confirmation: 'password')

  10.times do
    Instructor.create(
      full_name: Faker::Name.name,
      email: Faker::Internet.unique.email,
      password: 'password',
      password_confirmation: 'password'
    )
  end
end

def seed_categories
  development = ['Web Development', 'JavaScript', 'HTML', 'CSS', 'Ruby on Rails']
  design = ['Design Skills', 'Design Techniques', 'Drawing', 'Typography']
  photography = ['Raw Processing', 'Masking', 'Compositing', 'Lighting']
  marketing = ['Social Media marketing', 'Advertising', 'Content Marketing', 'Enterprise marketing']
  business = ['Communication', 'Leadership', 'Management', 'Career Development']

  development.each do |name|
    Category.create(branch: 'Development', name: name)
  end

  design.each do |name|
    Category.create(branch: 'Design', name: name)
  end

  photography.each do |name|
    Category.create(branch: 'Photography', name: name)
  end

  marketing.each do |name|
    Category.create(branch: 'Marketing', name: name)
  end

  business.each do |name|
    Category.create(branch: 'Business', name: name)
  end
end

def seed_courses
  category = Category.first
  instructor = Instructor.first

  2.times do |n|
    Course.create(
      title: "#{n}#{n} Introduction to Ruby on Rails",
      description: Faker::Lorem.sentence(word_count: 10),
      instructor_id: instructor.id,
      category_id: category.id,
      duration: 2.3,
      level: ['Beginner', 'Intermediate', 'Advanced'].sample,
      price: 24.0
    )
  end

  20.times do |n|
    Course.create(
      title: Faker::Lorem.sentence(word_count: 3),
      description: Faker::Lorem.sentence(word_count: 10),
      instructor_id: rand(1..9),
      category_id: rand(1..20),
      level: ['Beginner', 'Intermediate', 'Advanced'].sample,
      price: 20.0 + n,
      duration: 2.3 + n
    )
  end
end

seed_instructors
seed_categories
seed_courses
