class Customer < ApplicationRecord
  enum sex: { man: 0, woman: 1}
  
end
