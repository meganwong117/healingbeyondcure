class AddDescriptionToStories < ActiveRecord::Migration[6.0]
  def change
    add_column :stories, :description, :text
  end
end
