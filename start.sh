#!/bin/bash
# --- feathercoin mainnet: 41151a21 (db = 0) ---
python -u crawl.py conf/crawl.41151a21.conf master > log/crawl.41151a21.master.out 2>&1 &
python -u crawl.py conf/crawl.41151a21.conf slave > log/crawl.41151a21.slave.1.out 2>&1 &
python -u crawl.py conf/crawl.41151a21.conf slave > log/crawl.41151a21.slave.2.out 2>&1 &

python -u ping.py conf/ping.41151a21.conf master > log/ping.41151a21.master.out 2>&1 &
python -u ping.py conf/ping.41151a21.conf slave > log/ping.41151a21.slave.1.out 2>&1 &
python -u ping.py conf/ping.41151a21.conf slave > log/ping.41151a21.slave.2.out 2>&1 &
python -u ping.py conf/ping.41151a21.conf slave > log/ping.41151a21.slave.3.out 2>&1 &
python -u ping.py conf/ping.41151a21.conf slave > log/ping.41151a21.slave.4.out 2>&1 &
python -u ping.py conf/ping.41151a21.conf slave > log/ping.41151a21.slave.5.out 2>&1 &
python -u ping.py conf/ping.41151a21.conf slave > log/ping.41151a21.slave.6.out 2>&1 &

python -u resolve.py conf/resolve.41151a21.conf > log/resolve.41151a21.out 2>&1 &

python -u export.py conf/export.41151a21.conf > log/export.41151a21.out 2>&1 &

python -u seeder.py conf/seeder.41151a21.conf > log/seeder.41151a21.out 2>&1 &

python -u pcap.py conf/pcap.41151a21.conf > log/pcap.41151a21.1.out 2>&1 &
python -u pcap.py conf/pcap.41151a21.conf > log/pcap.41151a21.2.out 2>&1 &
python -u pcap.py conf/pcap.41151a21.conf > log/pcap.41151a21.3.out 2>&1 &
