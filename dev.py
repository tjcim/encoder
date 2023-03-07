import sys
from app import app
from livereload import Server


if __name__ == "__main__":
    app.debug = True
    server = Server(app.wsgi_app)
    server.watch("templates/")
    server.watch("static/")
    server.serve(port=sys.argv[1], host="0.0.0.0")
