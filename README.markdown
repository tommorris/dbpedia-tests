# dbpedia-tests

If you find something weird in dbpedia that's not just an inaccuracy in Wikipedia, add a test here. Even if it's not weird, add tests. If the data that you are testing might be a bit controversial, do put some justificatory links (perhaps to Wikipedia) in comments.

## SPARQL testing

Testing dbpedia is easy! You simply use the SPARQL ASK query. Then you specify in the filename whether or not it should evaluate as true or false. The file name should either end with \_true.sparql or \_false.sparql and contain no other queries except an ASK query.

# Running tests

You need to have Ruby 1.8.6+ installed, as well as the Curl library and the Curb gem (Ruby bindings for Curl). Just run test.rb and watch the results come flowing in.
