class CreateHasOcupations < ActiveRecord::Migration[5.0]
  def change
    create_table :has_ocupations do |t|
      t.references :ocupation, foreign_key: true
      t.references :worker, foreign_key: true

      t.timestamps
    end
  end
end
