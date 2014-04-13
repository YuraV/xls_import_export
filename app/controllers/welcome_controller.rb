class WelcomeController < ApplicationController

  def bind_records
    BindRecordsService.rake_task_execute
    redirect_to root_path
  end

  def remove_columns
    ActiveRecord::Migration.remove_column :students, :initials
  end
end
