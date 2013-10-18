def gcd(u, v)
  u, v = u.abs, v.abs
  while v != 0 #corregido el  v == 0 para que funcione
    u, v = v, u % v
  end
  u
end
