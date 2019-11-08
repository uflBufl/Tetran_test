module CustomersHelper
  def customers_black_change(customer)
    customer.black = !customer.black
    customer.save
  end
end
