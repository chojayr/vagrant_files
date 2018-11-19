python-pip:
  pkg.installed:
    - reload_modules: True

python-setuptools:
  pkg.installed

python-devel:
  pkg.installed

update-pip:
  cmd.run:
    - name: pip install pip==9.0.3
    - require:
      - pkg: python-pip

install-flask:
  cmd.run:
    - name: pip install flask
    - require:
      - cmd: update-pip

