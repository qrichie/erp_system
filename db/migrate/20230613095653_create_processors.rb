class CreateProcessors < ActiveRecord::Migration[7.0]
  def change
    create_table :processors do |t|
      t.string :name

      t.timestamps
    end
  end
end
