#Luciana Porfirio
#stores a list of your currently installed packages
#to do before the updating R

tmp = installed.packages()

installedpackages = as.vector(tmp[is.na(tmp[,"Priority"]), 1])
save(installedpackages, file='installed_packages.rda')


#to do after new R has been installed

load('installed_packages.rda')
for (count in 1:length(installedpackages)) install.packages(installedpackages[count])
