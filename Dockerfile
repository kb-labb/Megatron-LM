FROM nvcr.io/nvidia/pytorch:22.12-py3


RUN pip3 install packaging
RUN ninja --version
RUN pip3 install --upgrade ninja
RUN pip3 install nltk
RUN pip3 install transformers
RUN pip3 install tokenizers
RUN pip3 install datasets
RUN pip3 install lm-dataformat
RUN git clone https://github.com/Dao-AILab/flash-attention.git
WORKDIR flash-attention
RUN python3 setup.py install
RUN pip3 list
#pip3 install flash-attn --no-build-isolation
