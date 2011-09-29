module MyLogger

  def self.included(base)
    base.class_eval do
      has_many :my_changes_loggings, :as => :logable
      after_save :log_changes
    end
  end

  def log_changes
    self.my_changes_loggings.create
  end
end