#!/bin/bash

# name of the current executable
PROGRAM=${0##*/}

function get_current_region() {
  local az=$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)
  [ -n "${az}" ] && echo "${az}" | grep -Po "(us|sa|eu|ap)-(north|south)?(east|west)?-[0-9]+"
}

function run() {
  local region="${1}"
  local name=""

  # fetch the current aws if region is not provided
  [ -n "${region}" ] || region="$(get_current_region)"

  case ${region} in
    us-east-1)
      name="virginia"
      ;;
    us-west-1)
      name="california"
      ;;
    us-west-2)
      name="oregon"
      ;;
    eu-west-1)
      name="ireland"
      ;;
    eu-central-1)
      name="frankfurt"
      ;;
    ap-southeast-1)
      name="singapore"
      ;;
    ap-southeast-2)
      name="sydney"
      ;;
    ap-northeast-2)
      name="tokyo"
      ;;
    sa-east-1)
      name="sao-paulo"
      ;;
  esac

  if [ -n "${name}" ]; then
    echo "${name}"
    exit 0
  else
    exit 1
  fi
}

function version() {
  echo "0.1.3"
}

function help() {
  echo "${PROGRAM} $(version)"
  echo
  echo "Usage: ${PROGRAM} [-h] [-v] [-r] <region>"
  echo
  echo "  <region> aws region, will auto-detect when running on an ec2 instance."
  echo "           example: us-west-1"
  echo
  echo "  -r, --region   Display only the current aws region"
  echo "  -h, --help     Display this help message"
  echo "  -v, --version  Display the version number"
}

case "${1}" in
  -h|--help)
    help
    ;;
  -v|--version)
    version
    exit 0
    ;;
  -r|--region)
    get_current_region
    exit 0
    ;;
  *)
    run "${1}"
    ;;
esac
