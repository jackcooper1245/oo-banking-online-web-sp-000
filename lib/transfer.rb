class Transfer

attr_accessor :status, :bank_account, :sender, :receiver

def initialize(sender, receiver, amount = nil)
@status = "pending"
end



end
