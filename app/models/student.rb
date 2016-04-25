class Student < ActiveRecord::Base
    
    validates :name, presence: true
    validates :grade, presence: true
    
end
