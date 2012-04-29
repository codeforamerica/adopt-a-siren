class CreateThingUserJoinTable < ActiveRecord::Migration
  def up
    create_table :things_users, :id => false do |t|
      t.integer :user_id
      t.integer :thing_id
    end

    #TODO: this is where data should be copied from things user_id to the new join table
    
    remove_column :things, :user_id
    
  end
  def down
    drop_table:things_users
  end
end

