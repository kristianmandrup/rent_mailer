require "spec_helper"

describe TenantMailer do
  describe "welcome" do
    let(:mail) { TenantMailer.welcome }

    it "renders the headers" do
      mail.subject.should eq("Welcome")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "receipt" do
    let(:mail) { TenantMailer.receipt }

    it "renders the headers" do
      mail.subject.should eq("Receipt")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "landlord_contact" do
    let(:mail) { TenantMailer.landlord_contact }

    it "renders the headers" do
      mail.subject.should eq("Landlord contact")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "first_warning" do
    let(:mail) { TenantMailer.first_warning }

    it "renders the headers" do
      mail.subject.should eq("First warning")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "second_warning" do
    let(:mail) { TenantMailer.second_warning }

    it "renders the headers" do
      mail.subject.should eq("Second warning")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "last_warning" do
    let(:mail) { TenantMailer.last_warning }

    it "renders the headers" do
      mail.subject.should eq("Last warning")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
