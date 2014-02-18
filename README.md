# resize2x

XXX@2x.png convert to XXX.png (width, height half)

# Install

	gem install resize2x

# Usage
	$ ls
	hoge@2x.jpg icon@2x.png

	$ resize2x
	(1/2) resized: /Users/keitarou/Dropbox/ruby/rmagick/resize2x/test2/hoge.jpg,  512x512
	(2/2) resized: /Users/keitarou/Dropbox/ruby/rmagick/resize2x/test2/icon.png,  512x512

	$ ls
	hoge.jpg    hoge@2x.jpg icon.png    icon@2x.png

	$ identify hoge.jpg hoge@2x.jpg icon.png icon@2x.png
	hoge.jpg JPEG 512x512 512x512+0+0 8-bit sRGB 14KB 0.000u 0:00.000
	hoge@2x.jpg[1] JPEG 1024x1024 1024x1024+0+0 8-bit sRGB 31.4KB 0.000u 0:00.000
	icon.png[2] PNG 512x512 512x512+0+0 8-bit sRGB 22.8KB 0.000u 0:00.000
	icon@2x.png[3] PNG 1024x1024 1024x1024+0+0 8-bit sRGB 64.5KB 0.000u 0:00.000

## Options

- -o outdir

## Copyright
Copyright© keitarou.oonishi
http://www.absolute-keitarou.net/blog
