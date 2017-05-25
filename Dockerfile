FROM centos
RUN yum update

ENV HOME=/var/opt


COPY vcf2FastaAndHapmap.sh $HOME/
COPY VCF2FastaAndHapmap.pl $HOME/

RUN chmod +x $HOME/vcf2FastaAndHapmap.sh