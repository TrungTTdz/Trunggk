program ChuCaiTrongXau;
uses crt;
var
        i:byte;
        s:String;
        chucai:array['A'..'Z'] of integer;
        a:char;

BEGIN

        clrscr;

        write('Nhap s:');readln(s);

        s:=upcase(s);

        while(pos(#32#32,s) <>0 ) do delete(s,pos(#32#32,s),1);
        while(s[1] = ' ') do delete(s,1,1);
        while(s[length(s)] = ' ' ) do delete(s,length(s),1);

        for i:=1 to length(s) do
        if(s[i] in ['A'..'Z']) then inc(chucai[s[i]]);

        for a:='A' to 'Z' do
        if(chucai[a] > 0 ) then writeln('Chu ',a,' co ', chucai[a],' chu');

        readln
END.

