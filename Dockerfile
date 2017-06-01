FROM alpine

ENV  HOME=/var/opt
COPY vcf2FastaAndHapmap.sh $HOME/
COPY VCF2FastaAndHapmap.pl $HOME/VCF2FastaAndHapmap1.pl

RUN apk add --update perl && rm -rf /var/cache/apk/* &&\
	apk add --update perl-par-packer && rm -rf /var/cache/apk/* && \
	apk add --update perl-archive-zip && rm -rf /var/cache/apk/* && \
	apk add --update perl-archive-zip && \
	pp -o VCF2FastaAndHapmap.pl VCF2FastaAndHapmap1.pl &&\
	apk del perl-par-packer && \
	apk del perl &&\
    chmod +x $HOME/vcf2FastaAndHapmap.sh