class AddPictureToBeans < ActiveRecord::Migration[5.1]
  def change
    add_column :beans, :picture, :string
  end
end
