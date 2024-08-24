// Class representing a Song
class Song {
  String title;
  String artist;
  int duration; // Duration in seconds

  Song(this.title, this.artist, this.duration);

  // Method to display song information
  void displaySongInfo() {
    int minutes = duration ~/ 60;
    int seconds = duration % 60;
    
    // Format the time properly with leading zero for seconds
    String formattedTime = '$minutes:${seconds.toString().padLeft(2, '0')}';
    
    print('Song: $title by $artist, Duration: $formattedTime min');
  }
}

// Class representing a Playlist
class Playlist {
  String name;
  List<Song> songs;

  Playlist(this.name, this.songs);

  void addSong(Song song) {
    songs.add(song);
  }

  void removeSong(String title) {
    songs.removeWhere((song) => song.title == title);
  }

  void displayPlaylist() {
    print('--- Playlist: $name ---\n');
    for (var song in songs) {
      song.displaySongInfo();
    }
  }

  int totalDuration() {
    int total = 0;
    for (var song in songs) {
      total += song.duration;
    }
    return total;
  }

  void displayTotalDuration() {
    int total = totalDuration();
    int minutes = total ~/ 60;
    int seconds = total % 60;
    
    // Format the total duration properly with leading zero for seconds
    String formattedTime = '$minutes:${seconds.toString().padLeft(2, '0')}';
    
    print('\nTotal duration of $name: $formattedTime min');
  }
}

// Class representing a Music Festival
class MusicFestival {
  String name;
  List<Playlist> playlists;

  MusicFestival(this.name, this.playlists);

  void addPlaylist(Playlist playlist) {
    playlists.add(playlist);
  }

  void displayFestival() {
    print('\n=== Music Festival: $name ===\n');
    for (var playlist in playlists) {
      playlist.displayPlaylist();
      playlist.displayTotalDuration();
      print('');
    }
  }
}

void main() {
  // Creating Song instances
  //Playlist1
  Song song1 = Song('Everything I Own', 'Bread', 187); // 3:07 min
  Song song2 = Song('Wish You Were Here', 'Neck Deep', 249); // 4:09 min
  Song song3 = Song('December', 'Neck Deep', 219); // 3:39 min
  Song song4 = Song('Disenchanted', 'My Chemical Romance', 295); // 4:55 min
  Song song5 = Song('Be Alright', 'Dean Lewis', 197); // 3:17 min
  
  //Playlist2
  Song song6 = Song('This Side of Paradise', 'Coyote Theory', 243); // 4:03 min
  Song song7 = Song('If You Love Her', 'Forest Blakk', 216); // 3:36 min
  Song song8 = Song('Supermarket Flowers', 'Ed Sheeran', 222); // 3:42 min
  Song song9 = Song('I Like You So Much, Youll Know It', 'Ysabelle Cuevas', 198); // 3:18 min
  Song song10 = Song('Night Changes', 'One Direction', 241); // 4:01 min
  
  //Playlist3
  Song song11 = Song(' Youre Still The One', 'Teddy Swims',193); // 3:13 min
  Song song12 = Song('Until I Found You', 'Stephen Sanchez', 176); // 2:56 min
  Song song13 = Song('To the Bone', 'Pamungkas', 354); // 5:54 min
  Song song14= Song('Wonderful Tonight', 'Eric Clapton', 200); // 3:20 min
  Song song15= Song('Photograph', 'Ed Sheeran', 260); // 4:20 min

  // Creating a Playlist and adding songs
  Playlist playlist1 = Playlist('My Favorite Playlist1', [song1, song2, song3, song4]);
  playlist1.addSong(song5);
  
  Playlist playlist2 = Playlist('My Favorite Playlist2', [song6, song7, song8, song9]);
  playlist2.addSong(song10);
  
  Playlist playlist3 = Playlist('My Favorite Playlist3', [song11, song12, song13, song14]);
  playlist3.addSong(song15);

  // Displaying playlist details
  playlist1.displayPlaylist();
  playlist1.displayTotalDuration();

  playlist2.displayPlaylist();
  playlist2.displayTotalDuration();
  
  playlist3.displayPlaylist();
  playlist3.displayTotalDuration();
  
  // Creating a Music Festival and adding playlists
  MusicFestival festival = MusicFestival('Summer Music Fest', [playlist1,playlist2,playlist3]);

  // Displaying festival details
  festival.displayFestival();
}
