class AddColumnNameNunmberFacultyDepartmentYearToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :number, :string
    add_column :users, :faculty, :string
    add_column :users, :department, :string
    add_column :users, :year, :integer
  end
end
