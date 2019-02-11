baseURL<-"https://www.trustpilot.com/review/www.amazon.com?page="

url_list<-map_chr(1:20,function(x){
  paste0(baseURL,x)
})

# url_list<-unlist(url_list)

pages<-url_list %>% map(read_html)

# title- .link--dark
amzn_titles<-pages %>% 
  map(. %>% 
        html_nodes(".link--dark") %>% 
        html_text)

amzn_titles<-unlist(amzn_titles)