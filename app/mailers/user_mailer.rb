class UserMailer < ApplicationMailer


  def order_receipt(order)
    @user = order.user
    @lis = order.line_items
    mail(to: 'roger@whiteshark.ca', subject: "Your Order Was Shipped Succesfully!! Order ID:" + order.id.to_s)
  end

end
