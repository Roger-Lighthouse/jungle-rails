class UserMailer < ApplicationMailer

  def order_receipt(order)
    @user = order.user
    @lis = order.line_items
    mail(to: 'roger@whiteshark.ca', subject: order.id)
  end

end
