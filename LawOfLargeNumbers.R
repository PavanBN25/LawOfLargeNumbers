#law of large number  with mean=0, stddev=1
#expected mean is 68.2%  for 1000000 we are getting 0.682854
num<-1000000  # specifying sample size
  n<-num
  
  x<-rnorm(num, mean = 0, sd = 1) #generating random variable
  success_count<-0
  fail_count<-0
  while(num>0) #iterate over vector of numbers
  {
    if((x[n-num+1]>=-1 )&(x[n-num+1]<=1 )) #check for iterated variable
    {
      success_count<-success_count+1 #increase success counter for every hit
    }
    else
    {
      fail_count<-fail_count+1 #increase counter for every miss
    }
    num<-num-1; # decrementing the counter 
  }
  
  mean= success_count/n #calculate hit-ratio
  print(mean) #display output 
  
  
  