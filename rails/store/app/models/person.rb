class Person < ActiveRecord::Base
  belongs_to :purcahse
  attr_accessible :name, :phone, :purcahse_id
end
