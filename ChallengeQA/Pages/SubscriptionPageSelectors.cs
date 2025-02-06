using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ChallengeQA.Pages;

namespace ChallengeQA.Pages
{
    public static class SubscriptionPageSelectors
    {
        // Menus da barra de navegação superior
        public const string MenuHome = "[data-testid='nav-0-link']";
        public const string MenuPrivacidade = "[data-testid='nav-1-link']";


        // Campos de seleção de nível de ensino e curso
        public const string ComboboxNivelEnsino = "[data-testid='education-level-select']";
        public const string ComboboxCurso = "[data-testid='graduation-combo']";
         
        // Botões de navegação avançar e voltar no cadastro
        public const string ButtonVoltar  = "[data-testid='back-button']";
        public const string ButtonAvancar = "[data-testid='next-button']";
        
        // Elementos do formulário de cadastro do candidato
        // Dados pessoais
        public const string InputCpf = "[data-testid='cpf-input']";
        public const string InputNome = "[data-testid='name-input']";
        public const string InputSobrenome = "[data-testid='surname-input']";
        public const string InputNomeSocial = "[data-testid='social-name-input']";
        public const string InputDataNascimento = "[data-testid='birthdate-input']";
        public const string CheckboxPossuiDeficiencia = "[data-testid='has-disability-checkbox']";
        public const string InputTipoDeficiencia = "[data-testid='disability-input']";
        
        // Contato
        public const string InputEmail = "[data-testid='email-input']";
        public const string InputCelular = "[data-testid='cellphone-input']";
        public const string InputTelefone = "[data-testid='phone-input']";
        
        // Endereço
        public const string InputCep = "[data-testid='cep-input']";
        public const string InputEndereco = "[data-testid='address-input']";
        public const string InputComplemento = "[data-testid='complement-input']";
        public const string InputBairro = "[data-testid='neighborhood-input']";
        public const string InputCidade = "[data-testid='city-input']";
        public const string InputEstado = "[data-testid='state-input']";
        public const string InputPais = "[data-testid='country-input']";
    }

}
