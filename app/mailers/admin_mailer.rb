class AdminMailer < ApplicationMailer
  default from: 'audebertadrien.pro@gmail.com'

    def order_paid(order_paid)
        @order = order_paid 
        @item_order = ItemOrder.where("order_id = ?", @order.id)
        @user = User.find(order_paid.user_id)
        email_with_name = "adrien66.pub@gmail.com"
        mail(to: email_with_name, subject: 'Order Paid !')
      end
end
