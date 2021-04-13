class Message < ApplicationRecord

def message_shops
shops =Shop.where("shop_name LIKE '%#{keywords}%' AND shop_city LIKE '%#{keywords2}%' AND shop_type LIKE '%#{keywords3}%'") if keywords||keywords2||keywords3.present?

return shops

end

end

