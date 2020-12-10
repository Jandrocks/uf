class CreateOfs < ActiveRecord::Migration[6.0]
  def change
    create_table :ofs do |t|
      t.date :date
      t.float :value

      t.timestamps
    end
  end
end
