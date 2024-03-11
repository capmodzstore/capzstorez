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
BZh91AY&SY)�G O��p1 ���?'ݞ����`{�vu��$
Pր �&�I�{Rz�<H���  4 ���&��4aF��14F����h�F��i��A�h ɀ�D�T���mS'�xHdy@4d6��@ �"�J~$#hM=F��e=C &4�OI�	 � SjOl��ѩ��������OS�Pc)�� �p���QP^؋f��GoI�q�t�N���
�S�'hҴ���q��S��4�W�����[��%E�dI���݊{/x�����SW%U�ڡ )�,��eT&ߑ5���� <>e����lohKsXn�m؁h����#.~�/�O]5�D�h�LUi�E�W�G�t�NkJFEEm���Y|�HZ'����U��`��ݝmsa\����@�<�ˏ2�;�b"~w��,8(�`��z��]�iZ��Sv�b�(.6D(�~m�м�,�� �V��������)m��:R,�"D��VН5��w�#fVȷ���7g��
Y*�a<���\B�J5�E�`D��ӫ��l31� �e��q|ܖh�}�`F4� ��$�Pş0 ��L����<�k�mn�Hi\��
�H�E}�[�I�Znu����I6�	`[���3&D�R;��|�6C��_�6�ߣ�T$�)��N��%�҄�H�Q=qRZa�֓fG��ۃP��ֶ�S�ĠL�v^`��Ǡ6Y����0Րq(���hJ�C�ш�)ln�B
�}ɰ,�S�����AKL� $z�A2`H(I �p]�Ц1� �(���E$1鈚_P$L? �AD���{"O��v���KY=��o�ҥwc�0���¸dj��뭿�)D~��8aeđ�i3#Q�>�/͐z�Ĝ��3��4���4 �;Yi��&��
ͨM�D�N�Qb�R#�<D���$2U�Q���bA��3�~E�)�d�VxTP��gj�Ǥ����n�\F7."�͖�v����ᢢ�CL85L�C�n'�#�/U5��� �7qH�����mF��G�E0Ha}�H�/���t�9�DZ�Ą5󟪙Ǒ ���k�&#=�J۶��s2�$����(��)nJ�TS0�B�F�$`�}F54u3�0������V��J��ʢ.�� -&��[�Cd���A��H�(�\�	Rk�P�����ySI��<}�)�2 k�."��ߦ�N�q��)lpg4LI�"	tś����$	hm[�Ð�����rG��jv�!���@m4��.���g�HF��	���)�m�A6@SN\D�2��U�-��3���J5�V�:q;r��ą$Ъ��J;)�]QK�箆���z�B���	@��;!0�tp���+Nø��Ԛ� |�u7�K���󗀰X��J��^���eEΨ"a$�64���qo�!���r��l�3��B��#0���)�4�I|	�).#�Ri	"�;��6��,	2��$�kKʈԲ��bi��{o��H��d"E��)����ߝ�>: �$��)��it�TCN� ��R�m.�C�m����)N	B�����+u��i������x�Րx�em��hD� !%�t����.aG�͘�����=�B��:���1�\�Ŝ��n������k6P"�}���mH�WG�Pfp+8��%)x�ԇ\qY��C!�|[����&!�i 59��I��M�}r!A 6�H@�cQ^��?5k���F�lo�HZ�v��z�ap���U̢#��g:�S�������V�s�.��` �K�΂��>l���{���1���F�pcE��^_x��)�H�Z8