unit fmMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ComCtrls,
  ActnList, StdActns, DelphiAST.ProjectIndexer, laz.VirtualTrees,
  DateTimePicker;

type

  { TFormMain }

  TFormMain = class(TForm)
    ActionList1: TActionList;
    FileExit1: TFileExit;
    FileOpen1: TFileOpen;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    StatusBar1: TStatusBar;
    VTree: TLazVirtualStringTree;
    MainMenu1: TMainMenu;
    ToolBar1: TToolBar;
    procedure FileOpen1Accept(Sender: TObject);
  private
    FProject: TProjectIndexer;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
  end;

var
  FormMain: TFormMain;

implementation

{$R *.lfm}

{ TFormMain }

procedure TFormMain.FileOpen1Accept(Sender: TObject);
begin
  FProject.Index((Sender as TFileOpen).Dialog.FileName);
end;

procedure TFormMain.AfterConstruction;
begin
  inherited AfterConstruction;
  FProject := TProjectIndexer.Create;
end;

procedure TFormMain.BeforeDestruction;
begin
  inherited BeforeDestruction;
  FProject.Free;
end;

end.
