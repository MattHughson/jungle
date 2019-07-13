class OrderMailer < ApplicationMailer


  default from: "no-reply@jungle.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.order_confirmation.subject
  #
  def order_confirmation(order)
    @order = order
    @greeting = "Hi"

    mail(to: @order.email, subject: "order confirmtion #{order.id}")
  end
end
