class Classified < ActiveRecord::Base
 validates :title, :presence => true
 validates :description, :presence => true
 validates :location, :presence => true
 validates :expiredate, :presence => true
 validates :phoneno, :numericality => { :only_integer => true}, :length => { :is =>10}
 validates :email_id, :presence => true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :message => "is not valid email"}
end 


