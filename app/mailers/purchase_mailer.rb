class PurchaseMailer < ActionMailer::Base
  default from: 'One Month Stripe Payments <payments@onemonth.com>'
  layout 'purchase_mailer'

  def purchase_receipt(purchase)
    @purchase = purchase
    mail to: purchase.email, subject: 'Thank you for your purchase!'
  end
end