FROM alpine

ENV  HOME=/var/opt
COPY vcf2FastaAndHapmap.sh $HOME/
COPY VCF2FastaAndHapmap.pl $HOME/

RUN apk add --update perl && rm -rf /var/cache/apk/* &&\
	apk add --update perl-par-packer && rm -rf /var/cache/apk/* &&\
	apk del perl-par-packer && \
	apk del perl &&\
    chmod +x $HOME/vcf2FastaAndHapmap.sh