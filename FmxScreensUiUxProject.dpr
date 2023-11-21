program FmxScreensUiUxProject;

uses
  System.StartUpCopy,
  FMX.Forms,
  Forms.StartForm in 'Forms\Forms.StartForm.pas' {StartForm},
  Forms.MainForm in 'Forms\Forms.MainForm.pas' {MainForm},
  Forms.SignInForm in 'Forms\Forms.SignInForm.pas' {SignInForm},
  Forms.SignUpForm in 'Forms\Forms.SignUpForm.pas' {SignUpForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TStartForm, StartForm);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TSignInForm, SignInForm);
  Application.CreateForm(TSignUpForm, SignUpForm);
  Application.Run;
end.
