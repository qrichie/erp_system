class RemoveNameFromProcessors < ActiveRecord::Migration[7.0]
  def change
    remove_column :processors, :name

  end
end
