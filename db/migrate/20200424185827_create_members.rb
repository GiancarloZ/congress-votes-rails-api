class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.json :data
      t.timestamps
    end
  end
end
