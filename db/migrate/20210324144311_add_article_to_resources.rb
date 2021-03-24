class AddArticleToResources < ActiveRecord::Migration[6.0]
  def change
    add_reference :resources, :article, index: true
  end
end
