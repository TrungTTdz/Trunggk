program QuickSortGiamDan;
uses crt;

var
        a:array [1..100] of integer;
        i:integer;

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

        for i:=1 to 10 do
        begin
                a[i]:=i;
                write(a[i]:3);
        end;


        QuickSort(1,10);

        writeln;
        writeln('Sau khi sap xep:');

        for i:=1 to 10 do write(a[i]:3);


        readln

END.