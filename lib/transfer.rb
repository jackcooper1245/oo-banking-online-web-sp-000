class Transfer

attr_accessor :status, :sender, :receiver

def initialize(sender, receiver, amount = nil)
@status = "pending"
@sender = bank_account
@receiver = []
end



end
