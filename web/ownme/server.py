import os

import cherrypy
from mako.lookup import TemplateLookup


CURRENT_PATH = os.path.abspath(os.path.dirname(__file__))
TEMPLATE_PATH = os.path.join(CURRENT_PATH, "templates")
STATIC_PATH = os.path.join(CURRENT_PATH, "static")


class Page(object):
    def __init__(self, template_path):
        self.template_path = template_path
        self.lookup = TemplateLookup(directories=[self.template_path])

    def render(self, template, **kwarg):
        tmpl = self.lookup.get_template(template)
        return tmpl.render(**kwarg)


class WWWServer(object):
    def __init__(self):
        cherrypy.config.update({
            "server.socket_host": "127.0.0.1",
            "server.socket_port": 8000,

            # "server.ssl_module":"pyopenssl",

            # "server.ssl_certificate": self.ssl_certificate,
            # "server.ssl_private_key": self.ssl_private_key,
            # "server.ssl_certificate_chain": self.ssl_certificate_chain,

            "tools.encode.on": True,
            "tools.decode.on": True,
            "tools.encode.encoding": "utf-8",
            "tools.decode.encoding": "utf-8",
            # "tools.caching.on": True,
            # "tools.caching.delay": 10,
            "log.screen": False,   # Set to False because it ruins my global application logger
            # "tools.sessions.on": True,
            # "tools.sessions.storage_type": "file",
            # "tools.sessions.storage_path": session_dir,
            # "tools.sessions.timeout": 60,
        })

    def run(self, page_class):
        conf = {
            "/imgs": {
                "tools.staticdir.on": True,
                "tools.staticdir.dir": os.path.join(STATIC_PATH, "imgs")
            },
            "/js": {
                "tools.staticdir.on": True,
                "tools.staticdir.dir": os.path.join(STATIC_PATH, "js")
            },
            "/css": {
                "tools.staticdir.on": True,
                "tools.staticdir.dir": os.path.join(STATIC_PATH, "css")
            }
        }
        cherrypy.quickstart(page_class(TEMPLATE_PATH), config=conf)
