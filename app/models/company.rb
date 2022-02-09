class Company < ActiveRecord::Base
has_many :freebies 
has_many :devs, through: :freebies

def give_freebie(dev, item_name, value)
    Freebie.create(name: item_name, value: value, dev: dev)
end

def oldest_company
self.founding_year.min
end
end
