class CreatePolos < ActiveRecord::Migration[5.1]
  def change
    create_table :polos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
