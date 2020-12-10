class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :log_in_count, default: 0

      t.timestamps
    end
  end
end
