class AddTitleContentNameToContact < ActiveRecord::Migration
  def change
    add_column :contacts,:title,:string
    add_column :contacts,:name,:string
    add_column :contacts,:content,:text
  end
end
