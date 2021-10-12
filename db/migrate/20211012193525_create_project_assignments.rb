class CreateProjectAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :project_assignments do |t|
      t.references :employee, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
