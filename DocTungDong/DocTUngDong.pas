program DocTungDong;
uses crt;
const
        INPUT = 'DocTungDong\Input.txt';
        OUTPUT = 'DocTungDong\OUTPUT.txt';
var
        f:text;
        i,j,dem:integer;
        n:integer;
        a:array[1..100] of integer;

BEGIN
        clrscr;
         assign(f,INPUT);
         reset(f);
          i:=1;
          readln(f,n);
          while not(EOF) do
          begin

                while not(EOLn) do
                begin
                        read(f,a[i]);
                        inc(i);
                end;
                readln(f);

          end;



        close(f);
        for i:=1 to n do write(a[i]:3);

        readln

END.
