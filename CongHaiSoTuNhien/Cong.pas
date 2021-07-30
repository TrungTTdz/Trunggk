program CongHaiSoTuNhien;

uses crt;
var
        a,b,kq,tam:String;
        i:byte;
        kt:boolean;
        du,so,t:byte;

function KTSo(a:String):boolean;
var
        code,value:integer;
begin

        val(a,value,code);

        if(code = 0) then KTSo:=false else KTSo:=true;

end;

function ChuyenChu(so:integer):string;
var
        s:String;
begin
        str(so,s);
        ChuyenChu:=s;

end;

function ChuyenSo(s:string):Integer;
var
        code,value:integer;
begin
        val(s,value,code);
        ChuyenSo:=value;

end;

BEGIN
        clrscr;

        kt:=true;


       repeat
        begin

                write('Nhap so a:');readln(a);
                write('Nhap so b:');readln(b);

                if(KTSo(a)) and (KTSo(b)) then
                begin
                        kt:=false;
                        writeln('Nhap bi loi ;) moi ban nhap lai:');
                end
                        else
                kt:=true;
        end;
        until (KT =true);


        if (length(a) < length(b)) then
        begin
                tam:=a;
                a:=b;
                b:=tam;
        end;

        for i:=1 to length(a)-length(b) do
                b:='0'+b;


       for i:=length(a) downto 1 do
        begin



              so:=ChuyenSo(a[i])+ChuyenSo(b[i]);
               writeln(so);
               {
              so:=so+du;
               t:=so;

               so:=so mod 10;
               du:=t div 10;
               kq:=kq+ChuyenChu(so); }





        end;


        write(kq);



        readln
END.

