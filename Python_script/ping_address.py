import os

ip_list = []
ip_address = input("Provide an IP address you want to ping: ")

ip_list.append((ip_address))

f = open("ping_logs.txt", "a")

for ip in ip_list:
    response = os.popen(f"ping {ip}").read()
    if "Received = 4" and "Approximate" in response:
        print(f"UP {ip} Ping Successful")
        f.write(f"UP {ip} Ping Successful" + "\n")
        f.close()
    else:
        print(f"DOWN {ip} Ping Unsuccessful")
        f.write(f"Down {ip} Ping Unsuccessful" + "\n")
        f.close()