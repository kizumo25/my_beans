class CreateBeans < ActiveRecord::Migration[5.1]
  def change
    create_table :beans do |t|
      t.string :name

      t.timestamps
		end
  end
end
