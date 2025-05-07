# SH-ARCHIVE

Mechanism to classify PDF files according to it's content using OCR.

## Dependencies

- https://github.com/harkaitz/sh-runbook
- poppler-utils : For pdftotext
- tesseract, xpaint, ImageMagick : For OCR.

## Help

archive

    Usage: archive { -l | [-q] FILES... }
    
    This program classifies and stores the specified files into your
    machine by running "archive_NAME FILE" scripts in PATH until one
    returns success.
    
    Config files: ${ARCHIVE_CONFIG:-~/.archive.cfg}

process

    Usage: process [-l]
    
    Process the files classified by archive(1).
    
    Config files: ${ARCHIVE_CONFIG:-~/.archive.cfg}

lastdown

    Usage: lastdown [-t SECS] COMMAND...
    
    Print the last downloaded file name. 

ocrpdf

    Usage: ocrpdf [-o PDF] [-d DPI(500)] [-f FIRST-PAGE] [-l LAST-PAGE] [-c eng|spa] [PDFS...]
    
    Extract text from pdf using OCR (tesseract).

pdfrun

    Usage: pdfrun [OPTS...] PDF {cat | sed 'CMD' | grep PATTERN | awk CODE }
    
    Extract text from a pdf file and then execute a command on it.
    
      -q  Silently quit if the argument is not a PDF file.
      -f  Force analysis.
      -c  Use a cache in "/tmp/pdfrun.$USER/" for efficiency.

txtrun

    Usage: txtrun TXT {cat | sed 'CMD' | grep PATTERN | awk CODE }
    
    Pipe text to command, good for if statements.

## Collaborating

For making bug reports, feature requests, support or consulting visit
one of the following links:

1. [gemini://harkadev.com/oss/](gemini://harkadev.com/oss/)
2. [https://harkadev.com/oss/](https://harkadev.com/oss/)
