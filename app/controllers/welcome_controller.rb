class WelcomeController < ApplicationController

  def bind_records
    BindRecordsService.rake_task_execute
    redirect_to root_path
  end

  def remove_columns
    ActiveRecord::Migration.remove_column :faculties, :initials
    ActiveRecord::Migration.remove_column :form_of_educations, :initials
    ActiveRecord::Migration.remove_column :rector_appointments, :initials

    redirect_to root_path
  end
end
