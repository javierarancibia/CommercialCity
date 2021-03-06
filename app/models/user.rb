class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, 
         :omniauthable, :omniauth_providers => [:facebook]
         
  has_one_attached :avatar
  validates :avatar, content_type: [:png, :jpg, :jpeg]
  has_many :estates
  has_one :profile, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :visits
  after_create :init_profile
  enum role: { guest: 0, regular: 1, admin: 2 }


  def init_profile
    self.build_profile.save(validate: false)
  end

  # def avatar_thumbnail
  #   if avatar.attached?
  #     avatar.variant(resize: '150x150!').processed
  #   else 
  #     image_tag("avatar2.jpg")
  #   end
  # end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.password = Devise.friendly_token[0,20]
    user.first_name = auth.info.name
    end
  end

end
