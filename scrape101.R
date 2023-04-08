library(rvest)
library(tidyverse)

link <- "https://www.imdb.com/search/title/?title_type=feature&num_votes=25000,&genres=adventure&sort=user_rating,desc"

page <- read_html(link)

name %>% 
  html_text()

movie_links <- page %>% 
  html_nodes(".lister-item-header a") %>% 
  html_attr("href") %>% 
  str_replace_all(. , "?ref_=adv_li_tt", "fullcredits/?ref_=tt_cl_sm") %>% 
  paste("https://www.imdb.com", ., sep = "")

 
year <- page %>% 
  html_nodes(".text-muted.unbold") %>% 
  html_text()
# year

rating <- page %>% 
  html_nodes(".ratings-imdb-rating strong") %>% 
  html_text()
# rating

synopsis <- page %>% 
  html_nodes(".ratings-bar+ .text-muted") %>% 
  html_text()
# synopsis


get_cast <- function(movie_link){
  movie_page <- read_html(movie_link)
  movie_cast <- movie_page %>% 
    html_nodes("")
}


movies <- data.frame(name, year, rating, synopsis, stringsAsFactors = FALSE)
View(movies)

