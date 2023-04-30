select weather.id As 'Id'
    from weather
        join 
            weather w on DATEDIFF(weather.recordDate,w.recordDate)=1
            and weather.temperature>w.temperature