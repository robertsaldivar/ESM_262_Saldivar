# find the maximum speed
speeds = runif(min=0, max=100, n=300)

maxspeed=0
for ( i  in 1:length(speeds)) {
  maxspeed = ifelse(speeds[i] > maxspeed, speeds[i], maxspeed)
}

maxspeed


# find the minium speed
speeds = runif(min=0, max=100, n=300)

minspeed=maxspeed
for ( i  in 1:length(speeds)) {
  minspeed = ifelse(speeds[i] < minspeed, speeds[i], minspeed)
}

minspeed


# find the average speed
speeds = runif(min=0, max=100, n=300)

sum_speed=0
for ( i  in 1:length(speeds)) {
  sum_speed = sum_speed + speeds[i]
}

avespeed = sum_speed/length(speeds)

avespeed


yr=1
pollutant_level = 5

# loop
while (pollutant_level < 30) && (yr < 1000) {
  # increase pollutant
  pollutant_level = pollutant_level + 0.001* pollutant_level 
  # keep track of time
  yr = yr + 1
}

pollutant_level

compute_NPV = function(value, time, discount) {
     result = value/(1 + discount)^time
     return(result)
 }

time = runif(min = 1, max = 10, n = 10)
value = runif(min = 1, max = , n=15)
discount = runif(min = 0.01, max = 0.04, n = 7)

compute_NPV()