class CreateWebprojects < ActiveRecord::Migration[6.0]
  def change
    create_table :webprojects do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
