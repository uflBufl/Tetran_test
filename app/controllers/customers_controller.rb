class CustomersController < ApplicationController
  include CustomersHelper
  # skip_before_filter :verify_authenticity_token, :only => [:update]

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
      flash[:success] = "Покупатель добавлен в чёрный список"
    else
      flash[:danger] = "Покупатель не найден"
    end
    redirect_to black_path
  end

  def black_false
    c = Customer.find(params[:id])
    customers_black_change(c)
    redirect_to black_path
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update_attributes(customer_params)
      # redirect_to root_path
      flash[:success] = "Изменение успешно"
      redirect_to root_path
    else
      redirect_to edit_customer_path(@customer)
      flash[:danger] = "Не подходит"
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :phone, :description)
  end

end
