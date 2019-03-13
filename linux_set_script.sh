/etc/apt/source.list
###set ssh psc without key
step1:install sshserver
step2:ssh-keygen -t sra
      ssh-copy-id lpeng@10.41.25.100
step3:local set:alias psc='ssh lpeng@10.41.25.100 -Y'
		alias xfu='ssh xfu@10.41.9.210 -Y'
step4:just type the 'psc' at the terminal
###bookmarks
address:/home/galaxy/.mozilla/firefox/nvdi6sxn.default/bookmarkbackups/
cp the files in the directory to the new machine
##git useage
git config --global user.email "pengli@sibs.ac.cn"
git config --global user.name "penglbio"
echo "# linux_set_scripts" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/penglbio/linux_set_scripts.git
git push -u origin master
##rsync data
crontab crontab-backup
# minute： 表示分钟，可以是从0到59之间的任何整数。
# hour：表示小时，可以是从0到23之间的任何整数。
# day：表示日期，可以是从1到31之间的任何整数。
# month：表示月份，可以是从1到12之间的任何整数。
# week：表示星期几，可以是从0到7之间的任何整数，这里的0或7代表星期日。
# command：要执行的命令，可以是系统命令，也可以是自己编写的脚本文件。 

###install_R.sh
sh ~/git/Rinstall/install_R.sh
cp */packages /home/galaxy/R/3.5.0/lib/R/library/
install.packages("usethis")
usethis::edit_r_environ()
R_MAX_NUM_DLLS=256
##install sougou teamviewer sublime
src="$HOME/src"

cd $src

wget -c https://download.teamviewer.com/download/linux/teamviewer_amd64.deb

dpkg -i teamviewer_amd64.deb

##conda env
cd /home/galaxy/git/condaEnv/
/home/galaxy/git/condaEnv/install_conda.shqiime1_environment.yml
wget https://repo.continuum.io/miniconda/Miniconda3-4.5.4-Linux-x86_64.sh
bash Miniconda3-4.5.4-Linux-x86_64.sh
conda create -n qiime1 python=2
conda env update -f qiime1_environment.yml

conda create -n gmatic python=3
conda env update -f gmatic_environment.yml

##qiime1:snakemake use gmatic
/home/lpeng/miniconda3/envs/gmatic/bin/snakemake -rpn
nohup /home/lpeng/miniconda3/envs/gmatic/bin/snakemake -j 30 -rp >> nohup.log 2>&1 &







