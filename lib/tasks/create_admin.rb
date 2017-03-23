task :create_admin => :environment do 
	User.create(email: "rakesh@gmail.com", password: "rakesh123", role: "admin")
end