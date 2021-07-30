program Random;
uses crt;
var
        A,B,C:byte;

procedure Check(a,b,c:byte);
BEGIN
        if((a = 1) and (b=1) and(c=1)) or ((a =0) and (b =0) and (c =0)) then
        writeln('Ba ban hoa nhau:');

        //Xet a
        if( b = c) and (b<>a) then
                if(a=1) or (a =0) then
                write('Ban A thang:');
        //Xet b
          if( a = c) and (c<>b) then
                if(b =1) or (b =0) then
                write('Ban B thang:');

          if( a = b) and (a<>c) then
                if(c=1) or (c =0) then
                write('Ban C thang:');



END;
BEGIN
        clrscr;

        //Sinh so ngau nhien trong chuong trinh

        randomize;

        //Random cho tu 0-n-1
        A:=random(1);
        A:=A mod 2;
        B:=random(10);
        B:=B mod 2;
        C:=random(10);
        C:=C mod 2;

        Check(A,B,C);

        readln

END.