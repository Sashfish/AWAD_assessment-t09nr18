namespace :admin do
  desc 'creates an admin account'
  task create: :environment do
    admin = User.new(
      email: 'admin@fancy.com',
      password: 'testpassword',
      password_confirmation: 'testpassword',
      admin: true
    )
    admin.save!
    p 'Admin (email: admin@fancy.com; pass: testpassword) has been created'
  end
end
