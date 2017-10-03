#!/usr/bin/env ruby

DRAFTS_DIR = '_drafts/'

draft = ARGV[0].strip().squeeze(" ")
name = draft.gsub(/\s+/, "-")

File.open(DRAFTS_DIR + name + '.md', 'w') {
	|f| f.write(
		"---\nlayout: post\ntitle: " + draft + "\nauthor: \nauthorlink: \ncategories: \ntags: []\nseries: \nseriesnumber: \nimage:\n  feature: \n  teaser: \n  credit: \n  creditlink: \n---\n\n\n"
	)
}

puts("[+] Created " + name + " draft")
