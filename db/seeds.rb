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
    Category.create(branch: 'development', name: name)
  end

  design.each do |name|
    Category.create(branch: 'design', name: name)
  end

  photography.each do |name|
    Category.create(branch: 'photography', name: name)
  end

  marketing.each do |name|
    Category.create(branch: 'marketing', name: name)
  end

  business.each do |name|
    Category.create(branch: 'business', name: name)
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

def seed_course_sections
  courses = Course.all

  courses.each_with_index do |course, index|
    4.times do |n|
      Section.create(section_title: "course#{index}-section#{n} section", course: course)
    end
  end
end

def seed_section_lessons
  sections = Section.all

  sections.each_with_index do |section, index|
    4.times do |n|
      Lesson.create(lesson_title: "section#{index}-lesson#{n} section", section: section)
    end
  end
end


seed_instructors
seed_categories
seed_courses
seed_course_sections
seed_section_lessons

