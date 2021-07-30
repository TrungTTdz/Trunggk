program Sub_String;
uses crt;
label endprogram;
const
        INPUT = 'Sub_String\INPUT.txt';
        OUTPUT = 'Sub_String\OUTPUT.txt';
var
        a:array[1..10] of integer;
        i,j,n,k:byte;
        f:text;
BEGIN
        clrscr;

        assign(f,INPUT);
        reset(f);
        read(f,n,k);

        close(f);

        if ( n < k) then goto endprogram;

        for i:=1 to k do a[i]:=i;

        assign(f,OUTPUT);
        rewrite(f);

        repeat
                for i:=1 to k do write(f,a[i]);
                writeln(f);

                while (i > 0) and (a[i] = n-k+i) do dec(i);

                if (i > 0) then
                begin
                        inc(a[i]);
                        for j:=i+1 to k do a[j]:=a[j-1]+1;

                end;


        until i = 0;



        close(f);
        endprogram:

        readln

END.