FROM ubuntu:18.04
RUN apt-get upgrade
RUN apt-get update
RUN apt-get install -y gcc
RUN apt-get install -y python-pip
RUN apt-get install -y git
RUN apt-get install -y nano
RUN apt-get install -y mpich

##Explicit specification of python packages versions

RUN pip install scipy
RUN pip install matplotlib
RUN pip install ipython
RUN pip install pandas
RUN pip install python-libsbml
RUN pip install tellurium
RUN pip install mpi4py
RUN pip install lmfit
RUN pip install jupyterlab
RUN pip install xlrd
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
RUN apt-get install -y nodejs
RUN pip install ipywidgets
RUN jupyter nbextension enable --py widgetsnbextension
RUN apt-get install -y locate
RUN pip install peakutils
ADD ./commands/jn /bin/
RUN chmod +x /bin/jn
RUN git clone https://github.com/jurquiza/SloppyCellUrquiza2019.git && cd SloppyCellUrquiza2019 && python setup.py install
RUN apt-get install -y locate
RUN pip install seaborn
RUN pip install xlwt
