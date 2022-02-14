function SendCurl(url, data) 
    print('Enviando CURL', url, json.encode(data))
    PerformHttpRequest(url, function(err, text, headers) 
        return text
    end, 'POST', json.encode(data), { ['Content-Type'] = 'application/json' })
end

exports('SendCurl', SendCurl)