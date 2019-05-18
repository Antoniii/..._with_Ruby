def integrate(x0, x1, dx=(x1-x0)/1e6)
	x = x0
	sum = 0
	loop do 
		y = yield(x)
		sum += dx * y
		x += dx
		break if x > x1		
	end
	sum
end

def f(x)
	x**2
end

z = integrate(0.0, 3.0) {|x| f(x)}

puts z