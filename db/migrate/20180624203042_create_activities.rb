class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.belongs_to  :member, index: true
      t.belongs_to  :sport, index: true
      t.date :paticipation_date
      t.integer :duration
      t.timestamps
    end
  end
end
