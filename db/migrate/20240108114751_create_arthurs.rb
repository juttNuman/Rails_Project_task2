class CreateArthurs < ActiveRecord::Migration[7.1]
  def change
    create_table :arthurs do |t|
      t.string :name

      t.timestamps
    end
  end
end
