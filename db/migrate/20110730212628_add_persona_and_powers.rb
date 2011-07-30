class AddPersonaAndPowers < ActiveRecord::Migration
  def self.up
    add_column :people, :persona_name, :string, :limit => 100
    add_column :people, :power_1, :string, :limit => 100
    add_column :people, :power_2, :string, :limit => 100
    add_column :people, :power_3, :string, :limit => 100
  end

  def self.down
    remove_column :people, :persona_name
    remove_column :people, :power_1
    remove_column :people, :power_2
    remove_column :people, :power_3
  end
end
