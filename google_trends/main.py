#
# Copyright (c) 2023 Airbyte, Inc., all rights reserved.
#


import sys

from airbyte_cdk.entrypoint import launch
from source_google_trends import SourceGoogleTrends

if __name__ == "__main__":
    source = SourceGoogleTrends()
    launch(source, sys.argv[1:])
