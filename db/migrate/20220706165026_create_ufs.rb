class CreateUfs < ActiveRecord::Migration[7.0]
  def change
    create_table :ufs do |t|
      t.date :date
      t.float :uf

      t.timestamps
    end
  end
end
r