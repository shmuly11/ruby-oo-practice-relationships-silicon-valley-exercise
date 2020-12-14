require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

pools = Startup.new("pools", "peter", "pools.com")
ducks = Startup.new("ducks", "larry", "ducks.com")
swans = Startup.new("swans", "moe", "swans.com")

venture1 = VentureCapitalist.new("fun_group", 30000000)
venture2 = VentureCapitalist.new("high_group", 750000000)
venture3 = VentureCapitalist.new("down_group", 4000000000)

round1 = FundingRound.new(pools, venture1, "Seed", 4000000)
round2 = FundingRound.new(swans, venture2, "Angel", 10000000)
round3 = FundingRound.new(swans, venture2, "Series A", 7000000)
round4 = FundingRound.new(swans, venture3, "Series B", 150000000)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line