def world_time(time, jst)
  (time + jst * 3600).strftime("%Y/%m")
end
