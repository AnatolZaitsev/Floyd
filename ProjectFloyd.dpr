program ProjectFloyd;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  UnitFloyd in 'UnitFloyd.pas';
var
  g,h: graph;
  itm: Integer;
begin
  repeat
    Menu(itm);
    case itm of
      1: ReadGraph(g);
      2: Floyd(g,h);
      3: Output(g,h);
    end;
  until itm = 0;
end.
