json.data do 
    json.company do
        json.partial! 'v1/companies/company', company: company
    end
end