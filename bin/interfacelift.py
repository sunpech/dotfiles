#!/usr/bin/env python
import os
import urllib2

# Where this script was originally from:
# http://www.geekyourmind.com/2010/05/20/interfacelift-wallpaper-downloader-script/


#############################################
# 1080p
url       = 'http://interfacelift.com/wallpaper/downloads/date/hdtv/1080p/'
directory = '/Users/sunpech/Pictures/Wallpapers/interfacelift_1080p'
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
start     = '<a href="/wallpaper/7yz4ma1'  #check interfacelift.com to see what the randomly generated part is at the end
end       = '">'
useragent = 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 (.NET CLR 3.5.30729)'

count     = 1
while count < 999999:
        data       = urllib2.urlopen(url + "index" + str(count) + ".html").read()
        currentpos = 0
        urlcount   = 0
        while True:
                index      = data.find(start, currentpos)
                if index == -1:
                        break
                endofindex = data.find(end, index)
                currentpos = index + 1
                urlcount  += 1
                if os.path.exists(directory + data[index+25:endofindex]):
                        print 'Directory up to date. Found existing file.'
                        quit()
                os.system('wget -P ' + directory + ' -nc -U "' + useragent + '" ' + 'http://interfacelift.com' + data[index+9:endofindex])
        if urlcount == 0:
                quit()
        count += 1
