# Track Music Challenge

## 1. Describe the Problem

User story:
As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

```ruby
class MusicTracker
  def initialize
    # Instance variable containing a list where tracks will be stored
  end

  def add_listened_to_track(track)
    # 'track' parameter is a string representing the name of the track
    # Add track to list in initialize method
  end

  def displays_listened_to_tracks
    # Returns the contents in the list in the initialize method
  end
end
```

## 3. Test examples

```ruby
playlist = MusicTracker.new
# Example 1
  playlist.displays_listened_to_tracks # => 'No tracks to display!'


# Example 2
  playlist.add_listened_to_track('Started from the bottom')
  playlist.displays_listened_to_tracks # => 'Started from the bottom'

# Example 3
  playlist.add_listened_to_track('One dance')
  playlist.add_listened_to_track('Love yourz')
  playlist.displays_listened_to_tracks # => 'Started from the bottom', 'One dance', 'Love yourz'
```

## 4. Implement