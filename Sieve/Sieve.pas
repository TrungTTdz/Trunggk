 {$B-}

program Sieve;
uses crt;
const
        INPUT = 'Sieve\INPUT.txt';
        OUTPUT = 'Sieve\OUTPUT.txt';

var
        f:text;
        prime:array[1..200000] of boolean;
        a,b,boi,i:longint;



BEGIN

        clrscr;


        assign(f,INPUT);
        reset(f);
        read(f,a);  read(f,b);
        close(f);

        for i:=2 to b do prime[i]:=true;
        i:=2;

        while ( i <= trunc(sqrt(b))) do
        begin
                while(prime[i] = false) do inc(i);
                boi:=2;
                while(i*boi <= b) do
                begin
                        prime[i*boi]:=false;
                        inc(boi);

                end;

                inc(i);

        end;




        assign(f,OUTPUT);
        rewrite(f);

        for i:=a to b do
        if(prime[i] ) then writeln(f,i);



        close(f);


        readln

END.
