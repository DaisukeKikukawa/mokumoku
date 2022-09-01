class Group < ApplicationRecord
  has_many :chats, dependent: :destroy
  has_many :group_users
  has_many :users, through: :group_users

  validates :name, presence: true
  validates :introduction, presence: true
end
