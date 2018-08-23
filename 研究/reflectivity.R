#e_xx <- sqrt(2)
e_xx <- sqrt(3)
#e_yy <- sqrt(2)
e_yy <- 1
e_zz <- 1.5
e_yz <- e_zy <- 0.0005
e_zx <- e_xz <- 0.0003
e_xy <- e_yx <- 0.0001

ee <- c(e_xx,e_yx,e_zx,e_xy,e_yy,e_zy,e_xz,e_yz,e_zz)
e_tensor <- matrix(ee,3,3)   

theta <- seq(-0.001,2*pi,length=103)
e_xx_theta <- rep(0,length=103)
for(i in 1:103){
RRot <- c(cos(theta[i]),sin(theta[i]),0,-sin(theta[i]),cos(theta[i]),0,0,0,1)
Rot <- matrix(RRot,3,3)   
e_tensor_theta <- t(Rot) %*% e_tensor %*% Rot
e_xx_theta[i] <- e_tensor_theta[1,1]
}

png("e_xx_theta.png", width = 700, height = 500) 
plot(theta/pi*180,e_xx_theta)
dev.off() 

u <- e_zz
v <- (e_xx+e_yy)*e_zz -e_xz^2 -e_yz^2
w <- e_xx*e_yy*e_zz -e_xx*e_yz^2 -e_yy*e_zx^2 -e_zz*e_xy^2 +2*e_xy*e_yz*e_zx

p1 <- (v+sqrt(v^2-4*u*w))/(2*u)
p2 <- (v-sqrt(v^2-4*u*w))/(2*u)

a1 <- e_xy*e_yz -e_xz*(e_yy-p1)
b1 <- e_yx*e_xz -e_yz*(e_xx-p1)
a2 <- e_xy*e_yz -e_xz*(e_yy-p2)
b2 <- e_yx*e_xz -e_yz*(e_xx-p2)

k10 <- sqrt(p1)
k20 <- sqrt(p2)

r_xx <- 2/(a1*b2-a2*b1)*(a1*b2/(1+k10)-a2*b1/(1+k20))-1
r_xy <- 2*b1*b2/(a1*b2-a2*b1)*(1/(1+k10)-1/(1+k20))
r_yy <- 2/(b1*a2-b2*a1)*(b1*a2/(1+k10)-b2*a1/(1+k20))-1
r_yx <- 2*a1*a2/(b1*a2-b2*a1)*(1/(1+k10)-1/(1+k20))

incident_angle <- seq(-0.001,2*pi,length=103)
E_ix <- cos(incident_angle)
E_iy <- sin(incident_angle)

E_rx <- r_xx*E_ix + r_yx*E_iy
E_ry <- r_xy*E_ix + r_yy*E_iy

inner_product <- E_ix*E_rx + E_iy*E_ry
outer_product_z <- E_ix*E_ry - E_iy*E_rx
E_rsquared <- E_rx*Conj(E_rx)+E_ry*Conj(E_ry)

png("inner_product.png", width = 700, height = 500) 
plot(incident_angle/pi*180,inner_product)
dev.off() 
png("outer_product_z.png", width = 700, height = 500) 
plot(incident_angle/pi*180,outer_product_z)
dev.off() 
png("E_rsquared.png", width = 700, height = 500) 
plot(incident_angle/pi*180,E_rsquared)
dev.off() 

#fresnel coefficient
n <- sqrt(e_xx) 
r_fresnel <- (1-n)/(1+n)
r_fresnel 