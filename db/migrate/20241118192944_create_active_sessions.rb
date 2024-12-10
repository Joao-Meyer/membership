class CreateActiveSessions < ActiveRecord::Migration[7.2]
  def change
    create_table :active_sessions do |t|
      t.references :user, null: false, foreign_key: { on_delete: :cascade }
      t.string :remember_token, null: false, index: true
      t.string :user_agent, null: false
      t.string :ip_address, null: false

      t.timestamps
    end
  end
end
