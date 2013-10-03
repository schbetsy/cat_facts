class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :fact

      t.timestamps
    end
  end
end
