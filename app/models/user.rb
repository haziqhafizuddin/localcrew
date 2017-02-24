class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_uniqueness_of :username
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true
  has_many :experiences
  accepts_nested_attributes_for :experiences

  
end
