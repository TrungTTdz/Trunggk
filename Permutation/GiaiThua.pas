program Permutation;
uses crt;
const
        INPUT = 'INPUT.txt';
        OUTPUT = 'OUTPUT.txt';
var
        k,l,i,n,r:integer;
        a:array[1..100] of integer;
        f:text;

procedure Swap(var a,b:integer);
var t:integer;
BEGIN
        t:=a;
        a:=b;
        b:=t;

END;
BEGIN
        clrscr;


        assign(f,INPUT);
        reset(f);
        read(f,n);
        close(f);

        assign(f,OUTPUT);
        rewrite(f);

        for i:=1 to n do a[i]:=i;
        repeat
                for i:=1 to n do write(f,a[i]:3);
                writeln(f);

                i:=n-1;
                while (i>0) and (a[i] > a[i+1]) do dec(i);

                if(i>0) then
                begin
                        k:=n;
                        while (a[k] < a[i]) do dec(k);

                        swap(a[k],a[i]);

                        l:=i+1;
                        r:=n;

                        while ( l<r) do
                        begin
                                swap(a[l],a[r]);
                                inc(l);
                                dec(r);

                        end;


                end;


        until i= 0;



        close(f);







        readln

END.
