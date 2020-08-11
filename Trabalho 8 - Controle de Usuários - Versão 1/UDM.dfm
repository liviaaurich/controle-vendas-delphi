object DM: TDM
  OldCreateOrder = False
  Height = 590
  Width = 578
  object DBConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=Trabalho_05;Data Source=DES' +
      'KTOP-RUDR7EI;Use Procedure for Prepare=1;Auto Translate=True;Pac' +
      'ket Size=4096;Workstation ID=DESKTOP-RUDR7EI;Initial File Name="' +
      '";Use Encryption for Data=False;Tag with column collation when p' +
      'ossible=False;MARS Connection=False;DataTypeCompatibility=0;Trus' +
      't Server Certificate=False;Server SPN="";Application Intent=READ' +
      'WRITE'
    LoginPrompt = False
    Provider = 'SQLNCLI11.1'
    BeforeConnect = DBConnectionBeforeConnect
    Left = 40
    Top = 24
  end
  object QAluno: TADOQuery
    Connection = DBConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from aluno')
    Left = 152
    Top = 32
  end
  object MAluno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PAluno'
    AfterInsert = MAlunoAfterInsert
    AfterPost = MAlunoAfterPost
    AfterCancel = MAlunoAfterCancel
    AfterDelete = MAlunoAfterDelete
    Left = 328
    Top = 32
    object MAlunoidAluno: TAutoIncField
      DisplayLabel = 'id Aluno'
      FieldName = 'idAluno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object MAlunonome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object MAlunocidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object MAlunoestado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object MAlunodtNascimento: TDateTimeField
      DisplayLabel = 'Nascimento'
      FieldName = 'dtNascimento'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
    object MAlunocpf: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      ProviderFlags = [pfInUpdate]
      EditMask = '999.999.999-99;1;_'
      Size = 14
    end
    object MAlunomatricula: TStringField
      DisplayLabel = 'Matr'#237'cula'
      FieldName = 'matricula'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object MAlunosexo: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'sexo'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object MAlunoobservacoes: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'observacoes'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object MAlunobolsista: TBooleanField
      DisplayLabel = 'Bolsista'
      FieldName = 'bolsista'
      ProviderFlags = [pfInUpdate]
    end
    object MAlunobolsa: TFloatField
      DisplayLabel = 'Bolsa'
      FieldName = 'bolsa'
      ProviderFlags = [pfInUpdate]
      currency = True
    end
  end
  object PAluno: TDataSetProvider
    DataSet = QAluno
    Left = 240
    Top = 32
  end
  object QUsuarios: TADOQuery
    Connection = DBConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from usuarios')
    Left = 152
    Top = 96
  end
  object PUsuarios: TDataSetProvider
    DataSet = QUsuarios
    Left = 240
    Top = 96
  end
  object MUsuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PUsuarios'
    AfterPost = MUsuariosAfterPost
    AfterCancel = MUsuariosAfterCancel
    AfterDelete = MUsuariosAfterDelete
    AfterScroll = MUsuariosAfterScroll
    Left = 328
    Top = 96
    object MUsuariosid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object MUsuarioslogin: TStringField
      FieldName = 'login'
      Size = 30
    end
    object MUsuariossenha: TStringField
      FieldName = 'senha'
      Size = 30
    end
    object MUsuariosemail: TStringField
      FieldName = 'email'
      Size = 30
    end
  end
  object PPTela: TDataSetProvider
    DataSet = QPTela
    Left = 240
    Top = 160
  end
  object MPTela: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PPTela'
    AfterPost = MPTelaAfterPost
    AfterCancel = MPTelaAfterCancel
    AfterDelete = MPTelaAfterDelete
    Left = 328
    Top = 160
    object MPTelaid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object MPTelaname: TStringField
      FieldName = 'name'
      Size = 10
    end
    object MPTeladescricao: TStringField
      FieldName = 'descricao'
      Size = 30
    end
  end
  object DSPTela: TDataSource
    DataSet = MPTela
    Left = 416
    Top = 160
  end
  object QPTela: TADOQuery
    Connection = DBConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tela')
    Left = 152
    Top = 160
  end
  object QUserTela: TADOQuery
    Connection = DBConnection
    CursorType = ctStatic
    BeforeOpen = QUserTelaBeforeOpen
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select rel.idUsuario, rel.idTela, t.name, t.descricao from tela ' +
        't, rel_usuario_tela rel where t.id = rel.idTela and rel.idUsuari' +
        'o = :id')
    Left = 152
    Top = 288
  end
  object PUserTela: TDataSetProvider
    DataSet = QUserTela
    Left = 240
    Top = 288
  end
  object DSUserTela: TDataSource
    DataSet = MUserTela
    Left = 416
    Top = 288
  end
  object MUserTela: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PUserTela'
    AfterPost = MUserTelaAfterPost
    AfterCancel = MUserTelaAfterCancel
    AfterDelete = MUserTelaAfterDelete
    Left = 328
    Top = 288
    object MUserTelaidUsuario: TIntegerField
      FieldName = 'idUsuario'
    end
    object MUserTelaidTela: TIntegerField
      FieldName = 'idTela'
    end
    object MUserTelaname: TStringField
      FieldName = 'name'
      Size = 10
    end
    object MUserTeladescricao: TStringField
      FieldName = 'descricao'
      Size = 30
    end
  end
  object QNotUserTela: TADOQuery
    Connection = DBConnection
    CursorType = ctStatic
    BeforeOpen = QNotUserTelaBeforeOpen
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select t.id, t.name, t.descricao from tela t where t.id not in (' +
        'select rel.idTela from rel_usuario_tela rel where rel.idUsuario ' +
        '= :id)')
    Left = 152
    Top = 352
  end
  object PNotUserTela: TDataSetProvider
    DataSet = QNotUserTela
    Left = 240
    Top = 352
  end
  object MNotUserTela: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PNotUserTela'
    AfterPost = MNotUserTelaAfterPost
    AfterCancel = MNotUserTelaAfterCancel
    AfterDelete = MNotUserTelaAfterDelete
    Left = 328
    Top = 352
    object MNotUserTelaid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object MNotUserTelaname: TStringField
      FieldName = 'name'
      Size = 10
    end
    object MNotUserTeladescricao: TStringField
      FieldName = 'descricao'
      Size = 30
    end
  end
  object DSNotUserTela: TDataSource
    DataSet = MNotUserTela
    Left = 416
    Top = 352
  end
  object QRelUserTela: TADOQuery
    Connection = DBConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from rel_usuario_tela')
    Left = 152
    Top = 224
  end
  object PRelUserTela: TDataSetProvider
    DataSet = QRelUserTela
    Left = 240
    Top = 224
  end
  object MRelUserTela: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PRelUserTela'
    AfterPost = MRelUserTelaAfterPost
    AfterCancel = MRelUserTelaAfterCancel
    AfterDelete = MRelUserTelaAfterDelete
    Left = 328
    Top = 224
    object MRelUserTelaidUsuario: TIntegerField
      FieldName = 'idUsuario'
    end
    object MRelUserTelaidTela: TIntegerField
      FieldName = 'idTela'
    end
    object MRelUserTelainserir: TBooleanField
      FieldName = 'inserir'
    end
    object MRelUserTelaalterar: TBooleanField
      FieldName = 'alterar'
    end
    object MRelUserTelaexcluir: TBooleanField
      FieldName = 'excluir'
    end
    object MRelUserTelaimprimir: TBooleanField
      FieldName = 'imprimir'
    end
  end
  object DSRelUserTela: TDataSource
    DataSet = MRelUserTela
    Left = 416
    Top = 224
  end
  object QLogin: TADOQuery
    Connection = DBConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select id, login, senha, email from usuarios')
    Left = 152
    Top = 416
  end
  object PLogin: TDataSetProvider
    DataSet = QLogin
    Left = 240
    Top = 416
  end
  object MLogin: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PLogin'
    Left = 328
    Top = 416
    object MLoginid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object MLoginlogin: TStringField
      FieldName = 'login'
      Size = 30
    end
    object MLoginsenha: TStringField
      FieldName = 'senha'
      Size = 30
    end
    object MLoginemail: TStringField
      FieldName = 'email'
      Size = 30
    end
  end
  object DSLogin: TDataSource
    DataSet = MLogin
    Left = 416
    Top = 416
  end
  object QPermissoes: TADOQuery
    Connection = DBConnection
    CursorType = ctStatic
    BeforeOpen = QPermissoesBeforeOpen
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select rel.idUsuario, rel.idTela, t.name from tela t, rel_usuari' +
        'o_tela rel where t.id = rel.idTela and rel.idUsuario = :id')
    Left = 152
    Top = 488
  end
  object PPermissoes: TDataSetProvider
    DataSet = QPermissoes
    Left = 240
    Top = 488
  end
  object MPermissoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PPermissoes'
    Left = 328
    Top = 488
    object MPermissoesidUsuario: TIntegerField
      FieldName = 'idUsuario'
    end
    object MPermissoesidTela: TIntegerField
      FieldName = 'idTela'
    end
    object MPermissoesname: TStringField
      FieldName = 'name'
      Size = 10
    end
  end
  object DSPermissoes: TDataSource
    DataSet = MPermissoes
    Left = 416
    Top = 488
  end
end
