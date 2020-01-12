import scrapy


class WineSpider(scrapy.Spider):
    """
    Spider crawls website for every wine url present.
    Then stores the data into wine_urls.txt file
    """

    name='winespider'

    def start_requests(self):

        url = 'http://www.vinotrh.cz/nabidka-vin?pages=0'
        yield scrapy.Request(url=url, callback=self.parse)

    def parse(self, response):
        wines = response.xpath('//div[contains(@class, "item-wine")]//a[contains(@class, "img-container")]/@href').getall()
        with open('wine_urls.txt', 'w+') as f:
            for w in wines:
                f.write('http://www.vinotrh.cz' + w + '\n')