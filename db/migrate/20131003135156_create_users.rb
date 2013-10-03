class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :phone_number
      t.boolean :subscribed

      t.timestamps
    end
  end
end
