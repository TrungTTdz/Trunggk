{Tinh chu vi va dien tich hinh tam giac theo
nhieu cach}

program TamGiac;
uses crt;
var s:integer;



procedure TinhChuVi();
var
  a,b,c:integer;
begin
      writeln('Tinh Chu Vi Tam Giac:');
      write('Nhap vao canh a:');readln(a);
      write('Nhap vao canh b:');readln(b);
      write('Nhap vao canh c:');readln(c);

      write('Chu vi cua tam giac la:',a+b+c);
end;

procedure DTTheoDC();
var
  a,h:integer;
begin
    writeln('Tinh Dien Tich Tam Giac Theo Duong Cao:');
    write('Nhap vao canh a:');readln(a);
    write('Nhap vao duong cao tuong ung:');readln(h);
    write('Dien tich tam giac theo chieu cao:',1/2*a*h:0:2);
end;

procedure DTTheoSinVaCanhKe();
var
  a,b,c:integer;
begin
    writeln('Dien Tich Tam Giac Theo Sin Va Canh Ke:');
    write('Nhap vao canh a:');readln(a);
    write('Nhap vao canh b:');readln(b);

    write('Nhap vao sin goc giua:');readln(c);
    write('Dien tich tam giac theo 2 canh ke va sin goc giua la:',1/2*a*b*c:0:2);
end;

BEGIN
    clrscr();

    write('Ban muon tinh CT nao:');readln(s);

    case s of
      1:TinhChuVi();
      2:DTTheoDC();
      3:DTTheoSinVaCanhKe();
      else  write('Khong co so nay:');


    end;




    readln

END.













