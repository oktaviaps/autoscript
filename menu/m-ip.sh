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
BZh91AY&SY�f�^ >���� ����������p F ��� � @ `
-��gp�S֏=�!v}�Z�I$5��M�2l��4���h4l��6��@ �dSD4�FI�򞧩����A��S&�� � z� "h��T�UML�!�42��h�22Ќ�4����Sڑ�@   2�       mIM&M�4�&�44 �@     4 "� F�4jz��M
o"�510MF�mM=�mF�d mOH )�& ,S�6����g�B�&m�
fF"7	� 
�c�A�$ �n�q4�@����Ei��p' u2c,$@�BL�$�f)^�{��S��p�G))	*�Q`ggS�@��h�k2��	��5
:��lA�А#W����H/";����rO�����d-
��}�AuKC^�F-��o1�$ �T6��R�B��E��c��$��Ot��i�"8��a���r��w;�+S޵e��%"\���xfw���Ԅd=4��&s�q-B8��G���O�"�L�l�T��l
��fFp����]������u5;s��m��5�3����Z�(��aׇ4�M�0b���O7_���K,h��Q���	rg��_=lh�u:UֶT��R��ɮiEӀ����r��2k+:2r�	J�c���6o_͡�-+�E��b	@�(Z�N5��%�$�yH"*�!�rºʭGuｼk��w�di�W�S�A�p�1FM	"h��4����+s����6�L��R�-'�	fDd�"i�ёE�b� (<b@;�PȚNx�CM�V6=�ƴ�ڹ_n�94L��}����Fф*zw�v�r^�h� D�`J��$as��!�����d�f9���̠���M\�͟>}d�p��шL�f����y/��P��6}�&$��/ k�Q�=˾�
��/92���ջ["[mg��E�T�Q�ʼ��*�A�p����������B�{R2�2��NR���R��[A��9֭�lؗ�C_$�Þ
��#��9�%W𬿞�^/V2u�cB&P!e�,��ࠓ��9���}�ן�Q�c6���vJecNČ����8J���]d��8& N�!�i�G.�*h�,uȫA���å�~����4"�ES6O�;K�ۥV9�Z�<�C��)IZ��hC59�^��/=�Ԕv�~!�Be0� ���ϫW׸m���s��ܲ�;�ܬ��?>�]��w	x���f���'����F{��0���)�E�9�af/r	]7�t">��:�n�S(�1�k��3;�Mzi�U���ˍ<��J�)�����fA���eʪ��k�O�g��a=��E��fP�2 �#+��%%s4(�*;vЦaB@D�,)U[2T�}��2H+x��N`�Ud:��ӎ� �@�&V?����ye#��Z8���Z�d���:tK]ެx+�d�`��ڪ�*X��h���j�VS�(�����JN%<�8U:�w	�
�I,�U�1�&r1!	���4�'3J��O6� o�
���!�������C��h.5tF|���D�3;bZ�{)>��T���x�ǐ�D��{�z�M8�XijA��Q#�-�z$+1a��QaDkWߢQ�+?(�N��av�̨IF��!�� ��%�A6��R�r�0K�"ar�F�%�&���Y<}�����4F,zSȌ����HΑ��ʩ�a��#Y�4�86��IE��A{,@�~@j�i�CͽT����6&0`�3�N�5^j�!��;��L�-�\�i}�GWD��h}����P�A�*8��*d��<���XC|���Ċ7�z��mGa�25lY���i:�������u61�p���*��o��.2D Pi3�h�Y1�o�"\�q6Ռ�����;�K�*� �Tl��AGi�pO��31e|%W�l%*қ�h�y�R���2��D�c�Q�u�%��X�969K��5.K�aVF��̠J)^�5�l����E9!��6#ǉ�zW�\���4���c�\E"�������5iP�x�f ��K*
���P2���sv��
H�.�[��^(l��rk�(�����h���&�J� �3	�I���gd�	�(�BW�բ� �-$^?�!@; p�PkN=���D3��� ��P��f������)(y���&�ì��[G�RR�L#W񨴘�B����$"�4d&!��#K<Z�b�%I��=z͕��Z)����TU
��E@�8�I�����|:T ���IG��L�L��ꚮ[��y�n��G�������* �FQ��L�jJC�t
r�7��M*G[Tn�@�A!��h�d�P6PԚO�`@���u^� ��6�9�^!��4����I#���o�#.���h�P[4ux�$�Q�#hc�(�"jIBo��P�c �!A�s[~@Qq�Ҫ ��KKJA���D����A��Q<����Jm���L9p�|�� �! q�/���,/"���}$�w�1<\@a�&!́̀@��`��w$S�	�iu�