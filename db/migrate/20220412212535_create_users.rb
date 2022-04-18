class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|

      t.timestamps
    end
  end
end

class AddNameKindLevelToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :nickname, :string
    add_column :users, :kind, :integer
    add_column :users, :level, :integer
  end
end

