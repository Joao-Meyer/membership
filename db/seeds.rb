# Create initial user
User.create(name: "admin", email: "first.user@email.com", enabled: true, password: "1234561")

p "Created #{User.count} Users"

p "Done seeding first user."