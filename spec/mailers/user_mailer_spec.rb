require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "new_listing_notification" do
    let(:mail) { UserMailer.new_listing_notification }

    it "renders the headers" do
      expect(mail.subject).to eq("New listing notification")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
