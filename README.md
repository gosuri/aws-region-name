# aws-region-name

Returns the region name for the region

## Usage
    Usage: aws-region-name [-h] [-v] [-r] <region>

      <region> aws region, will auto-detect when running on an ec2 instance.
               example: us-west-1

      -r, --region   Display only the current aws region
      -h, --help     Display this help message
      -v, --version  Display the version number

## Installation

Run the below with the latest [version](https://github.com/gosuri/aws-region-name/releases)

    version=0.1.2
    curl -sL https://github.com/gosuri/aws-region-name/archive/v${version}.tar.gz | tar xz
    cd aws-region-name-${version}
    make install

## Licence

The MIT License (MIT)

Copyright (c) 2014 Greg Osuri

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE
