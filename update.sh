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
BZh91AY&SY]ϭ:  ���DX���/nޮ����    @�  "�4���  h  4 �4�@a4dhhd0���4 b2d�M#C!�� �� ��I!4LFM	�&�'�&SbeQ�b{BM� 8�x�k�[*A톔GqS<�#$�d� �<�Mن��z�E����|;�[�vȿ<"���Ƀ� �����M ��::  �P��\������%�3�4�[;��΃�u18���W�/�m���4Ξ��}j�rf� ��e��ln��,���& �0�D0&]�^w���j���J�wj^7�9��q}y8Ay�l�̾\9��V�.<���.��߭K"z��D�U?R�D���3�	��#N����l�öB^��J$0��JVE���S;D����ȓ��r���^_�7��a�Ȧ�.�O�9o�G���,�.k����DЖ��Hg��ˊǬ�	�Q���J[ӥ��R^ϙ)�-��x<a�cƓ��s}�w�!��:K�`�U	9kBt��*I����f[d���?�%���J�~���a�xwə��/�AT��K��A,����f��)��:CĿ�<	�EWH��S$o�8.ICy�3{^Z��D�gd5�7�6�M	^�ͼ���3L���dNS�0������4��0�hŸØgb=�ulG�-A��D���B�	J��Xɥ'XI��o�U*�����C�ÂE�J�ʁ�����Pj4�1E�������:�U�2jK�g�����zd�q���8c��[02Fbb|��eh��vl�]��ఆ�[$�X��JI�����X��Y��$��$�ZBJ����"�(H.�֝ 