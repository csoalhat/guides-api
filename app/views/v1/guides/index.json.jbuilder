json.data do 
    json.array! @guides do |guide|
        json.partial! 'v1/guides/guide', guide: guide
    end
end