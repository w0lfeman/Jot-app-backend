class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.belongs_to :subject, foreign_key: true
      t.belongs_to :note, foreign_key: true

      t.timestamps
    end
  end
end
