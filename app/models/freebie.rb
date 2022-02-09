class Freebie < ActiveRecord::Base
belongs_to :devs
belongs_to :companies

def print_details
    "#{self.devs.name} owns a #{self.item_name} from #{self.companies.name}"
end
end
