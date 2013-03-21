require "spec_helper"

describe LandlordMailer do
  describe "welcome" do
    let(:mail) { LandlordMailer.welcome }

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
    let(:mail) { LandlordMailer.receipt }

    it "renders the headers" do
      mail.subject.should eq("Receipt")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "tenant_contact" do
    let(:mail) { LandlordMailer.tenant_contact }

    it "renders the headers" do
      mail.subject.should eq("Tenant contact")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "first_warning" do
    let(:mail) { LandlordMailer.first_warning }

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
    let(:mail) { LandlordMailer.second_warning }

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
    let(:mail) { LandlordMailer.last_warning }

    it "renders the headers" do
      mail.subject.should eq("Last warning")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "contracts" do
    let(:mail) { LandlordMailer.contracts }

    it "renders the headers" do
      mail.subject.should eq("Contracts")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "extra_services" do
    let(:mail) { LandlordMailer.extra_services }

    it "renders the headers" do
      mail.subject.should eq("Extra services")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "legal" do
    let(:mail) { LandlordMailer.legal }

    it "renders the headers" do
      mail.subject.should eq("Legal")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
