class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :referrale_code

  def create_affiliate_code
    require 'securerandom'
    self.affiliate_code = SecureRandom.random_number(36**12).to_s(36).rjust(12, "0");
  end

  before_create do
    create_affiliate_code
  end
end
