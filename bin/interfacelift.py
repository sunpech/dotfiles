#!/usr/bin/env python
import os
import urllib2
import re

# Original
#url       = 'http://interfacelift.com/wallpaper/downloads/date/hdtv/1080p/'
#directory = '/datapool/public/wallpaper/1080p'

#############################################
# 1080p
#url       = 'http://interfacelift.com/wallpaper/downloads/date/hdtv/1080p/'
#directory = '/Users/sunpech/Pictures/Wallpapers/interfacelift_1080p'
#############################################
# 1680x1050
#url       = 'http://interfacelift.com/wallpaper/downloads/date/widescreen/1680x1050/'
#directory = '/Users/sunpech/Pictures/Wallpapers/interfacelift_1680x1050'
#############################################
# 1920x1200
#url       = 'http://interfacelift.com/wallpaper/downloads/date/widescreen/1920x1200/'
#directory = '/Users/sunpech/Pictures/Wallpapers/interfacelift_1920x1200'
#############################################
# 960x800
#url       = 'http://interfacelift.com/wallpaper/downloads/date/google_android/960x800/'
#directory = '/Users/sunpech/Pictures/Wallpapers/interfacelift_960x800'
#############################################
# 1400x1050
#url       = 'http://interfacelift.com/wallpaper/downloads/date/fullscreen/1400x1050/'
#directory = '/Users/sunpech/Pictures/Wallpapers/interfacelift_1400x1050'
#############################################
# iPad
url 	  = 'http://interfacelift.com/wallpaper/downloads/date/apple_devices/ipad_1024x1024/'
directory = '/Users/sunpech/Pictures/Wallpapers/interfacelift_ipad_1024x1024'
#############################################


useragent = 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 (.NET CLR 3.5.30729)'
pattern   = '(?<=<a href=")/wallpaper/.*jpg(?=">)' # The regex pattern used. Check the README

count     = 1
while count < 999999:
        data       = urllib2.urlopen(url + "index" + str(count) + ".html").read()
        pictures   = re.findall(pattern, data)
        urlcount   = len(pictures)
        for picture in pictures:
                if os.path.exists(directory + picture):
                        print 'Directory up to date. Found existing file.'
                        quit()
                os.system('wget -P ' + directory + ' -nc -U "' + useragent + '" ' + 'http://interfacelift.com' + picture)
        if urlcount == 0:
                quit()
        count += 1