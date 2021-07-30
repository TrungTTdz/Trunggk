program PTTSNTLuyThua;

uses crt;

var
        a:array[1..100000] of byte;
        n,i,t:integer;
        tam1,s,tam2:String;


BEGIN
        clrscr;

        write('Nhap n:');readln(n);

        fillChar(a,SizeOf(a),0); //Gan phan tu cho mang = 0

        write('n=');

        t:=n;

        //Phan tich va gan vao mang
        for i:=2 to t do
        begin
                while(t mod  i= 0) do
                begin
                        t:=t div i;
                        a[i]:=a[i]+1;

                end;

        end;




        tam1:=''; s:=''; tam2:='';

        for i:=2 to n do
        begin


                if(a[i] > 0) then
                begin

                                str(i,tam2);
                                str(a[i],tam1);

                                if(a[i] > 1 ) then
                                s:=s+tam1+'^'+tam2+'.' else
                                s:=s+tam2+'.';

                end;


        end;

        delete(s,length(s),1);

        write(s);




        readln
END.

