class CreateClocks < ActiveRecord::Migration[5.1]
  def change
    create_table :clocks do |t|
      t.string :user
      t.string :in_out
      t.datetime :time

      t.timestamps
    end
  end
end
