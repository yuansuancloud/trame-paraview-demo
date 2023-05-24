FROM trame-paraview

ADD src /app

WORKDIR /app

RUN bash -c "python3.9 -m venv .pvenv && source .pvenv/bin/activate && pip install trame && deactivate"

ENV PV_VENV=/app/.pvenv

CMD ["pvpython", "-m", "paraview.apps.trame", "--trame-app", "app"]