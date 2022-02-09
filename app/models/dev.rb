class Dev < ActiveRecord::Base
has_many :freebies  
has_many :companies, through: :freebies

def received_one?(item_name)
     self.freebies.map do |f|
        f.item_name == item_name
     end
end

def give_away(dev, freebie)
# create or find by?

# unless 
# end
end
end
