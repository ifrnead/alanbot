class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :matricula
      t.string :token

      t.timestamps
    end
  end
end
