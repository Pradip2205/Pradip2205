# -*- coding: utf-8 -*-
"""
Created on Thu Feb 27 14:19:09 2020

@author: pradi_000
"""
import scrapy
import re
class QuoteSpider(scrapy.Spider):
    name= 'quotes'
    page_number= 1502
    start_urls = ['https://stackoverflow.com/questions/tagged/python?tab=newest&page=1501&pagesize=15']
    def parse(self, response):
        all_dev_quotes = response.css('div.question-summary')
        for quote in all_dev_quotes:
            
            title = quote.css(".question-hyperlink::text").extract()
            summary= quote.css("div.excerpt::text").extract()
            tag= quote.css(".post-tag::text").extract()
            yield {'Questions':title,
                   'Summary': [re.sub("\s{2,}","",summary[0])],
                   'Tag':tag}
            
            next_page= 'https://stackoverflow.com/questions/tagged/python?tab=newest&page='+str(QuoteSpider.page_number)+'&pagesize=15'
    
        if QuoteSpider.page_number <=2000:
            QuoteSpider.page_number +=1
            yield response.follow(next_page, callback= self.parse)
            
            
            
            
           