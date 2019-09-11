class SecretSantaMailer < ApplicationMailer
  def give_name(giver, recipient, event)
    @giver = giver
    @recipient = recipient
    @event = event
    mail(to: @giver.email, subject: "Secret Santa")
  end
end
