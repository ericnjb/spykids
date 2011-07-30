class AddPersonEmail < ActiveRecord::Migration
  def self.up
    add_column :people, :e_mail, :string, :limit => 100
    change_column :people, :first_name, :string, :limit => 50
    change_column :people, :last_name, :string, :limit => 50
    change_column :people, :gender, :string, :limit => 1
  end

  def self.down
    change_column :people, :first_name, :string
    change_column :people, :last_name, :string
    change_column :people, :gender, :string
    remove_column :people, :e_mail
  end
end
