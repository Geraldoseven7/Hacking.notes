import netifaces

def get_mac_address(interface='wlo1'):
    addrs = netifaces.ifaddresses(interface)
    if netifaces.AF_LINK in addrs:
        return addrs[netifaces.AF_LINK][0]['addr']
    else:
        return None

print(get_mac_address())


