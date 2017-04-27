class Doctor < ActiveRecord::Base
has_many :patients

  validates_presence_of :license_number
  validates_format_of :email, :with => (/^([^@\s]+)@((gmail)\.+[a-z]{2,})$/i), :multiline => true
  validates :phone_number ,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 11, :maximum => 11 }

end
