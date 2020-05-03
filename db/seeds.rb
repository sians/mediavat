
sian = User.create(email: "sian.m.stone@gmail.com", password: "foobar")

category = Category.create(name: "media musings")

post = Post.create(
  title: "Test Post 1",
  subtitle: "Test post 1's subtitle",
  content: "This is the content of the post and it's long and interesting",
  author: "Sian",
  published: 0
  )

posts_category = PostsCategory.create(
  post: post,
  category: category
  )

comment = Comment.create(
  email: "sian.m.stone@gmail.com",
  name: "sians",
  text: "this is an awesome post, love it",
  post: post
  )




