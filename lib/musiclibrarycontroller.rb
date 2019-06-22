class MusicLibraryController
  attr_accessor :path
  def initialize(path = "./db/mp3s")
    @path = path
    controller = MusicImporter.new(path)
    controller.import
  end
end
