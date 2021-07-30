{ Tat ca cac so tu nhien co hai chu so khi ma dao trat tu cua hai chu so do se thu duoc mot so nguyen to
        cung nhau voi so da cho (so 1)}
{$B}
PROGRAM SoThanThien;
uses crt;
const
        INPUT = 'C:\FPC\Algorithms\Sothanthien\Sothanthien.txt';

var
        a,b,i,j:integer;
        f:text;

function UCLN(a,b:integer):integer;
var r:integer;
begin
        repeat
                if (a > b) then a:=a-b else b:=b-a;
        until a= b;

        UCLN:=a;
end;

function SoNghichDao(a:integer):integer;
var y:integer;
begin
        y:=0;

        while a > 0 do
        begin
                y:=10*y+(a mod 10);
                a:=a div 10;
        end;

        SoNghichDao:=y;



end;



BEGIN
        clrscr;

        assign(f,INPUT);
        rewrite(f);


        for i:=2 to 9 do
                for j:=0 to i-1 do
                begin
                        a:=i*10+j;
                        b:=j*10+i;

                        if(UCLN(a,b) = 1) then
                                writeln(f,'So than thien la ', a ,',',b);
                end;
        close(f);

        readln


END.
