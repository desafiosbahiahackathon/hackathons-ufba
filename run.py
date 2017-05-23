import socketserver

from http import server

app = socketserver.TCPServer(("", 80), server.SimpleHTTPRequestHandler)

if __name__ == '__main__':
    app.serve_forever()
