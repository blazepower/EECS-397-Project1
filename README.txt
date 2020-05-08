Started by using lynx -dump to get all passing data for 2019 NFL season
Then using VI and basic delete commands, I deleted stuff that wasn't needed (extraneous links etc.)
I then used grep to get rid of entries from players that are not quarterbacks (These players did not have some of the data needed because they aren't quarterbacks (no QBR, QBWL, etc.) by moving the qbs into another file (grep -i qb passingdata2.txt > passingdata.txt).
Then I used awk to move the data I cared about to another new text file (awk '{ print $2, $3, etc. }' >> data.txt) I appended this using >> because I had originally put in my own headers in the data.txt file.
I then used sed to remove the number (left over from lynx dump) before each name (cat data.txt | sed 's/^.....//' > data.txt).  I had to reform my headers after this.
I then used grep to copy the Pro Bowl Quarterbacks into another file (grep \* data.txt > ProBowl.txt). (Didn't end up doing anything with this, byt in the future, this could be nice to have especially if there was some cgi to make a comparison graphic).
I then used AWK to make a table showing the Quarterbacks and the data which I had cleaned this is visiable in the html file.
