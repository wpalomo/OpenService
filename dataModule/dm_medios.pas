unit dm_medios;

{$mode objfpc}{$H+}

interface

uses
    Classes, SysUtils, sqldb, mysql56conn, mysql55conn, FileUtil, LR_Class,
    utilidades_bd, utilidades_general;

type

    { TDataModule_Medios }

    TDataModule_Medios = class(TDataModule)
        SQLConnector: TSQLConnector;
        SQLTransaction: TSQLTransaction;
        procedure DataModuleCreate(Sender: TObject);
    private
        { private declarations }
    public
        { public declarations }
    end;

var
    DataModule_Medios: TDataModule_Medios;

implementation

{$R *.lfm}

{ TDataModule_Medios }

procedure TDataModule_Medios.DataModuleCreate(Sender: TObject);
begin
     if UTI_CN_Connector_Open( SQLTransaction, SQLConnector ) = False then UTI_GEN_Salir;
end;

end.

