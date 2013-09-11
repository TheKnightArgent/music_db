require_relative 'yamlable'

class MusicDB::Artist

  include Music_DB::YAMLable

  attr_accessor :name

#@param [String] name The artist's name
  def initialize(name)
    @name = name
  end

  def attributes
    {name: @name}
  end
end