#require 'pry'

class Mp3_importer 
  attr_accessor :path 
  @@all = []
  
  def initialize(path)
    @name = path 
    @@all << self 
  end 
  
  def files
    Dir.entries(@path).select {|file| file.include?(".mp3")}
  end 
  
  def import 
    files.each do |file|
      Song.new_by_filename(file)
    end 
  end 
  
  def self.all 
    @@all 
  end 
  
  
end 
  