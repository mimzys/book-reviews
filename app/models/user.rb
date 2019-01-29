class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :avatar, AvatarUploader
  validates_presence_of :email, :encrypted_password, :first_name, :last_name
  validates_length_of :encrypted_password, minimum: 6

  if :avatar
    validates_integrity_of  :avatar
    validates_processing_of :avatar
  end

  def admin?
    role == "admin"
  end
end
