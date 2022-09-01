class GroupUser < ApplicationRecord
  belongs_to :user
  belongs_to :group
  enum role: { general: 0, owner: 1 }
end
