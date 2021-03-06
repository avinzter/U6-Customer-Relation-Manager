class FinderController < ApplicationController
  def action
  	@customers = Customer.order(:full_name)

  end #load: app/views/finder/action.html.erb

  def view
  	@customer = Customer.find(params[:id])
  end #load: app/views/finder/view.html.erb

  def missing_email
  	@customer = Customer.where("email_address IS NULL")
  end
end
