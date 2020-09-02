class CreateJobImages < ActiveRecord::Migration[5.2]
  def change
    create_table :job_images do |t|
      t.references :job, foreign_key: true
      t.string :imagen
      t.string :titulo
      t.string :descripcion

      t.timestamps
    end
  end
end
