# dbpedia-tests

If you find something weird in dbpedia that's not just an inaccuracy in Wikipedia, add a test here. Even if it's not weird, add tests. If the data that you are testing might be a bit controversial, do put some justificatory links (perhaps to Wikipedia) in comments.

## SPARQL testing

Testing dbpedia is easy! You simply use the SPARQL ASK query. Then you specify in the filename whether or not it should evaluate as true or false. The file name should either end with _true.sparql or _false.sparql and contain no other queries except an ASK query.

# To-do

- Write a test-harness (currently planning to write a Python or Ruby script that uses curl to post the query to dbpedia.org/sparql and parse back the JSON response.
- Write tests
- ???
- PROFIT
