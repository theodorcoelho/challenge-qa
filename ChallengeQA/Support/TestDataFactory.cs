using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Bogus;
using Bogus.Extensions.Brazil;
using ChallengeQA.Models;
using FluentAssertions.Primitives;
using static OpenQA.Selenium.BiDi.Modules.Session.ProxyConfiguration;

namespace ChallengeQA.Support
{
    public static class TestDataFactory
    {
        private static readonly Faker Faker = new Faker("pt_BR");

        public static Candidato CriarCandidato()
        {
            return new Candidato
            {
                //Cpf = Faker.Person.Cpf(includeFormatSymbols: false),
                Cpf = GerarCpfInvalido(),
                Nome = Faker.Name.FirstName(),
                Sobrenome = Faker.Name.LastName(),
                NomeSocial = Faker.Name.FirstName(),
                DataNascimento = Faker.Date.Between(
                    DateTime.Now.AddYears(-80),
                DateTime.Now.AddYears(-18) )
                    .ToString("dd/MM/yyyy"),
                TipoDeficiencia = Faker.PickRandom("Física", "Auditiva", "Visual", "Intelectual", "Mental", "Sensorial", "Múltipla"),
                Email = Faker.Internet.Email(),
                Celular = Faker.Phone.PhoneNumber("(##) #####-####"),
                Telefone = Faker.Phone.PhoneNumber("(##) #####-####")
            };
        }

        public static Endereco CriarEndereco()
        {
            return new Endereco
            {
                Cep = Faker.Address.ZipCode("#####-###"),
                Rua = Faker.Address.StreetName(),
                Complemento = Faker.Address.SecondaryAddress(),
                Bairro = Faker.Address.County(),
                Cidade = Faker.Address.City(),
                Estado = Faker.Address.StateAbbr(),
                Pais = Faker.Address.Country()
            };

        }
        private static string GerarCpfInvalido()
        {
            string cpfValido = Faker.Person.Cpf(includeFormatSymbols: false);
            return cpfValido.Substring(0, cpfValido.Length - 2) + "00";
        }

    }
}