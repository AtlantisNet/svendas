class CreateAcessos < ActiveRecord::Migration[5.0]
  def change
    create_table :acessos do |t|
      t.integer :ac_id
      t.integer :ac_user
      t.integer :ac_tela

      t.timestamps
    end
  end
end
