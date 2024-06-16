# Desafio Dio - Criando um RG pro Creeper do Minecraft com a Linguagem Lua 



### **Projeto em Lua:**

lua



```lua
-- Classe Pessoa
local Pessoa = {}

function Pessoa:__init(self, nome, idade)
  self.nome = nome
  self.idade = idade
end

function Pessoa:falar(self)
  print(self.nome .. " está falando.")
end

-- Classe Estudante
local Estudante = {}

function Estudante:__init(self, nome, idade, curso)
  Pessoa:__init(self, nome, idade)  -- Chama o construtor da classe pai
  self.curso = curso
end

function Estudante:estudar(self)
  print(self.nome .. " está estudando " .. self.curso .. ".")
end

-- Cria objetos
local pessoa1 = Pessoa("Alice", 30)
local estudante1 = Estudante("Carlos", 20, "Engenharia")

-- Chama métodos
pessoa1:falar()
estudante1:falar()
estudante1:estudar()
```



#### **Saída:**

plaintext



```plaintext
Alice está falando.
Carlos está falando.
Carlos está estudando Engenharia.
```



### **Explicação:**

- Em Lua, as classes são criadas usando tabelas.
- O método `__init` é o construtor da classe.
- A função `Pessoa:__init` chama o construtor da classe pai usando `Pessoa:__init(self, nome, idade)`.
- Os métodos são definidos usando a sintaxe `function NomeDaClasse:nomeDoMetodo(self, ...)`
- Criamos objetos das classes `Pessoa` e `Estudante` usando a sintaxe `local objeto = NomeDaClasse("argumento1", "argumento2", ...)`.



**Exemplo de Código com Classes e Herança em Python**

python



```python
class Pessoa:
    def __init__(self, nome, idade):
        self.nome = nome
        self.idade = idade

    def falar(self):
        print(f"{self.nome} está falando.")

class Estudante(Pessoa):
    def __init__(self, nome, idade, curso):
        super().__init__(nome, idade)
        self.curso = curso

    def estudar(self):
        print(f"{self.nome} está estudando {self.curso}.")

# Criando objetos
pessoa1 = Pessoa("Alice", 30)
estudante1 = Estudante("Carlos", 20, "Engenharia")

# Chamando métodos
pessoa1.falar()
estudante1.falar()
estudante1.estudar()
```



**Neste exemplo:**

- A classe **Pessoa** tem um construtor `__init__` que recebe o nome e a idade e um método `falar()`.
- A classe **Estudante** herda da classe **Pessoa** e adiciona um atributo `curso` e um método `estudar()`.
- Criamos objetos das classes **Pessoa** e **Estudante** e chamamos seus métodos.



**Saída:**

plaintext



```plaintext
Alice está falando.
Carlos está falando.
Carlos está estudando Engenharia.
```
