class AddStateToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :state, :boolean, default: false
  end
end
