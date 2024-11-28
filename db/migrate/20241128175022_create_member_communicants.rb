class CreateMemberCommunicants < ActiveRecord::Migration[7.2]
  def change
    create_table :member_communicants do |t|
      t.string :profession
      t.string :marital_status
      t.string :marital_partner
      t.string :partner_religious_confession
      t.string :admitted_by

      t.timestamps
    end
  end
end
