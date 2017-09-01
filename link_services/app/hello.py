import pandas as pd
from pkg_resources import resource_string
import ruamel_yaml as yaml
from sqlalchemy import create_engine
import time

import sys
sys.path.extend(['/'])

# ugly fix to wait postgres to be up
time.sleep(30)

postgres_cfg = yaml.load(resource_string('app.config', 'settings.yml'))['postgres']

print(postgres_cfg)

postgres_engine = create_engine('postgresql://{user}:{password}@{hostname}:5432/{db}'
                                .format(user=postgres_cfg['user'],
                                        password=postgres_cfg['password'],
                                        hostname=postgres_cfg['hostname'],
                                        db=postgres_cfg['db']))

tables = pd.read_sql('SELECT * FROM pg_catalog.pg_tables;', con=postgres_engine)
print(tables)