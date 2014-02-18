class Resize2x

  require 'rmagick'

  attr_accessor :image, :outdir

  def initialize(file, outdir)
    @image  = Magick::ImageList.new(file).first
    @outdir = outdir
  end

  def resize_x2_to_half
    self.image.scale!(0.5)
    self.image.write(self.new_file_path)
  end

  def new_file_name
    self.image.filename.gsub('@2x', '')
  end

  def new_file_path
    File.expand_path(self.new_file_name, self.outdir)
  end

  def self.get_2x_images(outdir='./')
    files = Dir.glob('*@2x*')
    files.collect{ |file| Resize2x.new(file, outdir)}
  end

end
