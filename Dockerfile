FROM rocker/tidyverse:3.6.2

RUN R -e "install.packages(c('stats',
    'utils',
    'flowCore',
    'ConsensusClusterPlus',
    'BiocGenerics',
    'tsne',
    'CytoML',
    'flowWorkspace',
    'XML',
    'RColorBrewer'))"

COPY . /app/
RUN R CMD INSTALL /app/
