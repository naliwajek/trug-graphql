user = User.create(
  email: 'foo@bar.com',
  role: 'user',
  name: 'Foo Bar',
  age: 18
)

admin = User.create(
  email: 'admin@example.com',
  role: 'admin',
  name: 'Admin Admin',
  age: 66
)

Article.create(
  user: user,
  title: 'Just a normal article',
  body: 'Blah blah blah...'
)

Article.create(
  user: admin,
  title: 'Sponsored article addded by admin',
  body: 'Gold gold gold...'
)
