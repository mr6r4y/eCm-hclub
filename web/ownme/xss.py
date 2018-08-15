#!/usr/bin/env python


import argparse
import cherrypy
import re

import server


class Root(server.Page):
    @cherrypy.expose
    def index(self):
        return self.render("xss-index.mako")

    @cherrypy.expose
    def basic1(self, q):
        return self.render("xss-basic-1.mako", q=q)

    @cherrypy.expose
    def basic2(self, q):
        return self.render("xss-basic-2.mako", q=q)

    @cherrypy.expose
    def xss1(self, q):
        return self.render("xss-1.mako", q=q)

    @cherrypy.expose
    def xss2(self, q):
        def esc(a):
            return re.subn("[<>//]", "", a)[0]

        return self.render("xss-2.mako", q=esc(q))

    @cherrypy.expose
    def xss3(self):
        return self.render("xss-3.mako")


def get_args():
    parser = argparse.ArgumentParser(description="XSS PoC")
    args = parser.parse_args()

    return args


def main():
    args = get_args()
    server.WWWServer().run(Root)


if __name__ == '__main__':
    main()
