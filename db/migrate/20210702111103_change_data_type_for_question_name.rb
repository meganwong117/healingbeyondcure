class ChangeDataTypeForQuestionName < ActiveRecord::Migration[6.0]
  def change
    change_column(:questions, :name, :text)
  end
end
