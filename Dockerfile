FROM centos
RUN yum update

ENV HOME=/var/opt
WORKDIR $HOME

COPY vcf2FastaAndHapmap.sh $HOME/
COPY VCF2FastaAndHapmap.pl $HOME/

RUN chmod +x vcf2FastaAndHapmap.sh