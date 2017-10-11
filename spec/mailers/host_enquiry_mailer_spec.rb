require "rails_helper"

RSpec.describe HostEnquiryMailer, type: :mailer do
  let (:host) {
    User.new(email: 'host@email.com', password: 'password', password_confirmation: 'password')
  }
  let (:listing) {
     Listing.new host: host, title: 'White House', street_address: '1600 Pennsylvania Avenue NW', city: 'Washington, DC', country_code: 'us'
  }

  it 'should send listing enquiry' do
    from_email = "sender@example.com"
    message = "Hi, I want to know more."
    mail = HostEnquiryMailer.ask_about_listing(listing, message, from_email)
    expect {
      mail.deliver_now
    }.to change { ActionMailer::Base.deliveries.count }.by(1)
    
    expect(mail.subject).to eq('Enquiry about listing White House')
    expect(mail.to).to eq([host.email])
    expect(mail.body.encoded).to match(from_email)
  end
end
