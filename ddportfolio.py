#! /usr/bin/env python3
#
# ddSMT: A delta debugger for SMT benchmarks in SMT-Lib v2 format.
# Copyright (C) 2013-2018, Aina Niemetz.
# Copyright (C) 2016-2017, Mathias Preiner.
# Copyright (C) 2018, Jane Lange.
#
# This file is part of ddSMT.
#
# ddSMT is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# ddSMT is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with ddSMT.  If not, see <http://www.gnu.org/licenses/>.
#

import sys
import os
from subprocess import Popen, PIPE, TimeoutExpired

__version__ = "1.0"
__author__  = "Aina Niemetz <aina.niemetz@gmail.com>"


if __name__ == "__main__":

    command_line = sys.argv
    outfile_index = 1
    while len(command_line[outfile_index]) < 1 or command_line[outfile_index][0] != ".":
        outfile_index += 1
    outfile_index += 1
        
    #command_line[0] = "/barrett/scratch/jlange20/ddSMT/ddsmt.py"
    path = os.path.dirname(__file__)
    command_line[0] = path + "/ddsmt.py"
    ddsmt = Popen(command_line)

    command_line[0] = path + "/hddsmt.py"
    command_line[outfile_index] = command_line[outfile_index][:-9] + "-hdd.min.smt2"
    hddsmt = Popen(command_line)

    ddsmt.wait()
    hddsmt.wait()

