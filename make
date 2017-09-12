#!/bin/bash

PROGNAME=$(basename $0)
VERSION="0.1.1"

for i in "$@"
do
case $i in
            '-h'|'--help' )
            usage
            exit 1
        ;;
        '--version' )
            echo $VERSION
            exit 1
            ;;
        -removeip)
                REMOVEIP=1
                shift 1
                ;;
        -addip)
                ADDIP=1
                shift 1
                ;;
        -*)
                shift 1
        ;;
        *)
        ;;
esac
done

if [ $REMOVEIP ]; then
        exit 1
fi

if [ $ADDIP ]; then
        exit 1
fi

echo "Make subshell project."
vivado -nolog -nojournal -mode batch -source ./scripts/vivado_make_subshell.tcl
echo "Make accelerator project."
vivado -nolog -nojournal -mode batch -source ./scripts/vivado_make.tcl
