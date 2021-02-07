unit SpCalcFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TSpCalcForm = class(TForm)
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Label3Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SpCalcForm: TSpCalcForm;

implementation

{$R *.dfm}


end.
