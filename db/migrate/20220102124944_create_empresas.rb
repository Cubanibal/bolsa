class CreateEmpresas < ActiveRecord::Migration[6.1]
  def change
    create_table :empresas do |t|
      t.string :simbolo
      t.integer :usuario_id

      t.timestamps
    end
    add_index :empresas, :usuario_id
  end
end
