class User < ApplicationRecord
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true, uniqueness: true, format: { with: /\w+@\w+\.{1}[a-zA-Z]{2,}/, message: "Veuillez renseigner une adresse mail valide." }
	validates :password, presence: true, length: { minimum: 6 }
	
	belongs_to :city, optional: true
	has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
	has_many :comments
	has_many :likes
	has_many :comment_of_comments
  has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"
  has_secure_password
end
