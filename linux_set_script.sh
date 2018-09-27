###set ssh psc without key
step1:install sshserver
step2:ssh-keygen -t sra
      ssh-copy-id lpeng@10.41.25.100
step3:local set:psc='ssh lpeng@10.41.24.100 -Y'
step4:just type the 'psc' at the terminal
###bookmarks
address:/home/galaxy/.mozilla/firefox/nvdi6sxn.default/bookmarkbackups/
cp the files in the directory to the new machine
##git useage
git config --global user.email "pengli@sibs.ac.cn"
git config --global user.name "penglbio"
echo "# linux_set_scripts" >> README.md
git commit -m "first commit"


