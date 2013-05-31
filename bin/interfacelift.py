#!/usr/bin/env python
import os, urllib2, re, sys, commands, random, time

# -- Changable Variables
# Original
#url             = 'http://interfacelift.com/wallpaper/downloads/date/2_screens/2880x900/' #Browse to the page that has all the wallpaper you want and paste here
#directory       = '/home/user/wallpaper/2880x900' #Path to download to

#############################################
# 1080p
#url       = 'http://interfacelift.com/wallpaper/downloads/date/hdtv/1080p/'
#directory = '/Users/sunpech/Copy/Wallpapers/interfacelift_1080p'
#############################################
# 1680x1050 (15" Macbook Pro)
#url       = 'http://interfacelift.com/wallpaper/downloads/date/widescreen/1680x1050/'
#directory = '/Users/sunpech/Copy/Wallpapers/interfacelift_1680x1050'
#############################################
# 1920x1200
#url       = 'http://interfacelift.com/wallpaper/downloads/date/widescreen/1920x1200/'
#directory = '/Users/sunpech/Copy/Wallpapers/interfacelift_1920x1200'
#############################################
# 2560x1440 (27" Mac display)
url        = 'http://interfacelift.com/wallpaper/downloads/date/widescreen/2560x1440/'
directory = '/Users/sunpech/Copy/Wallpapers/interfacelift_2560x1440'
#############################################
# 720x1280 (Galaxy Nexus Android)
#url        = 'http://interfacelift.com/wallpaper/downloads/date/android/720x1280_phone/'
#directory = '/Users/sunpech/Copy/Wallpapers/interfacelift_720x1280'
#############################################
# 960x800
#url       = 'http://interfacelift.com/wallpaper/downloads/date/google_android/960x800/'
#directory = '/Users/sunpech/Copy/Wallpapers/interfacelift_960x800'
#############################################
# 1400x1050
#url       = 'http://interfacelift.com/wallpaper/downloads/date/fullscreen/1400x1050/'
#directory = '/Users/sunpech/Copy/Wallpapers/interfacelift_1400x1050'
#############################################
# 1440x900 (13" Macbook air)
#url        = 'http://interfacelift.com/wallpaper/downloads/date/widescreen/1440x900/'
#directory = '/Users/sunpech/Copy/Wallpapers/interfacelift_1440x900'
#############################################
# iPad
#url      = 'http://interfacelift.com/wallpaper/downloads/date/apple_devices/ipad_1024x1024/'
#directory = '/Users/sunpech/Copy/Wallpapers/interfacelift_ipad_1024x1024'
#############################################
# Kindle Fire
#url     = 'http://interfacelift.com/wallpaper/downloads/date/android/amazon_kindle_fire/'
#directory   = '/Users/sunpech/Copy/Wallpapers/interfacelift_kindle_fire'
#############################################

stoponfind      = '1' # Set to 0 to download all files even if the file exists and 1 to stop when it finds where it left off
wgetpath        = '/usr/local/bin/wget' #Default on linux systems /usr/local/bin/wget on freebsd

# -- Should not need to edit below here unless something stops working --
useragent       = 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 (.NET CLR 3.5.30729)' #Fake useragent since wget is blocked
pattern         = '(?<=<a href=")/wallpaper/.*jpg(?=">)' # The regex pattern used to look up picture url paths
picturepattern  = '[^/]*$' # The regex pattern to pull picture filename to see if file exists
wallpapercount  = 0
count           = 1

while count < 9999999:
        headers    = { 'User-Agent' : useragent }
        request    = urllib2.Request(url + "index" + str(count) + ".html", None, headers)
        data       = urllib2.urlopen(request).read()
        Copy   = re.findall(pattern, data)
        urlcount   = len(Copy)
        for picture in Copy:
                m = re.search(picturepattern, picture)
                picturefile=m.group()
                if os.path.exists(directory + "/" + picturefile):
                        if stoponfind == "1":
                                print 'Directory up to date. Downloaded ' + str(wallpapercount) + ' new wallpaper.'
                                quit()
                status, output = commands.getstatusoutput(wgetpath + ' -P ' + directory + ' --random-wait -nc -U "' + useragent + '" ' + 'http://interfacelift.com' + picture)
                if status == 0:
                        print str(wallpapercount) + '. Downloaded http://interfacelift.com' + picture + ' ...'
                else:
                        print '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
                        print '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! WGET OUTPUT !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
                        print '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
                        print '----------------------------------------------------------------------------------'
                        print output
                        print '----------------------------------------------------------------------------------'
                        print '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
                        print '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
                        print '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
                        print str(wallpapercount) + '. DOWNLOAD FAILED check wget output above for reason.'
                        print 'Exiting script ... wget returned non 0 exit status code: ' + str(status)
                        quit()
                wallpapercount += 1
        if urlcount == 0:
                print "Downloaded " + str(wallpapercount) + " wallpaper from InterfaceLift."
                randomnum  = random.randint(5,10)
                print 'Sleeping for :' + str(randomnum)
                quit()
        count += 1
        randomnum  = random.randint(10,30)
        print 'Sleeping for :' + str(randomnum)
        time.sleep(randomnum)