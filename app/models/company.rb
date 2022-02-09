class Company < ActiveRecord::Base
has_many :freebies 
has_many :devs, through: :freebies

def give_freebie(dev, item_name, value)
    Freebie.create({item_name: item_name, 
    value: value, 
    dev: dev.id, 
    company_id: self.id
})
end

#? method name
def self.oldest_company
self.order(:founding_year).first
#self.minimum(:founding_year)
end
end
#self.all.min_by {|cmpny| cmpny.founding_year }