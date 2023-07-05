FROM prefecthq/prefect:2.10.18-python3.9
COPY requirements.txt /opt/prefect/prefect_kubeworker/requirements.txt
RUN python -m pip install -r /opt/prefect/prefect_kubeworker/requirements.txt
COPY . /opt/prefect/prefect_kubeworker/
WORKDIR /opt/prefect/prefect_kubeworker/
