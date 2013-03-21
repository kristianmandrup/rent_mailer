module BaseMailer
  extend ActiveSupport::Concern
  
  included do
    default from: "friendly_rent@yahoo.com"
    before_filter :configure

    layout 'email'  

    # use expose
    expose_cached(:user) { current_user }

    mailers mailer_list
  end

  module ClassMethods
    def mailers *names
      names.each do |name|
        # create mailer method
        mailer name do
          send_email name
        end
      end
    end

    def mailer name, &block
      define_method name do
        self.instance_eval(&block)
      end
    end
  end

  protected

  # fx tenant or landlord
  def root_key
    self.class.to_s.sub(/Controller$/, '').underscore.to_sym
  end    

  def configure
    @site_url = site_url
  end

  def send_email name, options = {}
    mail to: email_name, subject: subject(name, default_opts.merge(options))
  end

  def default_opts
    {name: @user.name}
  end

  def email_name
    "#{@user.name} <#{@user.email}>"
  end

  def subject name, options = {}
    translate "#{name}.subject", options
  end

  def translate key, options = {}
    I18n.t "#{root_key}.mailer.#{key}", options
  end

  def site_url
  	main_app.domain # root_path
  end
end