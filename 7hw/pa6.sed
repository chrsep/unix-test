#!/usr/bin/sed -f
s,\\,%,g; s,%%,#,g; s,%\[,%@,g; s,% ,%_,g;
:L
h; s,\[.*,,; x; TM; s,[^[]*\[,,
s,^^],^~,; s,^],~,
s,],\n,; H; s,\n.*,,;s, ,_,g; s,\[,@,g;
G; s,\(.*\)\n\(.*\)\n\(.*\)\n,\2+\1|,
tL
:M
s, ,\&,g; s,@,[,g; s,~,],g; s,+,[,g; s,|,],g; s,_, ,g; s,#,\\\\,g; s,%,\\,g
s,&,[\\n\\t\\r ][\\n\\t\\r ]*,g