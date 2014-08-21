class ItemRequestMailer < ActionMailer::Base

  def request_email(item_request)
    @item_request = item_request
    mail(to: 'wendygsv@gmail.com', from: 'wendygsv@gmail.com',
         subject: 'New offer from Sell_It')
  end
end
