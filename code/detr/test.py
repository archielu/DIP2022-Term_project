from util.plot_utils import plot_logs

from pathlib import Path
import sys

outDir = sys.argv[1]
log_directory = [Path(outDir)]


fields_of_interest = ('loss','mAP')

plot_logs(log_directory,fields_of_interest)