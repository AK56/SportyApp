class Organization < ApplicationRecord
    serialize :address, Hash
end
