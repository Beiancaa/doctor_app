class Patient < ActiveRecord::Base
  belongs_to :doctor
  
    validates_presence_of :first_name
    validates_presence_of :last_name
    validates_presence_of :doctor_id
    validates_format_of :email, :with => (/^([^@\s]+)@((gmail)\.+[a-z]{2,})$/i), :multiline => true
    validates :phone ,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 11, :maximum => 11 }
end
