#!/usr/local/env python3
# Fork by @michalspano, Nord Theme support

import json
import sys
import getpass
from datetime import datetime
from pprint import pprint

# Constants
path_to_todos: str 		= "/Users/" + getpass.getuser() + "/.todos.json"
line_spacing:str   		= "15px"
color_id: str       	= "#D8DEE9"
color_due: str    		= "#8FBCBB"
color_subject: str		= "#5E81AC"
color_project: str 		= "#E5E9F0"
color_context: str 		= "#c8c2df"

# ID wrapper
# Change ''
sym: list               = ['[', ']']

# Vertical or Horizontal alignment
# Change 'align to ''
# align: str = ''
align: str = 'display: inline-block;'


def formatDate ( date ):
	return datetime.strptime(str(date), '%Y-%m-%d').strftime('%a, %b %d')

def printLineStart ():
	return f"<div style=\"padding-top: {line_spacing}; {align}; padding: 10px; margin-left: -10px;\">"

def printLineEnd ():
	return "</div>"

def printID ( id ):
	out = "<div style=\"display: inline; color: "+color_id+";\">"
	#format id to have a unified look
	if( id/10 < 1 ):
		out += f"{sym[0]}{0}{id}{sym[1]}&nbsp;&nbsp;</div>"
	elif( id/10 < 10 ):
		out += f"{sym[0]}{id}{sym[1]}&nbsp;&nbsp;</div>"
	else:
		out += "</div>"
	return out

def printDue ( due ):
	if( str(i['due']) != "" ):
		out = "<div style=\"display: inline; color: "+color_due+";"
		if( datetime.strptime(i['due'], '%Y-%m-%d') < datetime.now() ):
			out += "font-weight: bold;"
		out += "\">"+formatDate(i['due'])+"&nbsp;&nbsp;</div>"
	else:
		out = "<div style=\"display: inline;\"></div>"
	return out

def printSubject ( subject, projects, contexts, completed ):
	#out = subject
	#check for projects
	for i in projects:
		subject = subject.replace("+"+i, "<div style=\"display: inline; color: "+color_project+";\">"+"+"+i+"</div>")
	#check for contexts
	for j in contexts:
		subject = subject.replace("@"+j, "<div style=\"display: inline; color: "+color_context+";\">"+"@"+j+"</div>")
	out = "<div style=\"display: inline; color: "+color_subject+"; "
	if(completed):
		out += "text-decoration: line-through;"
	out += "\">"+subject+"</div>"
	return out

with open( path_to_todos, "r", encoding="utf-8" ) as file:
	data = json.load(file)

out = "<div>"

for i in data:
	if ( not(i['archived']) ):
		out += printLineStart() + printID( i['id'] ) + printDue( i['due'] ) + printSubject( i['subject'], i['projects'], i['contexts'],  i['completed']  ) + printLineEnd()
out += "</div>"

sys.stdout.buffer.write( out.encode("utf8") )
