class PeopleController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.csv {send_data @students.to_csv}
      #format.xls
    end
  end
end
