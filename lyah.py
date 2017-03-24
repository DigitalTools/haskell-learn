# /usr/local/bin/custom_chrome.sh 
# "Profile 14"
# "http://learnyouahaskell.com/making-our-own-types-and-typeclasses#derived-instances"

import os
import sys

chapterArg = sys.argv[1]
sectionArg = sys.argv[2]

urlBase = "http://learnyouahaskell.com/"

chapterPaths = {
  "08": {
    "path": "making-our-own-types-and-typeclasses",
    "sections": {
      "04": "derived-instances",
      "05": "type-synonyms"
    }
  }
}

GOOGLE_CHROME = "Google\ Chrome.app"
PROFILE = "Profile 14"

chapter = chapterPaths[chapterArg]
chapterPath = chapter["path"]
sectionPath = chapter["sections"][sectionArg]

url = urlBase + chapterPath + "#" + sectionPath
args = "-a " + GOOGLE_CHROME
chrome_args = "--args --profile-directory=" + PROFILE
bashCommand = f"open {url} {args} {chrome_args}"
print(bashCommand)
os.system(bashCommand)
