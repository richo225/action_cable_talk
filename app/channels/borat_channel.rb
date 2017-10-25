class BoratChannel < ApplicationCable::Channel  
  # Called when the consumer has successfully
  # become a subscriber of this channel.
  def subscribed
    stream_from 'borat_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
