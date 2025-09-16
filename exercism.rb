#Amusement Park Improvements!!!!!!!!!!!

class Attendee
  
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  # Do not edit above methods, add your own methods below.

  def has_pass?
   !!@pass_id 
  end

  def fits_ride?(ride_minimum_height)
   @height >= ride_minimum_height   
  end

  def allowed_to_ride?(ride_minimum_height)
     @pass_id != nil && @height >= ride_minimum_height
  end 
end

  if $PROGRAM_NAME == __FILE__
  Attendee.new(100).has_pass?
  Attendee.new(140).fits_ride?(100)  
  attendee = Attendee.new(100)
  attendee.issue_pass!(42)
  attendee.allowed_to_ride?(120)
  end
