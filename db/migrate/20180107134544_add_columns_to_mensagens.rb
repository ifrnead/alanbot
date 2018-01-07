class AddColumnsToMensagens < ActiveRecord::Migration[5.1]
  def change
    add_column :mensagens, :texto, :text
    add_reference :mensagens, :resposta, index: true
    add_column :mensagens, :json, :text
  end
end
