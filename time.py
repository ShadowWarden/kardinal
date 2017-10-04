import time
import subprocess

t0 = time.time()
for i in range(1000):
	subprocess.call(["./kardinal","script.kar"])
t1 = time.time()

print ("Time for 1000 kardinal runs = ",(t1-t0))
