function Hexpods(I,J)
  for x=0:I
    for y=0:J
      if rem(x, 2)==0
        pos=sqrt(2)*x+i*y*sqrt(3);
      end
           if rem(x, 2)==1
        pos=sqrt(2)*x+i*y*sqrt(3)+i*sqrt(3)/2;
      end
      Hexa(pos)
    end
  end
end