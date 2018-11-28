class Memory < ApplicationRecord
  belongs_to :memorable, polymorphic: true
end
