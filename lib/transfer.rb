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
if self.!valid?
  @status = "rejected"
  return "Transaction rejected. Please check your account balance."
else
  @sender.balance -= @amount
  @receiver.balance += @amount
  @status = "complete"
end

def reverse_transfer
  if @status == "complete"
  @receiver.balance -= @amount
  @sender.balance += @amount
  @status = "reversed"
end
end

end
