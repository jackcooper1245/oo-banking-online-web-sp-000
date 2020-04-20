class Transfer

attr_accessor :status, :sender, :receiver, :amount

def initialize(sender, receiver, amount)
@status = "pending"
@amount = amount
@sender = sender
@receiver = receiver
end

def valid?
  bank_account.valid? << self
end

end
