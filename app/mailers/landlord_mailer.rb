class LandlordMailer < AsyncMailer
  include BaseMailer

  protected

  def self.mailer_list
    %i{welcome 
      receipt 
      contact_request 
      first_warning 
      second_warning 
      expired 
      contract
      change_lock_service_offer
      legal_advice
    }
  end
end
