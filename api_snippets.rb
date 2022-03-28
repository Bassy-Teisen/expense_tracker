class API < Sinatra::Base
    def initialize(ledger: Ledger.new)
        @ledger = ledger
        super() # rest of initialization from Sinatra
    end 
end 

# Later, callers do this:
api = API.new(ledger: Ledger.new)

result = @ledger.record({ 'some' => 'data'})
result.success?        # => a Boolean
result.expense_id      # => a number
result.error_message   # => a string or nil