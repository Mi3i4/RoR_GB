namespace :fake_db_data do
  desc 'add fake data to DB'
    task create_fake_db: :environment do
      user = User.create! name: 'fake_user_new', email: 'fake@usernew.com'
      puts 'User created'
      post = Post.create! title: 'test_title', body: 'some body post', user_id: '1', disactive: 'false'
      puts 'Post created'
      comment = Comment.create! body: 'some body comment', user: user, post: post, disactive: 'false'
      puts 'Comment created'
      mark = Mark.create! user: user, post: post, like: '1', dislike: '0'
    end
end