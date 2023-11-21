unit Forms.SignUpForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.FMXUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FMX.Layouts, System.RegularExpressions,
  System.RegularExpressionsCore;

type
  TSignUpForm = class(TForm)
    Layout1: TLayout;
    Label1: TLabel;
    Button1: TButton;
    Layout2: TLayout;
    Label2: TLabel;
    UsernameEdit: TEdit;
    Label3: TLabel;
    PasswordEdit: TEdit;
    SignInButton: TButton;
    Label4: TLabel;
    RepeatPasswordEdit: TEdit;
    RepeatPasswordErrorLabel: TLabel;
    Label5: TLabel;
    EmailEdit: TEdit;
    EmailErrorLabel: TLabel;
    Label6: TLabel;
    TelephoneEdit: TEdit;
    TelephoneErrorLabel: TLabel;
    CheckBox1: TCheckBox;
    Label7: TLabel;
    Edit1: TEdit;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure UsernameEditChange(Sender: TObject);
    procedure PasswordEditChange(Sender: TObject);
    procedure RepeatPasswordEditChange(Sender: TObject);
    procedure EmailEditChange(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
  public
    { Public declarations }
private
    { Private declarations }
  end;

var
  SignUpForm: TSignUpForm;

implementation

{$R *.fmx}

procedure TSignUpForm.Button1Click(Sender: TObject);
begin
    Self.Close;
end;

procedure TSignUpForm.CheckBox1Change(Sender: TObject);
begin
  Button1.Enabled := TCheckBox(Sender).IsChecked;
end;

procedure TSignUpForm.EmailEditChange(Sender: TObject);
begin
  TEdit(Sender).Text := trim(TEdit(Sender).Text);
  // Verificar a validade do email usando uma expressão regular simples
  if not TRegEx.IsMatch(EmailEdit.Text, '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$') then
  begin
    EmailErrorLabel.Text := 'Invalid email address.';
    EmailEdit.SetFocus;
  end else begin
    EmailErrorLabel.Text := '';
    TelephoneEdit.SetFocus;
  end;
end;

procedure TSignUpForm.PasswordEditChange(Sender: TObject);
begin
  if (UsernameEdit.Text.Length > 3) then begin
    SignInButton.Enabled := True;
  end;
end;

procedure TSignUpForm.RepeatPasswordEditChange(Sender: TObject);
begin
  //
  if PasswordEdit.Text <> RepeatPasswordEdit.Text then
  begin
    RepeatPasswordErrorLabel.Text := 'Passwords not equals';
    RepeatPasswordEdit.SetFocus;
  end;

end;

procedure TSignUpForm.UsernameEditChange(Sender: TObject);
begin
  if (UsernameEdit.Text.Length > 3) then begin
    SignInButton.Enabled := True;
  end;
end;

end.
