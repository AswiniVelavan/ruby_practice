class Attendee
  attr_reader :height, :pass_id
  
  def initialize(height)
    @height = height
    @pass_id = nil  
  end
  
  def issue_pass!(pass_id)
    @pass_id = pass_id  
  end

  def revoke_pass!
  @pass_id = false   
  end  
end
  
if $PROGRAM_NAME == __FILE__
  attendee = Attendee.new(106)
  puts attendee.height
  puts attendee.pass_id
  attendee.issue_pass!(42)
  puts attendee.pass_id
  attendee.revoke_pass!
  puts attendee.pass_id
end
