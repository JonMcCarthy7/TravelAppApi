class User < ApplicationRecord
  has_many :trips
  has_many :memories, as: :memorable, dependent: :destroy
end
