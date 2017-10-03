#!/usr/bin/env ruby

require 'date'
require 'fileutils'

POSTS_DIR = '_posts/'

draft = ARGV[0].strip()
draftname = File.basename(draft, ".md")
post = Date.today.strftime("%Y-%m-%d-") + draftname

FileUtils.mv(draft, POSTS_DIR + post + ".md")

puts("[+] Moved " + draftname + " post")
