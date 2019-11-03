class CustomersController < ApplicationController
  include CustomersHelper

  def home
    @customers = Customer.where("black = false")
  end

  def black
    @customers = Customer.where("black = true")
  end

  def black_true
    c = Customer.find_by_phone(params[:customer][:phone])
    if !c.nil?
      customers_black_change(c)
    end
    # flash[:success] = "Пользователь не найден"
    redirect_to black_path
  end

  def black_false
    c = Customer.find(params[:id])
    customers_black_change(c)
    redirect_to black_path
  end

end
