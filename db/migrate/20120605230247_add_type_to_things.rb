class AddTypeToThings < ActiveRecord::Migration
  def change
    add_column :things, :thing_type, :integer
  end
end
