class MembersTeams < ActiveRecord::Migration[5.2]
  def change
    create_join_table :members, :teams do |t|
      t.index :member_id
      t.index :team_id
      t.timestamps
    end
  end
end
