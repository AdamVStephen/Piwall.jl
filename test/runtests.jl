using Test
using Piwall

top_left = Piwall.Screen(1920,1080)
top_right = Piwall.Screen(1920,1080)
bottom_left = Piwall.Screen(1920,1080)
bottom_right = Piwall.Screen(1920,1080)

wall_2x2 = Piwall.Wall([top_left, top_right, bottom_left, bottom_right])

println("Piwall tests completed.:wall_2x2")

mypi = 3.1415926535

@test mypi == 3.1415926535

@test mypi ≈ 3.141592654

@test isapprox(mypi, 3.14159265)