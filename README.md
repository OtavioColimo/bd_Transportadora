> Banco de Dados Transportadora Xangu Transportes
## Este repositório é destinado ao banco de dados para transportadora rodoviária com foco em cargas fechadas

# A "Xangu Transportes" é uma renomada empresa especializada exclusivamente no transporte rodoviário de cargas dedicadas para seus clientes dentro da região Sudeste do Brasil. Com uma frota diversificada de caminhões, a empresa enfrenta desafios operacionais específicos, destacando a necessidade de um sistema de gestão que atenda às demandas dessa operação regional. 

## Os principais desafios enfrentados pela Xangu Transportes incluem: 

**Otimização de Rotas na Região Sudeste:** Dada a complexidade das estradas e a alta densidade populacional na região Sudeste, a otimização de rotas é crucial. A empresa busca reduzir custos operacionais, evitar congestionamentos e assegurar tempos de entrega rápidos. 

**Rastreamento e Segurança da Carga:** A segurança da carga é uma prioridade. Um sistema de rastreamento avançado é essencial para monitorar a localização dos veículos e garantir a integridade da carga, proporcionando tranquilidade aos clientes e à própria empresa. 

**Integração com seus Clientes:** A comunicação eficiente com seus clientes é fundamental. A Xangu Transportes busca uma solução que integre programação de entregas e informações específicas do cliente, promovendo uma cadeia de suprimentos mais transparente e eficaz. 

**Eficiência Operacional:** A busca por eficiência operacional é constante. Um sistema de gestão eficaz deve fornecer ferramentas para otimizar processos internos, desde o agendamento de rotas até a gestão da frota e a manutenção preventiva dos veículos. 

**Gestão de Documentação e Compliance:** Dada a complexidade das regulamentações no setor de transporte, a empresa precisa de um sistema que facilite a gestão de documentação, garantindo a conformidade com normas legais e regulatórias. 


Ao reconhecer esses desafios, a Xangu Transportes compreende a importância estratégica de investir em um sistema de gestão logística especializado para suas operações. A implementação desse sistema não apenas aprimorará a eficiência operacional, mas também consolidará a reputação da empresa como uma transportadora confiável e eficiente na região. 


>Modelo MER DESCRITIVO:


# Entidades: 

**Veículo:**

Atributos: ID_Veiculo (Chave Primária), Placa, Modelo, Ano, Tipo (caminhão, van, etc.). 

**Rota:** 

Atributos: ID_Rota (Chave Primária), ID_Cliente (Chave Estrangeira), ID_Veiculo (Chave Estrangeira), Origem, Destino, Distância, Tempo Estimado. 

**Motorista:** 

Atributos: ID_Motorista (Chave Primária), ID_Veiculo (Chave Estrangeira), Nome, Aniversario, Salário Fixo, Comissao, Horas Trabalhadas. 

**Cliente:** 

Atributos: ID_Cliente (Chave Primária), Nome, CNPJ, Endereço. 

**Manutenção:** 

Atributos: ID_Manutencao (Chave Primária), ID_Veiculo (Chave Estrangeira), Tipo de Manutenção, Data, Custos. 

**Documentação:** 

Atributos: ID_Documento (Chave Primária), Tipo de Documento, Descrição, Vencimento. 

**Compliance:** 

Atributos: ID_Compliance (Chave Primária), Tipo de Compliance, Descrição, Status (em conformidade, não em conformidade). 

 

>Relacionamentos: 

**Veículo-Rota:** 

Um veículo pode percorrer várias rotas; uma rota é percorrida por um veículo. 

Relacionamento: Muitos para Muitos. 

**Rota- Cliente:** 

Uma entrega é feita para um cliente; um cliente pode receber várias entregas. 

Relacionamento: Um para Muitos. 

**Veículo-Manutenção:** 

Um veículo pode passar por várias manutenções; uma manutenção é realizada em um veículo. 

Relacionamento: Um para Muitos. 

**Veículo-Motorista:** 

Um veículo tem um motorista; um motorista tem um veículo 

Relacionamento: Um para Um. 

**Veículo-Documentação:** 

Um veículo pode ter vários documentos; um documento pertence a um veículo. 

Relacionamento: Um para Muitos. 

Veículo-Compliance: 

Um veículo pode ter várias conformidades de compliance; uma conformidade de compliance pertence a um veículo. 

Relacionamento: Um para Muitos. 
