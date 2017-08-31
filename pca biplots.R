#Script bestinha pra calcular e plotar as PCA dos índices morfoecológicos dos otólitos

autoplot(prcomp(pca.mat.reg), data = mat.reg, colour = 'Region', loadings=T)

autoplot(prcomp(pca.mat.guild, scale=T),data=mat.guild,colour='Guild',
         loadings=T,loadings.label=T,loadings.label.size=2.5,
         loadings.colour='blue',frame=T)

mat.reg=read.csv("mat_reg.csv",sep=";",row.names=1)

pca.mat.reg=mat.reg[c(2,3,4,5)]

autoplot(prcomp(pca.mat.reg,scale=T),data=mat.reg,colour='Region',
         loadings=T,loadings.label=T,loadings.label.size=3.5,
         loadings.label.colour='black',loadings.colour='black',frame=T)

mat.guild=read.csv("mat_guild.csv",sep=";",row.names=1)

pca.mat.guild=mat.guild[c(2,3,4,5)]

autoplot(prcomp(pca.mat.reg,scale=T),data=mat.guild,colour='Guild',
         loadings=T,loadings.label=T,loadings.label.size=3.5,
         loadings.label.colour='black',loadings.colour='blue',frame=T)
