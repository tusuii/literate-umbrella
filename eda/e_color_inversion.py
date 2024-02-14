# invert colors

# Must return a tuple.
# 255 is the max value of a single color channel.


def color_invert(rgb):
	res = tuple( 255 - i for i in rgb)
	return res
	

# Test cases to check
print(color_invert((165, 170, 119)))  #90, 85, 136))
print(color_invert((165, 170, 136)))  #90, 85, 119))
print(color_invert((165, 170, 153)))  #90, 85, 102))
print(color_invert((165, 170, 170)))  #90, 85, 85))
print(color_invert((165, 170, 187)))  #90, 85, 68))
print(color_invert((165, 170, 204)))  #90, 85, 51))
print(color_invert((165, 170, 221)))  #90, 85, 34))
print(color_invert((165, 170, 238)))  #90, 85, 17))
print(color_invert((165, 180, 0)))  #90, 75, 255))
print(color_invert((165, 180, 17)))  #90, 75, 238))
print(color_invert((165, 180, 34)))  #90, 75, 221))
print(color_invert((165, 180, 51)))  #90, 75, 204))
print(color_invert((165, 180, 68)))  #90, 75, 187))
print(color_invert((165, 180, 85)))  #90, 75, 170))
print(color_invert((165, 180, 102)))  #90, 75, 153))
print(color_invert((0, 0, 0)))  #255, 255, 255))
print(color_invert((0, 0, 17)))  #255, 255, 238))
print(color_invert((0, 0, 34)))  #255, 255, 221))
print(color_invert((0, 0, 51)))  #255, 255, 204))
print(color_invert((0, 0, 68)))  #255, 255, 187))
print(color_invert((240, 250, 153)))  #15, 5, 102))
print(color_invert((240, 250, 170)))  #15, 5, 85))
print(color_invert((240, 250, 187)))  #15, 5, 68))
print(color_invert((240, 250, 204)))  #15, 5, 51))
print(color_invert((240, 250, 221)))  #15, 5, 34))
print(color_invert((240, 250, 238)))  #15, 5, 17))
print(color_invert((255, 255, 255)))  #0, 0, 0))
print(color_invert((240, 180, 136)))  #15, 75, 119))
print(color_invert((240, 180, 153)))  #15, 75, 102))
print(color_invert((240, 180, 170)))  #15, 75, 85))
print(color_invert((240, 180, 187)))  #15, 75, 68))
print(color_invert((240, 180, 204)))  #15, 75, 51))
print(color_invert((240, 180, 221)))  #15, 75, 34))
print(color_invert((240, 180, 238)))  #15, 75, 17))
print(color_invert((240, 190, 0)))  #15, 65, 255))
print(color_invert((240, 190, 17)))  #15, 65, 238))
print(color_invert((240, 190, 34)))  #15, 65, 221))
print(color_invert((240, 190, 51)))  #15, 65, 204))
print(color_invert((240, 190, 68)))  #15, 65, 187))
print(color_invert((240, 190, 85)))  #15, 65, 170))
print(color_invert((240, 190, 102)))  #15, 65, 153))
print(color_invert((240, 190, 119)))  #15, 65, 136))
print(color_invert((240, 190, 136)))  #15, 65, 119))
print(color_invert((240, 190, 153)))  #15, 65, 102))
print(color_invert((240, 190, 170)))  #15, 65, 85))
print(color_invert((240, 190, 187)))  #15, 65, 68))
print(color_invert((240, 190, 204)))  #15, 65, 51))
print(color_invert((240, 190, 221)))  #15, 65, 34))
print(color_invert((240, 190, 238)))  #15, 65, 17))
print(color_invert((240, 200, 0)))  #15, 55, 255))
print(color_invert((240, 200, 17)))  #15, 55, 238))
print(color_invert((240, 200, 34)))  #15, 55, 221))
print(color_invert((240, 200, 51)))  #15, 55, 204))
print(color_invert((240, 200, 68)))  #15, 55, 187))
print(color_invert((240, 200, 85)))  #15, 55, 170))
print(color_invert((240, 200, 102)))  #15, 55, 153))
print(color_invert((240, 200, 119)))  #15, 55, 136))
print(color_invert((240, 200, 136)))  #15, 55, 119))
print(color_invert((240, 200, 153)))  #15, 55, 102))
print(color_invert((240, 200, 170)))  #15, 55, 85))