class CustomersController < ApplicationController
  def home
    @customers = Customer.where("black = false")
  end

  def black
    @customers = Customer.where("black = true")
  end

  def black_true
    c = Customer.find_by_phone(params[:customer][:phone])
    if !c.nil?
      c.black = true
      c.save
    end
    # flash[:success] = "Пользователь не найден"
    redirect_to black_path
  end

  def black_false
    c = Customer.find(params[:id])
    c.black = false
    c.save
    redirect_to black_path
  end
end
