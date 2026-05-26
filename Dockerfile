FROM continuumio/miniconda3:26.3.2

ENV PATH /opt/conda/bin:$PATH

RUN conda config --append channels bioconda && \
	conda config --append channels conda-forge && \
	conda config --append channels anaconda && \
	conda install -c bioconda megan=6.25.10-0 && \
	conda clean -a -y

CMD ["megan"]
