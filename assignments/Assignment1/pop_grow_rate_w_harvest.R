pop_grow_rate_w_harvest = function(population, hunters, growth_rate=0.05, carrying_capacity = 2000, attack_rate = 0.05, handling_time = 0.2) {
  
  #make sure that population is not negative
  population = ifelse( (population < 0), return("population cannot be less than 0"), population )
  
  #make sure that # of hunter is not negative
  hunters = ifelse( (hunters < 0), NA, hunters)
  
  results = (growth_rate * population * (1 - population/carrying_capacity) - (hunters * (attack_rate * population)/(1 + attack_rate * handling_time * population)))
  
  return(results)
}

