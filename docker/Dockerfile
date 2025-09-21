# -------------------------
# Base Image
# -------------------------
FROM continuumio/miniconda3

# Set channels
RUN conda config --add channels defaults \
    && conda config --add channels bioconda \
    && conda config --add channels conda-forge

WORKDIR /opt/klebinfo

COPY $(realpath ./README.txt) /README.txt /opt/klebinfo/

# -------------------------
# System dependencies
# -------------------------
RUN apt-get update && apt-get install -y \
    wget unzip git perl build-essential curl \
    && apt-get clean

# -------------------------
# Install mamba
# -------------------------
RUN conda install -y -c conda-forge mamba

# -------------------------
# 1. Python-based tools environment (bioenv)
# -------------------------
RUN mamba create -y -n bioenv python=3.10 kleborate mash bwa samtools -c bioconda \
    && mamba clean -afy

# Install BactInspector in bioenv
RUN conda run -n bioenv pip install bactinspectorMax

# -------------------------
# 2. Perl-based tools environment (perlenv)
# -------------------------
RUN mamba create -y -n perlenv perl=5.26 abricate -c bioconda \
    && mamba clean -afy

# Update abricate databases
RUN conda run -n perlenv abricate-get_db --db vfdb --force \
    && conda run -n perlenv abricate-get_db --db card --force \
    && conda run -n perlenv abricate-get_db --db resfinder --force \
    && conda run -n perlenv abricate-get_db --db plasmidfinder --force

# -------------------------
# 3. parsnp environment (parsnp)
# -------------------------

RUN mamba create -y -n parsnp-env \
&& mamba clean -afy

RUN conda run -n parsnp-env mamba install bioconda/label/cf201901::parsnp

# -------------------------
# Aliases for direct tool access
# -------------------------
# Python-based tools
RUN echo "alias kleborate='conda run -n bioenv kleborate'" >> /etc/bash.bashrc \
    && echo "alias bactinspector='conda run -n bioenv bactinspector'" >> /etc/bash.bashrc \
    && echo "alias parsnp='conda run -n parsnp-env parsnp'" >> /etc/bash.bashrc

    # Perl-based tools
RUN echo "alias abricate='conda run -n perlenv abricate'" >> /etc/bash.bashrc

ENV PATH=/opt/conda/envs/bioenv/bin:$PATH

# -------------------------
# Default shell
# -------------------------
SHELL ["/bin/bash", "-c"]
CMD ["bash"]
