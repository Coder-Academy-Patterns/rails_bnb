class HostEnquiryMailer < ApplicationMailer
  def ask_about_listing(listing, message, from_email)
    @listing = listing
    @host = listing.host
    @message = message
    @from_email = from_email
    mail(to: @host.email, subject: "Enquiry about listing #{listing.title}")
  end
end
