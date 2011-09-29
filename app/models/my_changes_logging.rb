class MyChangesLogging < ActiveRecord::Base
  belongs_to :logable, :polymorphic => true
end
