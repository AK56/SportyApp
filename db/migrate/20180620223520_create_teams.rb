class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.references  :organization
      t.string  :name
      t.timestamps
    end
  end
end
