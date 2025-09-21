

conda install bioconda::kleborate

conda install -c bioconda abricate

pip3 install bactinspectorMax

conda install -c bioconda mash


conda create -n csiphylo python=3.10 perl bwa samtools
conda activate csiphylo
wget https://github.com/umcg/csi_phylogeny/archive/refs/heads/master.zip -O csi_phylogeny.zip
unzip csi_phylogeny.zip
cd csi_phylogeny-master
export PATH=$PATH:/path/to/csi_phylogeny-master
