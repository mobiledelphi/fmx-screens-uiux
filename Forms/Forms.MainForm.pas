unit Forms.MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Objects, FMX.SVGIconImage, FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.Layouts, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Forms.SignInForm, Forms.SignUpForm;

type
  TMainForm = class(TForm)
    Layout1: TLayout;
    VertScrollBox1: TVertScrollBox;
    Rectangle1: TRectangle;
    Label1: TLabel;
    Label2: TLabel;
    RoundRect2: TRoundRect;
    Label3: TLabel;
    RoundRect3: TRoundRect;
    UsersRegisteredListView: TListView;
    SignUpSpeedButton2: TSpeedButton;
    RescueAccountSpeedButton3: TSpeedButton;
    RoundRect1: TRoundRect;
    SignInSpeedButton1: TSpeedButton;
    Label4: TLabel;
    procedure SignInSpeedButton1Click(Sender: TObject);
    procedure SignUpSpeedButton2Click(Sender: TObject);
    procedure RescueAccountSpeedButton3Click(Sender: TObject);
  private
    procedure LoadUsersRegisteredTerminate(Sender : TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}

procedure TMainForm.LoadUsersRegisteredTerminate(Sender : TObject);
begin
  //
end;
procedure TMainForm.RescueAccountSpeedButton3Click(Sender: TObject);
begin
  //RescueAccountForm.Show;
end;

procedure TMainForm.SignInSpeedButton1Click(Sender: TObject);
begin
  SignInForm.Show;
end;

procedure TMainForm.SignUpSpeedButton2Click(Sender: TObject);
begin
  SignUpForm.Show;
end;

end.
