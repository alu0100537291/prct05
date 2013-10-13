def mcm(u, v)
   u, v = u.abs, v.abs
   
   (u / mcd(u,v)) * v
end