def equilateral(sides):
    return __is_valid_triangle(sides) and sides[0] == sides[1] and sides[0] == sides[2]

def isosceles(sides):
    return __is_valid_triangle(sides) and (sides[0] == sides[1] or sides[0] == sides[2] or sides[1] == sides[2])

def scalene(sides):
    return __is_valid_triangle(sides) and sides[0] != sides[1] and sides[0] != sides[2] and sides[1] != sides[2]

def __are_all_sides_positive(sides):
    return sides[0] > 0 and sides[1] > 0 and sides[2] > 0

def __is_triangle_inequality_satisfied(sides):
    return (sides[0] + sides[1] >= sides[2]) and (sides[1] + sides[2] >= sides[0]) and (sides[0] + sides[2] >= sides[1])

def __is_valid_triangle(sides):
    return __are_all_sides_positive(sides) and __is_triangle_inequality_satisfied(sides)
