User.create!(
  name: 'Homer Simpson', 
  email: 'test@test.com', 
  password: 'asdfasdf', 
  password_confirmation: 'asdfasdf',
  role: 'admin'
)

puts "1 Admin User created"

User.create!(
  name: 'Jim Beam',
  email: 'test2@test.com',
  password: 'asdfasdf',
  password_confirmation: 'asdfasdf',
  role: 'user'
)

puts "1 User created"

