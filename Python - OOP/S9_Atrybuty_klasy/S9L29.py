class OnlineShop ():
    sector = 'electronics'
    sector_code = 'ELE'
    is_public_company = False



OnlineShop.country = 'Poland'

print([atr for atr in OnlineShop.__dict__.keys() if not atr.startswith('__')])