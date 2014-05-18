json.array!(@edetails) do |edetail|
  json.extract! edetail, :id, :ename, :age, :sex, :bpay, :pf
  json.url edetail_url(edetail, format: :json)
end
