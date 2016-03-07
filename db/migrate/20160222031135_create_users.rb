class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string "email", :limit => 50, :null => false
      t.column "password", :string, :limit => 50, :null => false
      # Data Types: Binary, boolean, data, decimal, float, integer, text, time
      # Options:
      # :default => X
      # :precision => X
      # :scale => X
      # :auto-incrementing ids are generated automatically
      t.timestamps null: false
    end
    def down
      drop_table :users
    end
  end
end
