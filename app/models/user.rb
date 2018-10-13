class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum status: [:pending, :active, :disable]
  enum role: [:user, :admin]
  devise  :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :invitable

  def avatar
    "gravatar/gravatar_#{(1..15).to_a.sample(1).first}.png"
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def password_required?
    return false if new_record?
    super
  end
end
