class OnlineShop:
    sector = 'electronics'
    sector_code = 'ELE'
    is_public_company = False



del(OnlineShop.sector_code)

print([atr for atr in OnlineShop.__dict__.keys() if not atr.startswith('__')])