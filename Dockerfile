FROM centos
RUN yum update

RUN yum install perl -y

ENV HOME=/var/opt


COPY vcf2FastaAndHapmap.sh $HOME/
COPY VCF2FastaAndHapmap.pl $HOME/

RUN chmod +x $HOME/vcf2FastaAndHapmap.sh