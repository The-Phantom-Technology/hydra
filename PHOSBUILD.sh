rm -rf /opt/PHANTX/thc-hydra

cd /opt/PHANTX

git clone https://github.com/vanhauser-thc/thc-hydra

cd /opt/PHANTX/thc-hydra

./configure 

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi

make
make install

chmod -R 755 /opt/PHANTX
rm -rf /opt/PHOS/tool/hydra
rm -rf /opt/PHOS/tool/hydra