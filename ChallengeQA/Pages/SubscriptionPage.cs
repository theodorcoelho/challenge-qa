using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using ChallengeQA.Models;
using OpenQA.Selenium.Support.UI;

namespace ChallengeQA.Pages
{
    public class SubscriptionPage
    {
        private readonly IWebDriver _driver;
        private readonly WebDriverWait _wait;

        public SubscriptionPage(IWebDriver driver)
        {
            _driver = driver;
            _wait = new WebDriverWait(_driver, TimeSpan.FromSeconds(10));
        }

        private IWebElement GetElement(String seletor) => _driver.FindElement(By.CssSelector(seletor));

        public enum TipoSeletor
        {
            CssSelector,
            XPath
        }

        private void PreencheCampo(string seletor, string valor)
        {
            var elemento = GetElement(seletor);
            _wait.Until(d => elemento.Displayed && elemento.Enabled);
            elemento.Clear();
            elemento.SendKeys(valor);
        }

        private void ClicaElemento(string seletor, TipoSeletor tipo)
        {
            var elemento = tipo == TipoSeletor.XPath
                ? _driver.FindElement(By.XPath(seletor))
                : GetElement(seletor);

            _wait.Until(d => elemento.Displayed && elemento.Enabled);
            elemento.Click();
        }
        public void preencheCamposObrigatoriosComDadosValidos()
        {
            Candidato candidato = new Candidato();
            Endereco endereco = new Endereco();

            PreencheCampo(SubscriptionPageSelectors.InputCpf, candidato.Cpf);
            PreencheCampo(SubscriptionPageSelectors.InputNome, candidato.Nome);
            PreencheCampo(SubscriptionPageSelectors.InputSobrenome, candidato.Sobrenome);
            PreencheCampo(SubscriptionPageSelectors.InputDataNascimento, candidato.DataNascimento);
            PreencheCampo(SubscriptionPageSelectors.InputEmail, candidato.Email);
            PreencheCampo(SubscriptionPageSelectors.InputCelular, candidato.Celular);
            PreencheCampo(SubscriptionPageSelectors.InputCep, endereco.Cep);
            PreencheCampo(SubscriptionPageSelectors.InputEndereco, endereco.Rua);
            PreencheCampo(SubscriptionPageSelectors.InputBairro, endereco.Bairro);
            PreencheCampo(SubscriptionPageSelectors.InputCidade, endereco.Cidade);
            PreencheCampo(SubscriptionPageSelectors.InputEstado, endereco.Estado);
            PreencheCampo(SubscriptionPageSelectors.InputPais, endereco.Pais);
        }
       
        public void ClicaEmAvancar() => ClicaElemento(SubscriptionPageSelectors.ButtonAvancar, TipoSeletor.CssSelector);
        public void ClicaEmVoltar() => ClicaElemento(SubscriptionPageSelectors.ButtonVoltar, TipoSeletor.CssSelector);

        public void ClicarNaComboboxDeNivelDeEnsino(string nivelEnsino)
        {
            ClicaElemento(SubscriptionPageSelectors.ComboboxNivelEnsino, TipoSeletor.CssSelector);
            if (nivelEnsino == "graduacao")
            {
                ClicaElemento(SubscriptionPageSelectors.NivelDeEnsinoGraduacao, TipoSeletor.XPath);
                return;
            }
            if (nivelEnsino == "pos-graduacao")
            {
                ClicaElemento(SubscriptionPageSelectors.NivelDeEnsinoPosGraduacao, TipoSeletor.XPath);
                return;
            }
            return;
        }

        public void AcessarPortalDeInscicoes()
        {
            _driver.Navigate().GoToUrl("https://developer.grupoa.education/subscription");
            var elemento = GetElement(SubscriptionPageSelectors.ComboboxNivelEnsino);
            _wait.Until(d => elemento.Displayed && elemento.Enabled);
        }
        public void VerificarSeEstaNaPaginaInicial()
        {
            var elemento = GetElement(SubscriptionPageSelectors.ComboboxNivelEnsino);
            _driver.FindElement(By.CssSelector(SubscriptionPageSelectors.ComboboxNivelEnsino)).Displayed
                .Should().BeTrue();
        }
    }
}
