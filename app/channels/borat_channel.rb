class BoratChannel < ApplicationCable::Channel
  # Called when the consumer has successfully
  # # become a subscriber of this channel.
  def subscribed
    stream_from "borat_#{params[:room]}"
  end

  def receive(data)
    ActionCable.server.broadcast("borat_#{data['room']}", data)
  end

  def unsubscribed
    stop_all_streams
    # Any cleanup needed when channel is unsubscribed
  end
end
