json.data do 
    json.user do
        json.partial! 'v1/guides/guide', guide: @guide
    end
end