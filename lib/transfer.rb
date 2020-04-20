class Transfer

attr_accessor :status, :sender, :receiver, :amount, :bank_account
@@transfers = 0

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
  if @@transfers < 1
  @sender.balance -= @amount
  @receiver.balance += @amount
  @status = "complete"
  @@transfers += 1
end
end

end
