class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string  :first_name
      t.string  :last_name
      t.string  :email
      t.integer  :height_in_inches
      t.decimal  :weight_in_lb
      t.boolean :isPublic, default: false
      t.text  :interests
      t.timestamps
    end
  end
end
