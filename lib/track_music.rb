class MusicTracker

  def initialize
    @listened_to_tracks = []
  end
  
  def add_listened_to_track(track)
    fail 'Invalid input, please enter text!' if !track.is_a? String
    @listened_to_tracks << track
  end

  def displays_listened_to_tracks
    fail 'No tracks to display!' if @listened_to_tracks.empty?
    @listened_to_tracks.join(', ')
  end
end