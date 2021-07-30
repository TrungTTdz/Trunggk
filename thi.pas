uses crt;
var a:array[1..100] of integer;
    b:array[1..100] of boolean;

    n,i,j:integer;
begin
    clrscr;
    readln(n);
    fillchar(b,sizeof(b),true);
    for i:=1 to n do readln(a[i]);
    for i:=1 to n do
     for j:=n downto i+1 do 
    begin
        if a[i]=a[j] then b[i]:=false;
    end;
    for i:=1 to n do if b[i] then write('  ',a[i]);
end.