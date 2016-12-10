import os.path
import subprocess
from subprocess import call


if os.path.isfile('/tmp/numOfUpdates') == False:
    call(["notify-send", "-u", "low", "<span color='#F4BC87'>You have no new updates</span>"])
else:
    # read the updates line by line into a list
    with open('/tmp/numOfUpdates') as f:
        listOfPkgs = f.read().splitlines()
    #print(listOfPkgs)
    pkgNo = len(listOfPkgs)

    # now make a well-formed parameter to dunst:
    #
    title = "<span color='#D28B71'><u>Updates Available:</u></span>"
    greyspan = "<span color='#D0D0D0'>"
    greenspan = "<span color='#99CC99'>"
    endspan = "</span>"
    attribute = False
    query = ""
    for pkg in listOfPkgs:
        if attribute == False:
            query += str(greyspan)
            attribute = not attribute
        else:
            query += str(greenspan)
            attribute = not attribute
        query += str(pkg)
        if pkgNo > 1:
            query += str('\\n')
        query += str(endspan)
        pkgNo = pkgNo - 1
    #print(query)
    call(["notify-send", "-u", "low", title, query])
    call(["rm", "/tmp/numOfUpdates"])
    call(["touch", "/tmp/numOfUpdates"])


