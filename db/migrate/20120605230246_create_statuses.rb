class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :statusCode
      t.text :reason
      t.integer :user_id
      t.integer :thing_id

      t.timestamps
    end
  end
end
