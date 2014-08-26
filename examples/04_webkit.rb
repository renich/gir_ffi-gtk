#!/usr/bin/env ruby
#
# Based on http://www.idle-hacking.com/2010/02/webkit-ruby-and-gtk/
$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '..', 'lib')
require 'gir_ffi-gtk3'

GirFFI.setup :WebKit, '3.0'

Gtk.init

win = Gtk::Window.new :toplevel
wv = WebKit::WebView.new
win.add(wv)
win.show_all
wv.open('http://www.google.com/')
win.signal_connect("destroy") { Gtk.main_quit }
Gtk.main
