from math import sqrt , pi        
                                                       
def circle_or_square(rad,area):                         
        circumference = 2 * round(pi , 2) * rad        
        perimeter = sqrt(area) * 4                   
        return True if circumference > perimeter else False
                                                
print(circle_or_square(16,625))                         
                                
print(circle_or_square(15,400))            
print(circle_or_square(8,144))          
print(circle_or_square(5,100))    
print(circle_or_square(18,900))      
print(circle_or_square(1,4))
