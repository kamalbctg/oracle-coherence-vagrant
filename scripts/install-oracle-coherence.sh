#!/bin/sh

java -jar /vagrant/fmw/fmw_12.2.1.3.0_wls.jar -silent -responseFile /vagrant/fmw/response-file -invPtrLoc /vagrant/fmw/oraInst.loc
rm -rf /vagrant/backup
rm -rf /vagrant/ContentsXML
rm -rf /vagrant/logs 