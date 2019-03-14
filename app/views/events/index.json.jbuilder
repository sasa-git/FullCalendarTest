json.array! @events, partial: 'events/event', as: :event
json.array!(@events) do |event|

  json.extract! event, :title

  json.start event.start_date

  # json.end event.start_date + Rational(1, 24)
  # ↑今だけ。jsで終了時刻なしのイベントの表示設定が可能

  json.url event_url(event, format: :html)

end
