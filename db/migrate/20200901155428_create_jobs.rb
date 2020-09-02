class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.references :category, foreign_key: true
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
