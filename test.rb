require "rubygems"
require "curb"

passes = 0
fails = 0
`ls *.sparql`.split.map {|i| i.chomp }.each {|i|
  expected = "true" if i.match /true/
  expected = "false" if i.match /false/
  req = Curl::Easy.http_post "http://dbpedia.org/sparql", Curl::PostField.content('query', open(i).readlines.join)
  if req.body_str == expected
	  puts "PASSED\t#{i}\n"
	  passes += 1
  else
	  puts "FAILED\t#{i}\n"
	  fails += 1
  end
}
puts "\n#{passes} passes, #{fails} fails - #{(passes.to_f / (passes.to_f + fails.to_f)) * 100}% overall"
