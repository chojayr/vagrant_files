flask_test:
  archive.extracted:
    - name: /home/vagrant/
    - source: salt://source/flask_test.tar.gz
    - user: root
    - group: root
    - tar_options: v
    - archive_format: tar

make_executable:
  file.managed:
    - name: /home/vagrant/flasktest.py
    - mode: 775
    - require:
      - archive: flask_test
