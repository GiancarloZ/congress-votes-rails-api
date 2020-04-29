class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.json :members
      t.timestamps
    end
  end
end
