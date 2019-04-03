10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: 'Pellentesque sit amet eros mi. Sed elementum arcu et elit fringilla, eu accumsan magna laoreet. Etiam a consequat neque. Donec pellentesque vel enim sed auctor. Fusce hendrerit ipsum eu tempus suscipit. Etiam luctus dui et porttitor pellentesque. Aliquam ut sapien eget eros suscipit eleifend ac ac sapien. Nunc ac tempor purus, commodo semper odio.'
  )
end

puts '10 blog posts created'

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts '5 skills created'

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: 'My Great Service',
    body: 'Duis nec metus blandit, elementum purus at, fermentum eros. Quisque vitae auctor arcu. Aliquam rhoncus in sem dapibus laoreet. ',
    main_image: 'https://via.placeholder.com/600x400',
    thumb_img: 'https://via.placeholder.com/350x200'
  )
end

puts '9 portfolio items created'