module BhaskarasHelper

    def x1()
  	  a=@bhaskara.a.to_c
      b=@bhaskara.b.to_c
      c=@bhaskara.c.to_c
      if (a == nil) || (a == 0) || (b == nil) || (c == nil)
         x1 = ""
      else   
  	     x1 = (-b+(b**2-4*a*c)**(0.5))/(2*a)
      end   
  	  return x1
    end

    def x2()
      a=@bhaskara.a.to_c
      b=@bhaskara.b.to_c
      c=@bhaskara.c.to_c
      if (a == nil) || (a == 0) || (b == nil) || (c == nil)
         x2 = ""
      else   
  	     x2 = (-b-(b**2-4*a*c)**(0.5))/(2*a)
      end   
  	  return x2
    end

end
