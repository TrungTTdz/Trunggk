program NgayThang;
uses crt;
var
        thu:byte;

BEGIN
        clrscr;

        write('Nhap thu:');readln(thu);

        case thu of
        2: write('Monday');
        3: write('Tuesday');
        4: write('Wednesday');
        5: write('Thursday');
        6: write('Friday');
        7: write('Saturday');
        8: write('Sunday') else
        write('Ko co ngay nay:');
        end;
        readln
END.