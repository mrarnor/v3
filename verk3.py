#from sys import argv
from bottle import *



@route("/Static/<skra>")
def stati_skra(skra):
    return static_file(skra, root='./static')


@route("/")
def index():
    return """
    <h2>Verkefni 3</h2>
    <p> <a href="/a">Liður A</a></p>
    <p> <a href="/b">Liður B</a></p>
"""

@route("/a")
def index():
    return template("temp-A.tpl")

@route("/sida/<kt>")
def page(kt):
    return template("temp-kt.tpl", kt=kt)




@route("/b")
def index():
    return template("index.tpl")

	
@route("/c")
def index():
    return template("index2.tpl")




@error(404)
def villa(error):
    return "<h2>Þessi síða finnst ekki</h2>"



#run(host="localhost", port=8080, reloader=True, debug=True)

run(host="0.0.0.0", port=os.environ.get('PORT'))
