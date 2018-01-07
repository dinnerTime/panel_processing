require 'rmagick'
include Magick

def scale_up(path)
	puts path
	img = Image.read(path)
	puts img
	# img.change_geometry!("64x64") { |cols, rows| img.thumbnail! cols, rows }
	# img.blue_shift

	bg = Image.new(size, size)
	bg = bg.composite(img, CenterGravity, OverCompositeOp)

	#bg.write('./panels/_1.1.png')
end

path = "./panels"
d = Dir.entries(path).each do |f|
	 scale_up "#{path}/#{f}"
end
exit