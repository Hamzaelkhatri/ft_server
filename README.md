# ft_server
This topic is intended to introduce you to system administration. It will make you aware of the importance of using scripts to automate your tasks. For that, you will discover the "docker" technology and use it to install a complete web server. This server will run multiples services: Wordpress, phpMyAdmin, and a SQL database
<br>*set up a web server with Nginx, in only one docker container. The
container OS must be debian buster
<br>*The web server must be able to run several services at the same time. The services
will be a WordPress website, phpMyAdmin and MySQL.
<br>*use the SSL protocol.

 ## what is Docher ?! :whale:
 
    -Docker is software that allows users to run lightweight virtual machines. You can build Docker "containers" with a Dockerfile.
    -A container is a single lightweight virtual machine running an os, with its own memory space and storage. 
    -It is created on an image, which is a template with preconfigured software. 
    -A container differs from a virtual machine because it uses the same kernel as the host computer, whereas a virtual machine has its own kernel. 
    -Containers are faster and lighter.
  
 <a href="https://ibb.co/6bwtyRj"><img src="https://i.ibb.co/2PhMF7G/Screen-Shot-2021-03-25-at-11-11-54-AM.png" alt="Screen-Shot-2021-03-25-at-11-11-54-AM" border="0"></a>

## what is Dockerfile ?! :scroll:	

     -A Dockerfile is a text document that contains all the commands a user could call on the command line to assemble an image. 
     Using docker build users can create an automated build that executes several command-line instructions in succession.
