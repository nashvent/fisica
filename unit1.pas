unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TASeries, Forms, Controls, Graphics,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls,math;

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
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    AceleracionLabel: TLabel;
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
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    function funcion(x: Integer):Integer;
    function funcionDouble(x: Double):Double;
    procedure grafica1(y:Double);
    procedure grafica2(y:Double);
    procedure grafica3(y:Double);
    procedure aceleracion();
    procedure distancia();
  private
    { private declarations }
  public
    valor : Double;
    t_grafica:Double;
    v_grafica:Double;
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
  x1:Double;
  y1:Double;
begin
  x:=3;
  if t_grafica<40 then
  begin
      t_grafica:=t_grafica+1;
      v_grafica:=v_grafica+a;
  end;


  aceleracion();

  Image1.Left:=Image1.Left+x;
  if  Image1.Left >= Shape1.Width then
      Image1.Left:=48;

   {
    {Chart1LineSeries1.AddXY(valor,funcionDouble(valor));
    valor:=valor+1;}
    Grafica 1 Y:Vel(m/s) - X:t(s)
    grafica1(x,y);
    Grafica 2 Y:Posicion(m) - X:t(s)
    grafica2(x.y);
    Grafica 3 Y:Aceleracion(m/s^2) - X:t(s)
    grafica3(x,y);}
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i,n: Integer;
begin
  vi:=StrToFloat(Edit1.Text);
  vf:=StrToFloat(Edit2.Text);
  a:=StrToFloat(Edit3.Text);
  t:=StrToFloat(Edit4.Text);
  d:=StrToFloat(Edit5.Text);
  t_grafica:=t_grafica+t;
  v_grafica:=v_grafica+vf;
  {for i:=0 to n do begin
      Chart1LineSeries1.AddXY(i,funcion(i));
  end; }
  Timer1.Enabled:=True;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.Text = 'aceleracion' then
      begin
       Edit5.Visible:=False;
       Edit3.Visible:=False;
      end
  else
      begin
        Edit5.Visible:=True;
        Edit3.Visible:=True;
      end;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  t_grafica:=0;
  t:=1;
  //valor:=0;
  ComboBox1.Items.Clear;
  ComboBox1.Items.Add('distancia');
  ComboBox1.Items.Add('vo');
  ComboBox1.Items.Add('aceleracion');

end;

procedure TForm1.Label10Click(Sender: TObject);
begin

end;

procedure TForm1.grafica1(y:Double);
begin
   Chart1LineSeries1.AddXY(t_grafica,y);
end;

procedure TForm1.grafica2(y:Double);
begin
   Chart2LineSeries1.AddXY(t_grafica,y);
end;

procedure TForm1.grafica3(y:Double);
begin
   Chart3LineSeries1.AddXY(t_grafica,y);
end;

procedure TForm1.distancia();
begin
  d:=(vi*t)+(0.5*a*power(t_grafica,2));
  grafica1(d);
  grafica2(v_grafica);
end;

procedure TForm1.aceleracion();
begin
  a:=abs(vf-vi)/t;

  AceleracionLabel.Caption:=FloatToStr(a)+' m/s^2';
  grafica3(a);
  distancia();
end;

end.

