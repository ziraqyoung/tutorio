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
    Category.create(branch: 'Development', name: name)
  end

  photography.each do |name|
    Category.create(branch: 'Development', name: name)
  end

  marketing.each do |name|
    Category.create(branch: 'Development', name: name)
  end

  business.each do |name|
    Category.create(branch: 'Development', name: name)
  end
end
