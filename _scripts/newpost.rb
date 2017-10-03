#!/usr/bin/env ruby

require 'date'

POSTS_DIR = '_posts/'

post = ARGV[0].strip().squeeze(" ")
name = Date.today.strftime("%Y-%m-%d-") + post.gsub(/\s+/, "-")

File.open(POSTS_DIR + name + '.md', 'w') {
	|f| f.write(
		"---\nlayout: post\ntitle: " + post + "\nauthor: \nauthorlink: \ncategories: \ntags: []\nseries: \nseriesnumber: \nimage:\n  feature: \n  teaser: \n  credit: \n  creditlink: \n---\n\n\n"
	)
}

puts("[+] Created " + name + " post")
