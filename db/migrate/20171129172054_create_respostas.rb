class CreateRespostas < ActiveRecord::Migration[5.1]
  def change
    create_table :respostas do |t|
      t.references :alvo, foreign_key: true
      t.references :informacao, foreign_key: true
      t.text :mensagem

      t.timestamps
    end
  end
end
