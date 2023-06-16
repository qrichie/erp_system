class AddUserToProcessor < ActiveRecord::Migration[7.0]
  def change
    add_reference :processors, :user, foreign_key: true
  end
end
