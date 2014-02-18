class AddMoreFieldsToCats < ActiveRecord::Migration
  def change
    add_column :cats, :src, :string
    add_column :cats, :string, :string
  end
end
