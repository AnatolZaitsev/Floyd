unit UnitFloyd;

interface

const
  L=100;
type
  Graph = array[1..L,1..L] of integer;  // граф имеет вид многомерного массива
var
  n:integer;

procedure Floyd(var a,b:graph);
procedure ReadGraph(var a:graph);
Procedure Output(var a,b:graph);
procedure Menu(var item:integer);

implementation

procedure Floyd(var a,b:graph);       // Алгоритм Флойда
var
  i,j,k:integer;
begin
  for k:=1 to n do
  begin
    for i:=1 to n do
      for j:=1 to n do
      begin
        if (a[i,j] > a[i,k]+a[k,i]) then
        begin
          a[i,j]:=a[i,k]+a[k,j];
          b[i,j]:=k;
        end;
      end;
  end;
  Writeln;
  Writeln('>>>>>>>>>>Floyd have completed<<<<<<<<<<');
end;

procedure ReadGraph(var a:graph);     // Задаю граф в виде матрицы смежности
var
  i,j:integer;
begin
  write('n = ');
  readln(n);
  For i:=1 to n do
    for j:=1 to n do
    begin
      write('G[',i,',',j,'] = ');
      readln(a[i,j]);
    end;
end;


Procedure Output(var a,b:graph);   // Вывод кратчайших расстояний и путей
var
  i,j: integer;
begin
  writeln;
  for i:=1 to n do
  begin
    for j:=1 to n do
      write(a[i,j]:4,'  ');
    writeln;
  end;
  writeln('------------');
  for i:=1 to n do
  begin
    for j:=1 to n do
      write(b[i,j]:4,'  ');
    writeln;
  end;
end;

procedure Menu(var item:integer);
begin
  writeln;
  writeln('Choose point:');
  writeln('1 - Input Graph');
  writeln('2 - Floyd');
  writeln('3 - Output');
  writeln;
  repeat
    readln(item);
  until item in [0..3];
end;

end.
