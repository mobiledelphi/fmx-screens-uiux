unit Forms.SignInForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Layouts, FMX.Controls.Presentation;

type
  TSignInForm = class(TForm)
    Label1: TLabel;
    Layout1: TLayout;
    Button1: TButton;
    Layout2: TLayout;
    Label2: TLabel;
    UsernameEdit: TEdit;
    Label3: TLabel;
    PasswordEdit: TEdit;
    KeepConnectedCheckBox: TCheckBox;
    SignInButton: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SignInForm: TSignInForm;

implementation

{$R *.fmx}

end.
