# frozen_string_literal: true

# test module for the mixins
module Debug
  def track_object
    "#{self.class.name} (id: #{object_id}): #{name}"
  end
end

# Test object with Debug module
class Phonograph
  include Debug
  include Comparable
  attr_reader :name
  attr_reader :index

  def initialize(name, index)
    @name = name
    @index = index
  end

  def <=>(other)
    index <=> other.index
  end

  def to_s
    "#{@index}: #{@name}"
  end
end

# Test object with Debug module
class EightTrack
  include Debug
  include Comparable
  attr_reader :name
  attr_reader :index

  def initialize(name, index)
    @name = name
    @index = index
  end

  def <=>(other)
    index <=> other.index
  end

  def to_s
    "#{@index}: #{@name}"
  end
end

ph = Phonograph.new('West End Blues', 2)
et = EightTrack.new('Surrealistic Pillow', 17)
et0 = EightTrack.new('Demo', 0)
puts ph.track_object
puts et.track_object

[et, ph, et, et0].sort.each { |value| puts value }
