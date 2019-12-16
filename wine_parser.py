import csv
import json
import scrapy


class InfoSpider(scrapy.Spider):
    """
    Spider crawls every url from wine_urls.txt file
    and scrapes useful wine data into json file
    """

    custom_settings = { # force utf-8 encoding
        'FEED_EXPORT_ENCODING': 'utf-8',
    }
    name='infospider'

    def start_requests(self):

        urls = []

        with open('wine_urls.txt', 'r') as wine_urls:
            for line in wine_urls:
                urls.append(line.strip('\n'))

        for url in urls:
            yield scrapy.Request(url=url, callback=self.parse)

    def parse(self, response):
        
        response_dict = {}

        """
        This part scrapes the webpage by XPath elements.
        Each element is stored as key-value pair in dictionary.
        Keys are in czech for easier data analysis
        """
        wine_category = response.xpath('//a[contains(@class, "CMSBreadCrumbsLink")]/@href').getall()[1]
        wine_category = wine_category.split('/')[2]
        response_dict['Druh vína'] = wine_category

        wine_name = response.xpath('//h1[contains(@itemprop, "name")]/text()').get()
        response_dict['Název'] = wine_name

        winery = response.xpath('//div[contains(@class, "description")]//a/text()').get()
        response_dict['Vinařství'] = winery

        grade_data = response.xpath('//div[contains(@class, "description")]/text()').getall()[3].split('|')[2:5]

        try:
            sugar = grade_data[0].strip(' \xa0\n')
        except IndexError:
            sugar = ""
        
        try:
            grade = grade_data[1].strip(' \xa0\n')
        except IndexError:
            grade = ""

        try:
            year = grade_data[2].strip(' \xa0\n')
        except IndexError:
            year = ""

        response_dict['Kategorie'] = sugar
        response_dict['Přívlastek'] = grade
        response_dict['Rok'] = year

        analytics = response.xpath('//div[contains(@id, "analytics")]')
        rows = analytics.xpath('//td').getall()


        # parse wine analysis table into dict
        result_len = len(rows) - 1
        for row_i in range(0, result_len, 2):
            attribute = rows[row_i].strip('<td></td>')
            value = rows[row_i + 1].strip('<td></td>')

            if attribute == 'Objem' and (value == '' or value == None):
                value = '0,75 l'

            if attribute == 'Alkohol' and (value == '' or value == None):
                value = '12,5 %'
                
            response_dict[attribute] = value

        yield response_dict

        
        