module UploadsHelper
  def purchases_sum(purchases)
    total = purchases.sum { |purchase| purchase.item.price * purchase.quantity }
    number_to_currency(total, unit: "R$", separator: ",", delimiter: "")
  end
end
