require 'track_music'

describe MusicTracker do
  playlist = MusicTracker.new

  it 'has nothing to display' do
    expect{playlist.displays_listened_to_tracks}.to raise_error 'No tracks to display!'
  end

  it 'cannot add non-text tracks' do
    expect{playlist.add_listened_to_track(21)}.to raise_error 'Invalid input, please enter text!'
  end
 
  it 'shows a track when a track has been added' do
    playlist.add_listened_to_track('Started from the bottom')
    expect(playlist.displays_listened_to_tracks).to eq 'Started from the bottom'
  end

  it 'shows multiple tracks when multiple tracks have been added' do
    playlist.add_listened_to_track('One dance')
    playlist.add_listened_to_track('Love yourz')
    expect(playlist.displays_listened_to_tracks).to eq 'Started from the bottom, One dance, Love yourz'
  end
end