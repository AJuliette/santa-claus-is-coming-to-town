class AssignSecretSanta
  def initialize(event)
    @event = event
    @participants = event.participants.to_a
  end

  def perform
    @participants.each_with_index do |participant, index|
      giver = participant
      recipient = @participants[index - 1]
      SecretSantaMailer.give_name(giver, recipient, @event).deliver_now
    end
  end
end
