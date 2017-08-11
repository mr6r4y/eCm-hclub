#!/usr/bin/env python


import os
import argparse

import re
import cherrypy
from mako.lookup import TemplateLookup


CURRENT_PATH = os.path.abspath(os.path.dirname(__file__))
TEMPLATE_PATH = os.path.join(CURRENT_PATH, "templates")


class Page(object):
    def __init__(self, template_path):
        self.template_path = template_path
        self.lookup = TemplateLookup(directories=[self.template_path])

    def render(self, template, **kwarg):
        tmpl = self.lookup.get_template(template)
        return tmpl.render(**kwarg)


class Root(Page):
    @cherrypy.expose
    def basic(self, q):
        return self.render("basic.mako", q=q)

    @cherrypy.expose
    def xss1(self, q):
        return self.render("xss1.mako", q=q)

    @cherrypy.expose
    def xss2(self, q):
        return self.render("xss2.mako", q=q)

    @cherrypy.expose
    def xss3(self, q):
        def esc(a):
            return re.subn("[<>//]", "", a)[0]

        return self.render("xss3.mako", q=esc(q))

    @cherrypy.expose
    def xss4(self):
        return self.render("xss4.mako")


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

    def run(self):
        cherrypy.quickstart(Root(TEMPLATE_PATH))


def get_args():
    parser = argparse.ArgumentParser(description="XSS PoC")
    args = parser.parse_args()

    return args


def main():
    args = get_args()
    WWWServer().run()


if __name__ == '__main__':
    main()
