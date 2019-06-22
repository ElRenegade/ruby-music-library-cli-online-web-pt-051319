class MusicLibraryController
  attr_accessor :path
  def initialize(path = "./db/mp3s")
    @path = path
    controller = MusicImporter.new(path)
    controller.import
  end

  def call
    input = ''

    while input != 'exit'
      puts "Welcome to your music library!"
      puts "To quit, type 'exit'."

      input = gets.chomp
    end

  end
end
