library(ggplot2)
library(ggfortify)
mat.guild=read.csv("mat_guild.csv",sep=",",row.names=1)

pca.mat.guild=mat.guild[c(2,3,4,5)]

autoplot(prcomp(pca.mat.guild), data = mat.guild, colour = 'Guild', loadings=T)

autoplot(prcomp(pca.mat.guild, scale=T),data=mat.guild,colour='Guild',
         loadings=T,loadings.label=T,loadings.label.size=3,
         loadings.colour='blue',loadings.label.colour='black',frame=T)

mat.reg=read.csv("mat_reg.csv",sep=",",row.names=1)

pca.mat.reg=mat.reg[c(2,3,4,5)]

autoplot(prcomp(pca.mat.reg,scale=T),data=mat.reg,colour='Region',
         loadings=T,loadings.label=T,loadings.label.size=3,
         loadings.colour='blue',loadings.label.colour='black',frame=T)
geom_point(aes(shape=factor(pca.mat.reg)))

autoplot(prcomp(pca.mat.reg,scale=T,data=mat.reg,frame=T))+
  geom_point(aes(shape=mat.reg$Region,colour=mat.reg$Region),size=3)

