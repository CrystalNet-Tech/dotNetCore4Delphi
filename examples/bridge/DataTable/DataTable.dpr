program DataTable;

{$APPTYPE CONSOLE}
{$R *.res}

uses
{$IF CompilerVersion > 22}
  System.SysUtils,
{$ELSE}
  SysUtils,
{$IFEND }
  CNCoreClrLib.BridgeMgr, CrystalNet.Runtime.Intf, CrystalNet.Runtime, CrystalNet.Data.Common,
  CrystalNet.Data.Common.Intf;

var
  DataSet: IDataSet;


  procedure MakeParentTable;
  var
    table: IDataTable;
    column: IDataColumn;
    row: IDataRow;
    primaryKeyColumns: ICoreClrBridgeArray<IDataColumn>;
    I: Integer;
  begin
    // Create a new DataTable.
    table := TDataTable.Create('ParentTable');

    // Create new DataColumn, set DataType,
    // ColumnName and add to DataTable.
    column := TDataColumn.Create;
    column.DataType := TType.NClass.GetType('System.Int32');
    column.ColumnName := 'id';
    column.ReadOnly := true;
    column.Unique := true;
    // Add the Column to the DataColumnCollection.
    table.Columns.Add(column);

    // Create second column.
    column := TDataColumn.Create;
    column.DataType := TType.NClass.GetType('System.String');
    column.ColumnName := 'ParentItem';
    column.AutoIncrement := false;
    column.Caption := 'ParentItem';
    column.ReadOnly := false;
    column.Unique := false;
    // Add the column to the table.
    table.Columns.Add(column);

    // Make the ID column the primary key column.
    primaryKeyColumns := TCoreClrBridgeArray<IDataColumn>.Create(1);
    primaryKeyColumns[0] := table.Columns.Item['id'];
    table.PrimaryKey := primaryKeyColumns;

    // Instantiate the DataSet variable.
    DataSet := TDataSet.Create;
    // Add the new DataTable to the DataSet.
    DataSet.Tables.Add(table);

    // Create three new DataRow objects and add
    // them to the DataTable
    for I := 0 to 2 do
    begin
      row := table.NewRow;
      row.Item['id'] := i;
      row.Item['ParentItem'] := 'ParentItem ' + i.ToString;
      table.Rows.Add(row);
    end;
  end;

  procedure MakeChildTable;
  var
    table: IDataTable;
    column: IDataColumn;
    row: IDataRow;
    I: Integer;
  begin
    // Create a new DataTable.
    table := TDataTable.Create('childTable');

    // Create first column and add to the DataTable.
    column := TDataColumn.Create;
    column.DataType := TType.NClass.GetType('System.Int32');
    column.ColumnName := 'ChildID';
    column.AutoIncrement := true;
    column.Caption := 'ID';
    column.ReadOnly := true;
    column.Unique := true;

    // Add the column to the DataColumnCollection.
    table.Columns.Add(column);

    // Create second column.
    column := TDataColumn.Create;
    column.DataType := TType.NClass.GetType('System.String');
    column.ColumnName := 'ChildItem';
    column.AutoIncrement := false;
    column.Caption := 'ChildItem';
    column.ReadOnly := false;
    column.Unique := false;
    table.Columns.Add(column);

    // Create third column.
    column := TDataColumn.Create;
    column.DataType := TType.NClass.GetType('System.Int32');
    column.ColumnName := 'ParentID';
    column.AutoIncrement := false;
    column.Caption := 'ParentID';
    column.ReadOnly := false;
    column.Unique := false;
    table.Columns.Add(column);

    DataSet.Tables.Add(table);

    // Create three sets of DataRow objects,
    // five rows each, and add to DataTable.
    for I := 0 to 4 do
    begin
      row := table.NewRow;
      row.Item['childID'] := i;
      row.Item['ChildItem'] := 'Item ' + i.ToString;
      row.Item['ParentID'] := 0;
      table.Rows.Add(row);
    end;

    for I := 0 to 4 do
    begin
      row := table.NewRow;
      row.Item['childID'] := i + 5;
      row.Item['ChildItem'] := 'Item ' + i.ToString;
      row.Item['ParentID'] := 1;
      table.Rows.Add(row);
    end;

    for I := 0 to 4 do
    begin
      row := table.NewRow;
      row.Item['childID'] := i + 10;
      row.Item['ChildItem'] := 'Item ' + i.ToString;
      row.Item['ParentID'] := 2;
      table.Rows.Add(row);
    end;
  end;

  procedure MakeDataRelation;
  var
    parentColumn,
    childColumn: IDataColumn;
    relation: IDataRelation;
  begin
    // DataRelation requires two DataColumn
    // (parent and child) and a name.
    parentColumn := DataSet.Tables.Item['ParentTable'].Columns.Item['id'];
    childColumn := DataSet.Tables.Item['ChildTable'].Columns.Item['ParentID'];
    relation := TDataRelation.Create('parent2Child', parentColumn, childColumn);
    DataSet.Tables.Item['ChildTable'].ParentRelations.Add(relation);
  end;

  procedure MakeDataTables;
  begin
    // Run all of the functions.
    MakeParentTable;
    MakeChildTable;
    MakeDataRelation;
  end;

begin
  try
    MakeDataTables;
  except
    on E: Exception do
    begin
      Writeln(E.message);
    end;
  end;
end.
