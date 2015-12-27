from bottle import route, run, template, static_file

@route('/hello/<name>')
def greet(name='Stranger'):
    return template('index', name=name)

@route('/hello/<filename:path>')
def server_static(filename):
    return static_file(filename, root='.')

run(host='localhost', port=8080, debug=True)
