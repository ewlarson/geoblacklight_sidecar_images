class SidecarImageStateMachine
  include Statesman::Machine

  state :initialized, initial: true
  state :queued
  state :processing
  state :succeeded
  state :failed
  state :placeheld

  # Queued => Background Job Init
  # Processing => Failed, Placeheld, Succeeded
  transition from: :initialized,  to: :queued
  transition from: :queued,       to: [:queued, :processing]
  transition from: :processing,   to: [:queued, :processing, :placeheld, :succeeded, :failed]
  transition from: :placeheld,    to: [:queued, :processing]
  transition from: :failed,       to: [:queued, :processing]
  transition from: :succeeded,    to: [:queued, :processing]
end
