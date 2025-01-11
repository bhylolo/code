program CodeTree;

{$mode objfpc}{$H+}

uses
    {$IFDEF UNIX}
    cthreads,
    {$ENDIF}
    {$IFDEF HASAMIGA}
    athreads,
    {$ENDIF}
    Interfaces, // this includes the LCL widgetset
    Forms, datetimectrls, fmMain, DelphiAST.Classes, DelphiAST.Consts,
		DelphiAST, DelphiAST.ProjectIndexer, DelphiAST.Serialize.Binary,
		DelphiAST.SimpleParserEx, DelphiAST.Writer, StringPool, Diagnostics, IOUtils,
		SimpleParser.Lexer, SimpleParser.Lexer.Types, SimpleParser,
		SimpleParser.Types
    { you can add units after this };

{$R *.res}

begin
    RequireDerivedFormResource:=True;
    Application.Scaled:=True;
    Application.Initialize;
		Application.CreateForm(TFormMain, FormMain);
    Application.Run;
end.

