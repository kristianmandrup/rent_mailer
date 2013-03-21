class TenantMailer < AsyncMailer
  include BaseMailer

  def self.mailer_list
    %i{welcome 
      receipt 
      landlord_contacts
      first_warning 
      second_warning 
      last_warning
      expired 
      contract
      legal_advice
    }
  end  
end
