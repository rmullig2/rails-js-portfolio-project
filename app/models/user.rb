class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable
  # Removed the following default modules: :trackable
  TEMP_EMAIL_PREFIX = 'change@me'
  TEMP_EMAIL_REGEX = /\Achange@me/
  devise :database_authenticatable, :registerable, :confirmable, 
         :recoverable, :rememberable, :validatable, :omniauthable
  has_many :reviews
  has_many :books, through: :reviews
  has_one :user_info
  
  def self.find_for_oauth(auth, signed_in_resource = nil)

    identity = Identity.find_for_oauth(auth)

    user = signed_in_resource ? signed_in_resource : identity.user

    if user.nil?
      email_is_verified = auth.info.email && (auth.info.verified || auth.info.verified_email)
      email = auth.info.email if email_is_verified
      user = User.where(:email => email).first if email

      if user.nil?
        user = User.new(
          name: auth.extra.raw_info.name,
          #username: auth.info.nickname || auth.uid,
          email: email ? email : "#{TEMP_EMAIL_PREFIX}-#{auth.uid}-#{auth.provider}.com",
          password: Devise.friendly_token[0,20]
        )
        user.skip_confirmation!
        user.save!
      end
    end
    
    # Associate the identity with the user if needed
    if identity.user != user
      identity.user = user
      identity.save!
    end
    user
  end
  
  def skip_confirmation!
    self.confirmed_at = Time.now
  end
  
  def email_verified?
    self.email && self.email !~ TEMP_EMAIL_REGEX
  end

end
