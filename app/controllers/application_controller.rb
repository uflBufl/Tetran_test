class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include CustomersHelper

  def home_true
    c = Customer.find(params[:id])
    customers_black_change(c)
    redirect_to root_path
  end
end
