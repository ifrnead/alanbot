class CreateMensagens < ActiveRecord::Migration[5.1]
  def change
    create_table :mensagens do |t|

      t.timestamps
    end
  end
end
