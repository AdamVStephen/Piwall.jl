module Piwall

using Compose

greet() = print("Hello World Again! And Again !")

export Wall, Screen 

struct Screen
    xres::Integer
    # Todo : extend this to use Units and Measurements uncertainty
    xsize::Float32
    xbezel_left::Float32
    xbezel_right::Float32
    yres::Integer
    ysize::Float32
    ybezel_left::Float32
    ybezel_right::Float32
    manufacturer::String
    model::String
    
    # Ctors
    Screen(x::Integer, y::Integer) = new(x, 0.0, 0.0, 0.0, y, 0.0, 0.0, 0.0, "Manufacturer undefined", "Model undefined")
end

# Todo: extension for non-planar walls
struct Wall 
    screens::Array{Screen}
end

function render(s::Screen)
    picture = compose(context(), rectangle(0,0,s.xres, s.yres), fill="tomato")
end


end # module
