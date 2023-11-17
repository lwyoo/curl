# app.py

from http.server import SimpleHTTPRequestHandler
from socketserver import TCPServer

PORT = 8000

handler = SimpleHTTPRequestHandler
with TCPServer(("", PORT), handler) as httpd:
    print(f"Serving at http://localhost:{PORT}")
    httpd.serve_forever()
