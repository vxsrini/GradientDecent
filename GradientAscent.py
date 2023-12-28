import numpy as np
import math 


x0 = -1
y0 = 1
delta = .1
iter = 1
total_iter = 100

def gradient_ascent (x_old, y_old, delta, iter, total_iter):
    iter = iter + 1
    print(iter)
    x_dir = 3 * x_old * x_old - y_old
    y_dir = -x_old
    uv = math.sqrt(x_dir*x_dir + y_dir*y_dir)
    x_dir_u = x_dir / uv
    y_dir_u = y_dir / uv
    x_new = x_old + (x_dir_u * delta)
    y_new = y_old + (y_dir_u * delta)
    if (iter < total_iter):
        #print (round(x_new, 2), ",", round(y_new, 2), ",", round((x_new*x_new - y_new*y_new),2))
        print (round(x_new, 2), ",", round(y_new, 2), ",", round((x_new*x_new*x_new - x_new * y_new)))
        gradient_ascent(x_new, y_new, delta, iter, total_iter)
    #if (iter == total_iter):
     #   return x_new, y_new
    #print(x_new, y_new)

gradient_ascent(x0, y0, delta, iter, total_iter)   
#print(xf, yf)






#def grad_ascend()