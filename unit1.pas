unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TASeries, Forms, Controls, Graphics,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Chart1: TChart;
    Chart1LineSeries1: TLineSeries;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    PageControl1: TPageControl;
    Shape1: TShape;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    function funcion(x: Integer):Integer;
    function funcionDouble(x: Double):Double;
  private
    { private declarations }
  public
    valor : Double;
    { public declarations }
  end;

var
  Form1: TForm1;
implementation

{$R *.lfm}

{ TForm1 }
function TForm1.funcion(x: Integer):Integer;
begin
  Result:=x;
end;

function TForm1.funcionDouble(x: Double):Double;
begin
  Result:=x;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  x:Integer;
begin
  x:=3;
  Image1.Left:=Image1.Left+x;
  if  Image1.Left >= Shape1.Width then
      Image1.Left:=48;

  Chart1LineSeries1.AddXY(valor,funcionDouble(valor));
  valor:=valor+1;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i,n: Integer;
begin
  n:=StrToInt(Edit1.Text);
  {for i:=0 to n do begin
      Chart1LineSeries1.AddXY(i,funcion(i));
  end; }
  Timer1.Enabled:=True;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  valor:=0;
end;

end.

