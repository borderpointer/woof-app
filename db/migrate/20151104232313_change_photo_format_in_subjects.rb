class ChangePhotoFormatInSubjects < ActiveRecord::Migration
  def change
    change_column :subjects, :photo, :text
  end
end
