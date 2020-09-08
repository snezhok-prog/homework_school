var arr: array[1..3,1..2] of integer;
var arr_new: array[1..3,1..2] of integer;
var i,k,less,most,l,r: integer;
begin
  for i:=1 to 3 do
    for k:=1 to 2 do
      arr[i,k]:= random (100);
  
  for i:=1 to 3 do
  begin
    for k:=1 to 2 do
      write (arr[i,k], ' ');
    writeln;
  end;
  less:= 200;
  most:=-200;
  for l:=1 to 3 do
    for r:=1 to 2 do
      begin
        for i:=1 to 3 do
          for k:=1 to 2 do
            if (arr[i,k]<less) and (arr[i,k]>most) then
              less:=arr[i,k];
        arr_new[l,r]:=less;
        most:=less;
        less:=200;
      end;
  writeln;
  writeln ('Отсортированный список');
  writeln;
  for i:=1 to 3 do
  begin
    for k:=1 to 2 do
      write (arr_new[i,k], ' ');
    writeln;
  end;
end.