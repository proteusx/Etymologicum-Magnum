# ETYMOLOGICUM MAGNUM

## DESCRIPTION

The [Etymologicum Magnum](https://en.wikipedia.org/wiki/Etymologicum_Magnum) is
an etymological dictionary of Greek words
compiled by some unknown grammarian in Constantinople during the 12th century
A.D. It contains nearly 10000 lemmata. The text can be found in pdf format
[here](https://archive.org/details/etymologikontome00etymuoft)
and [here](https://www.digitale-sammlungen.de/en/view/bsb10209806?page=7).
Also it is included in the [TLG CDROM](http://stephanus.tlg.uci.edu/tlgauthors/cd.authors.php)
in Beta Code format.


This utility can decode the text of Etymologicum Magnum, taken from the TLG CDROM,
into UTF-8 text, and then compile the data into a ABBYY Lingvo .dsl dictionary file that can be used with
the digital dictionary browser [GoldenDict]( http://goldendict.org/), so that
the Etymologicum Magnum can be searched like any other modern dictionary.

## DEPENDENCIES
The script is meant to be run within a Linux environment.
It requires the following:

* [tlg2u](https://github.com/proteusx/tlg2u), this is the beta-code to utf-8 text conversion
    utility.
* Bash
* Perl
* Patch
* Sed
* TLG CDROM. This is no longer sold, but it can be found via bit torrents.

To search the dictionary you will to have GoldenDict installed in the system.

## USAGE

Clone the Github repository: `git clone https://github.com/proteusx/Etymologicum-Magnum.git`

Edit the first line of the file `build-magnum.sh`. The variable `TLG_CDROM` must
contain the path to the TLG CDROM files.

Run the script: `build-magnum.sh`

If everything is in order the file **`dictionary/magnum.dsl`** should be produced.  Point
GoldenDict to this folder and the Etymologicum Magnum is ready to search.  Alternatively you may
copy the the contents of the folder **`dictionary`** to some other location.

There is also a release with `magnum.dsl` compiled and ready to use, together
with its icon and annotations file.

## NOTES
The Etymologicum Magnum encoded in the TLG CDROM is sourced from this hard copy edition:
*Etymologicum magnum, Gaisford, T. (Ed) Oxford University Press, 1848, 1967.*


## SEE ALSO
Other Ancient Greek digital dictionaries:
<https://github.com/proteusx/Suda-For-GoldenDict>

<https://github.com/proteusx/Hesychius-For-GoldenDict>



<!-- vim: set tw=80 spell fo=tq: -->
