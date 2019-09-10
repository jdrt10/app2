class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  has_many :annoucements, dependent: :destroy,
                          class_name: "Announcement",
                          foreign_key: "annoucement_id"
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
