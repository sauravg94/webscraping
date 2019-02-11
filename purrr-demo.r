data<-c(1,3,5,7,9)
map(data,function(x){
  x=x+3
})

1:10 %>% 
  map(rnorm,10) %>% 
  map_dbl(mean)

my_vector <- c(1.0212, 2.483, 3.189, 4.5938)
map_dbl(my_vector, round)

# using anonympus function
map_dbl(my_vector,~.x*15)

