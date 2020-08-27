double = [5, 10, 15, 4, 9]

index = 0

while index < double.length
    double[index] = double[index].to_i * 2
    index += 1
end

p double