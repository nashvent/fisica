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
    Chart2: TChart;
    Chart2LineSeries1: TLineSeries;
    Chart3: TChart;
    Chart3LineSeries1: TLineSeries;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
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
    procedure Label10Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    function funcion(x: Integer):Integer;
    function funcionDouble(x: Double):Double;

  private
    { private declarations }
  public
    valor : Double;
    vi,vf,a,t,d:Double;
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

  ////   grafica(int x,int y){
      ///Chart1LineSeries1.AddXY(x,y);
      ////
  ///ACA SETEAMOS VALORES
   ///X , Y;
  {Chart1LineSeries1.AddXY(valor,funcionDouble(valor));
  valor:=valor+1;}
  //Grafica 1 Y:Vel(m/s) - X:t(s)
  //// grafica1(x,y);
  //Grafica 2 Y:Posicion(m) - X:t(s)
  //// grafica2(x.y);
  //Grafica 3 Y:Aceleracion(m/s^2) - X:t(s)
  //// grafica3(x,y);
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
  vi:=0;
  vf:=0;
  a:=0;
  t:=0;
  d:=0;
  valor:=0;
end;

procedure TForm1.Label10Click(Sender: TObject);
begin

end;

end.

