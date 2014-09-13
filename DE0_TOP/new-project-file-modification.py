#!/usr/bin/env python

# Incomplete script for creating new projects from the DE0_TOP project
import os
import shutil
import sys

de0_ = "DE0_TOP"
de0 = "DE0 TOP"
here = os.path.abspath(os.curdir)

if (not os.path.basename(here) == 'DE0_TOP') or (not len(sys.argv) > 1):
	exit()

name = sys.argv[1]
desired_name = name.replace(" ", "_")

print desired_name

target = os.path.abspath(here + "/../" + desired_name)
# print target

# .qpf, .qsf, .v

qpf = open(os.path.abspath(here + "/" + de0_ + ".qpf"), 'r').read()
qsf = open(os.path.abspath(here + "/" + de0_ + ".qsf"), 'r').read()
v = open(os.path.abspath(here + "/" + de0_ + ".v"), 'r').read()

qpf = qpf.replace(de0_, desired_name).replace(de0, name)
qsf = qsf.replace(de0_, desired_name).replace(de0, name)
v = v.replace(de0_, desired_name).replace(de0, name)

qpfF = open(os.path.abspath(target + "/" + desired_name + ".qpf"), 'a')
qsfF = open(os.path.abspath(target + "/" + desired_name + ".qsf"), 'a')
vF = open(os.path.abspath(target + "/" + desired_name + ".v"), 'w')

qpfF.write(qpf)
qsfF.write(qsf)
vF.write(v)

for file in [qpfF, qsfF, vF]:
  file.close()
