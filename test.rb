require 'rmagick'
include Magick

size = 64
# geom = "#{size}x#{size}"

img = Image.read("./panels/1.1.png")[0]
img.change_geometry!("64x64") { |cols, rows| img.thumbnail! cols, rows }

bg = Image.new(size, size)# { self.background_color = 'gray75' }
bg = bg.composite(img, CenterGravity, OverCompositeOp)
#bg = bg.raise(3,3)

# white_bg = Image.new(size+50, size+50) {self.background_color = 'white'}
# white_bg = white_bg.composite(bg, CenterGravity, OverCompositeOp)

# thumbnail = white_bg.composite(img, CenterGravity, OverCompositeOp)

bg.write('./panels/_1.1.png')
