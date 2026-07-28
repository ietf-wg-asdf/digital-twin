DRAFT := draft-ietf-asdf-digital-twin-04
XML2RFC ?= xml2rfc

.PHONY: all text html clean

all: text html

text: $(DRAFT).txt

html: $(DRAFT).html

$(DRAFT).txt: $(DRAFT).xml
	$(XML2RFC) --text --out $@ $<

$(DRAFT).html: $(DRAFT).xml
	$(XML2RFC) --html --out $@ $<

clean:
	rm -f $(DRAFT).txt $(DRAFT).html
