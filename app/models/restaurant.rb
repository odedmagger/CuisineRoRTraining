class Restaurant < ApplicationRecord

  belongs_to :cuisine_type, optional: true
end
