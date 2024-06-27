import requests
from bs4 import BeautifulSoup

url = "https://www.bigc.co.th/?utm_source=google&utm_medium=pmax&utm_campaign=idacbkk_ecom_bigc_gg_pmax_free-delivery_con&utm_content=alway-on&gad_source=1&gclid=Cj0KCQjwu8uyBhC6ARIsAKwBGpTXQURDpiuSv-bw__2GOR6kIdSXg77ZwL2GpwuPEGUGRg8TKOeECBoaAgy3EALw_wcB"
web_data = requests.get(url)

# ตรวจสอบว่าได้ข้อมูลจากเว็บไซต์เรียบร้อยแล้ว
if web_data.status_code == 200:
    soup = BeautifulSoup(web_data.text, 'html.parser')
    
    # ค้นหา div ทุกตัวที่มีคลาส productCard_title__f1ohZ
    product_divs = soup.find_all("div", {"class": "productCard_title__f1ohZ"})
    
    if product_divs:
        for product_div in product_divs:
            # ค้นหาแท็ก a ภายใน div นั้น
            product_link = product_div.find("a")
            if product_link:
                product_title = product_link.text.strip()
                product_href = product_link['href']
                print(f"Product Title: {product_title}")
                print(f"Product URL: {product_href}")
    else:
        print("ไม่พบผลิตภัณฑ์ที่ต้องการ")
else:
    print(f"ไม่สามารถเข้าถึงเว็บไซต์ได้ สถานะการตอบกลับ: {web_data.status_code}")