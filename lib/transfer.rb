class Transfer

attr_accessor :status, :sender, :receiver, :amount

def initialize(sender, receiver, amount)
@status = "pending"
@amount = amount
end



end
