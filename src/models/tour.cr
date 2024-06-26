# 採集行モデル
class Tour < BaseModel
  skip_default_columns
  table :tours do
    primary_key id : UUID
    column created_at : Time, autogenerated: true
    column title : String = "", allow_blank: true
    column start_date : Time
    column end_date : Time
    # 採集ルートの track : LineString srid = 4326 は未実装のためスキップ
    column note : String = "", allow_blank: true
    column image1 : String?
    column image2 : String?
    column image3 : String?
    column image4 : String?
    column image5 : String?
    column user_id : Int32?
    has_many collect_points_tour : CollectPointsTour
    has_many collect_points : CollectPoint, through: [:collect_points_tour, :collect_points]
  end
end
