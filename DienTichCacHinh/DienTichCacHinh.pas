program DienTichCacHinh;

uses crt;
var
        chon:byte;
        a,b,h:real;
        c:char;

procedure HCN();
BEGIN
        write('Nhap chieu dai:');readln(a);
        write('Nhap chieu cao:');readln(b);
        write('Dien tich hinh chu nhat:', a*b:0:3);


END;

procedure HinhVuong();
BEGIN
        write('Nhap 1 canh:');readln(a);
        write('Dien tich hinh vuong:', a*a:0:3);


END;

procedure HinhTron();
BEGIN
        write('Nhap ban kinh:');readln(a);
        write('Dien tich hinh tron', pi*a*a:0:3);

END;
procedure TamGiac();
BEGIN
        write('Nhap canh day:');readln(a);
        write('Nhap chieu cao:');readln(h);
        write('Dien tich la:', a*h/2:0:3);

END;

procedure HinhThang();
begin
        write('Nhap day lon:');readln(a);
        write('Nhap day be:');readln(b);
        write('Nhap chieu cao:');readln(h);

        write('Dien tich hinh thang:', 1/2*(a+b)*h:0:3);

end;
procedure ChonHinh();
BEGIN
        writeln('1 ----> Hinh vuong');
        writeln('2 -----> Hinh chu nhat');
        writeln('3 -----> Hinh tron');
        writeln('4 -----> Tam giac');
        writeln('5 -----> Hinh thang');

        write('Chon hinh:');readln(chon);

        case chon of
        1: HinhVuong();
        2: HCN();
        3: HinhTron();
        4: TamGiac();
        5: HinhThang() else
        write('Khong co hinh nay:');
        end;


END;



BEGIN
        clrscr;

        repeat
        ChonHinh;
        writeln;
        writeln('Ban muon tinh tiep ko Y = Yes N = No:');readln(c);
        until (c = 'N') or (c ='n');
        readln
END.

