class Transfer

attr_accessor :status, :sender, :receiver, :amount, :bank_account

def initialize(sender, receiver, amount)
@status = "pending"
@amount = amount
@sender = sender
@receiver = receiver
end

def valid?
  @sender.valid? && @receiver.valid?
end

def execute_transaction
  if valid?
  @sender.balance -= @amount
  @receiver.balance += @amount
  @status = "complete"
else
  return "Transaction rejected. Please check your account balance."
  status = "rejected"
end
end



end
