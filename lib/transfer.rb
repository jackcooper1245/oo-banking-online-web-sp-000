class Transfer

attr_accessor :status, :sender, :receiver, :amount

def initialize(sender, receiver, amount = nil)
@status = "pending"

end



end
