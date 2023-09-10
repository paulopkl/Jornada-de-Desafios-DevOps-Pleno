# Jornada de Desafios DevOps Pleno 🚀🚀

# Resposta do Desafio 1:

<h3>O Dockerfile da aplicação Angular está na pasta ./angular-frontend-app/</h3>
<p>dentro desta pasta tem o Dockerfile.Prod que foi feito pensando no ambiente de produção, e o Dockerfile.Dev que foi feito pensando no ambiente local de desenvolvimento</p>

# Resposta do Desafio 2:

<h3>O Dockerfile da aplicação .NET 6 está na pasta ./BackendAPI/</h3>
<p>dentro desta pasta tem o Dockerfile.Prod que foi feito pensando no ambiente de produção. E o Dockerfile.Dev que foi feito pensando no ambiente local de desenvolvimento</p>

# Resposta do Desafio 3:

<h3>O provisionamento da infraestrutura está na pasta ./terraform-provision/</h3>
<p>Não consegui finalizar o provisionamento total de todos os elementos utilizando minha conta Azure, começou dar erro de permissionamento por causa que ela está associada a uma organização. 
<p>Dentro da pasta ./terraform-provision/ era para ter o provisionamento dos:</p>
 
 - (ACR) Hub das imagens Docker da Azure
 - (AKS) Cluster Kubernetes da Azure

<p>Detalhe que por conta do banco de dados 'dbfenix' resolvi criar uma imagem própria baseada no sql server, servindo para ambiente de desenvolvimento e produção, está imagem está na pasta ./sql_server/Dockerfile.</p>
<p>Dentro da pasta ./kubernetes/ se encontra todos os elementos do kubernetes</p>
<p>O Redis subirá como um sidecar container no Kubernetes por conta do acesso da applicação .NET á ele ser mais rápido</p>

# Resposta do Desafio 4:

<h3>O pipeline (CI/CD) dos projetos das aplicações .NET/Angular foi pensando subir também junto com o provisionamento em terraform-provision/</h3>
<p>Pensei em colocar o pipeline junto sendo provisionado com o ACR/AKS, não é uma boa prática e acredito não ser recomendado ser provisionado desta forma, mas foi a maneira que pensei de tentar automatizar todo o processo, dentro desta pasta era pra conter:</p>
 
 - (Azure DevOps) Criação dos repositórios Git dentro do Azure
 - (Azure DevOps Pipelines) Pipelines dos projetos
