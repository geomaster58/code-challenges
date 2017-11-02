def total_sorter invoices
  invoices.sort_by {|x| x.total}.reverse 
end


Invoice = Struct.new(:name, :total, :category)
google = Invoice.new("Google", 500, "Marketing")
amazon = Invoice.new("Amazon", 1000, "eCommerce")
yahoo = Invoice.new("Yahoo", 300, "Marketing")

invoices = [google, amazon, yahoo]

p total_sorter invoices