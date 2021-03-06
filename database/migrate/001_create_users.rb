class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.column :name, :string, :null => false
      t.column :nick, :string, :null => false
      t.column :introduction, :text
      t.column :hashed_password, :string, :null => false
      t.column :salt, :string, :null => false
    end
  end
  def self.down
    drop_table :users
  end
end
