class CreateInformacoes < ActiveRecord::Migration[5.1]
  def change
    create_table :informacoes do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
