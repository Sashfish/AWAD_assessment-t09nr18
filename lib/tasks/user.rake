namespace :admin do
  desc 'creates an admin account'
  task create: :environment do
    user = User.new(
      email: 'joe@average.com',
      password: 'coolbeans',
      password_confirmation: 'coolbeans',
      admin: false
    )
    user.save!
    p 'User (email: joe@average.com; pass: coolbeans) has been created'
  end
end
