#!/usr/bin/ruby -w

require 'rexml/document';
include REXML;

xmlfile = FILE.new('site.xml');
xmldoc = Document.new(xmlfile)

root = xmldoc.root
puts "Root element : " + root.attributes["shelf"]

xmldoc.elements.each("collection/platform"){ 
   |e| puts "platform title : " + e.attributes["title"] 
}

xmldoc.elements.each("collection/platform/type") {
   |e| puts "platform Type : " + e.text 
}

xmldoc.elements.each("collection/platform/description") {
   |e| puts "platform Description : " + e.text 
}