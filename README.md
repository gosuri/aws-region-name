# aws-region-name

Displays the aws region name based on the availabilty zone of the ec2 instance

## Usage
    aws-region-name [-h] [-v] [-r] <region>

    <region> aws region, will auto-detect when running on an ec2 instance.
             example: us-west-1

    -r, --region   Display only the current aws region
    -h, --help     Display this help message
    -v, --version  Display the version number

### Examples

Display region name for an instance running in us-east-1a

    $ aws-region-name
    virginia

Display region name for an instance running in us-west-1b

    $ aws-region-name
    california

Display just the region for a instance running in us-west-1b

    $ aws-region-name --region
    us-west-b

## Installing aws-region-name from source
    
    $ git clone https://github.com/gosuri/aws-region-name.git
    $ cd aws-region-name
    $ make install

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

