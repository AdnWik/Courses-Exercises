class OnlineShop:
    sector = 'electronics'
    sector_code = 'ELE'
    is_public_company = False


def describe_attrs():
    for atr, value in OnlineShop.__dict__.items():
        if not atr.startswith('__'):
            print(f'{atr} -> {value}')


describe_attrs()