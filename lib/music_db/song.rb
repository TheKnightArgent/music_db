require_relative 'yamlable'

class MusicDB::Song

  include Music_DB::YAMLable

  attr_accessor :title, :artist, :album, :track, :notes

  #@param [string] title
  #@param [string] artist
  #@param [string] album
  #@param [string] track
  def initialize(title, artist, album=nil, track=nil)
    @title = title
    @artist = artist
    @album = album
    @track = track
  end

  # Exports song info to a string
  def to_s
    output = "Title: #{@title}\n"
    output << "Artist: #{@artist}\n"
    output << "Album: #{@album}\n"
    output << "Track: #{@track}\n"

    output
  end


  def attributes
    {title: @title,
     artist: @artist,
     album: @album,
     track: @track
    }
  end
end