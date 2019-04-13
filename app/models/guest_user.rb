# Guest User Concern, replacing ostruct guest user, post petergate
# implementation.
class GuestUser < User
  attr_accessor :name, :first_name, :last_name, :email, :id
end
