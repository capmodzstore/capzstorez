#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY��M  ���E����/nޮ����    @Ηvj՘j	6�OS1��L�0#H�����i�������d<(�4hh� @h����=OI�z��=M44�4�  � Iڧ���=5=O)�zLOPi�=G�����T�!(.�3Hh��\�U���Sy�t)�P�;S��"T-�����7_@*��lIG�xX,t��q�BP�F�VZA! �Y�����F����� ��ޅ��i��z�0j	X?bS a�z��?z��a����.�+���͎��|1G}�[̴���A��J�H/�x:d)���Rq��v��Tȱ��~P���BS\uّ��/l_�ķ�`�}�"�T�n)^�!�ĳ��4[�|ጐ�#�Z��Ą��II�\5�[7�i�d�Ev6��+�����m�"Kd4z�D�C;}QoGG��Q��H�m��4%�ey�����u.�,nJ��瞘��ZVԈ9p��+|�B�1$\���]v6	���D	̏�a�]n�\n�uCm%��2�" ��ׇ���k�`�0]����?;D�T͕���3UB,v�$�l��ʮ*xE
0D������P�e�e���9��<�*�y�B�9Վ��a������ �3l�P �ZɜA�E���xTW
!����ngAqQ��>�'U�p�I�Y�7�O��������b��|1�2�G�ǁt���'O�E!����H�<�BtHi����d���Hp�s�$R�T��:hP�>@D�ep�.{��4�[I���1�����ե2�r���K�$��$$�����)���h