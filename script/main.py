import sqlite3
from bottle import route, run, template, static_file
from bottle import jinja2_view as view, jinja2_template as template


@route('/hello/<name>')
def greet(name='Stranger'):
    articleDB = sqlite3.connect('db/blogDb.db')
    c = articleDB.cursor()
    c.execute("SELECT title, describ, content from article;")
    rows = c.fetchall()
    c.close()
    return template('page/index', name=name, articles=rows)

@route('/hello/<filename:path>')
def server_static(filename):
    return static_file(filename, root='.')

@route('/hello/firstArticle')
def getArticle():
    return template('page/firstArticle')

run(host='localhost', port=8080, debug=True)
