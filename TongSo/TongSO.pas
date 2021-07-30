program TongSo;
uses crt;
const
        INPUT = 'TongSo\INPUT.txt';
        OUTPUT = 'TongSo\OUTPUT.txt';
        type mang = array[1..100] of integer;
var
        a:mang;
        i,j,n,b,tong:integer;
        f:text;

procedure QUickSort(var a:mang;left,right:integer);
var
        i,j,pivot,tam:integer;
BEGIN
        i:=left;
        j:=right;
        pivot:=a[(left+right) div 2];


        repeat

                while (a[i] > pivot) do inc(i);
                while (pivot > a[j]) do dec(j);

                if i <= j then
                begin
                        tam:=a[i];
                        a[i]:=a[j];
                        a[j]:=tam;

                        inc(i); dec(j);

                end;




        until i > j;


        if (j > left) then QuickSort(a,left,j);
        if (i < right) then QUickSort(a,i,right);

END;

BEGIN
        clrscr;
        assign(f,INPUT);
        reset(f);
                read(f,n); read(f,b);
                for i:=1 to n do readln(f,a[i]);
        close(f);

        QuickSort(a,1,n);

        i:=1;


        assign(f,OUTPUT);
        rewrite(f);

        while (a[i] > b)  and (i < n) do dec(i); //Bo cac so > b

        if (i=0) then write(f,'Khong co so:') else
                while ( tong < b) and( i < n) do
                begin
                        tong:=tong+a[i];
                        inc(j);



                end;


                write(f,j);

        close(f);
        
        // xin chao cac ban nha
        





        readln


END.
// ao that day
