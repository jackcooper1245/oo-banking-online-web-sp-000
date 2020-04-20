class Transfer

attr_accessor :status, :sender, :receiver, :amount, :bank_account

def initialize(sender, receiver, amount)
@status = "pending"
@amount = amount
@sender = sender
@receiver = receiver
end

def valid?
  @sender.bank_account.valid? && @receiver.bank_account.valid?
end

end
