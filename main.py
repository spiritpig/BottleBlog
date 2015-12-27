from bottle import route, run, template

@route('/')
@route('/hello/<name>')
def greet(name='Stranger'):
    return template('Hello {{name}}, are you?', name=name)

run(host='localhost', port=8080, debug=True)
