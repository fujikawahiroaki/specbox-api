# コレクション設定モデル
class CollectionSetting < BaseModel
  skip_default_columns
  table :collection_settings do
    primary_key id : UUID
    column created_at : Time, autogenerated: true
    column user_id : Int32?
    # コレクション名のフルネーム
    column collection_name : String = "", allow_blank: true
    # 機関コード(コレクション名の略号)
    column institution_code : String = "", allow_blank: true
    # 標本IDの最終番号
    column latest_collection_code : Int32 = 0
    # 備考
    column note : String = "", allow_blank: true
  end
end
