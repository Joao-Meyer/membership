class AddInitialUser < ActiveRecord::Migration[7.2]
  def change
    User.create(name: "admin", email: "first.user@email.com", enabled: true, password: "1234561")
  end
end
