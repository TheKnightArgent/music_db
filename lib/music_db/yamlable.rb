require 'yaml'

module Music_DB::YAMLable
  # Export to YAML format
    def to_yaml
      if self.respond_to? :attributes
        YAML.dump(attributes)
      else
        raise "Hey, #{self.class} needs some attributes!"
      end
    end

  # Writes YAML info to file
  # @param [String] filename Filename to be created.  If nil, use 'unknown'
  def dump(filename=nil)
    filename ||= 'unknown'

    File.write("#{filename}.yml", to_yaml)
  end

end