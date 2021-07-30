program QuickSortGiamDan;
uses crt;

var
        a:array [1..100] of integer;
        i,n:integer;

procedure QuickSort(left,right:integer);
var
        i,j,pivot,tam:integer;
BEGIN
        i:=left;
        j:=right;
        pivot:=a[(left+right) div 2];

        repeat
                while(a[i] > pivot) do inc(i);
                while(pivot > a[j]) do dec(j);

                if (i<=j) then
                begin
                        tam:=a[i];
                        a[i]:=a[j];
                        a[j]:=tam;

                        inc(i); dec(j);


                end;


        until i > j;


        if (left < j ) then QuickSort(left,j);
        if (i < right) then QuickSort(i,right);


END;


BEGIN
        clrscr;
        write('nhap n');
        readln(n);

        for i:=1 to n do
        begin
                readln(a[i])
        end;


        QuickSort(1,n);

        writeln;
        writeln('Sau khi sap xep:');

        for i:=n to 1 do write(a[i]:3);


        readln

END.