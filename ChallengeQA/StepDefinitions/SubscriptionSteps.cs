using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ChallengeQA.Models;
using ChallengeQA.Pages;
using ChallengeQA.Support;
using Reqnroll;
using FluentAssertions;
using OpenQA.Selenium;
using System.Threading;

namespace ChallengeQA.StepDefinitions
{
    [Binding]
    public class SubscriptionSteps
    {
        private readonly ScenarioContext _scenarioContext;
        private readonly IWebDriver _driver;

        public SubscriptionSteps(ScenarioContext scenarioContext)
        {
            _scenarioContext = scenarioContext;
            _driver = _scenarioContext.Get<IWebDriver>();
        }

        private SubscriptionPage subscriptionPage;
        private SubscriptionPage SubscriptionPage => subscriptionPage ??= new SubscriptionPage(_driver);

        [Given("que o candidato acessa o portal de inscricoes")]
        public void GivenQueOCandidatoAcessaOPortalDeInscricoes()
        {
            SubscriptionPage.AcessarPortalDeInscicoes();
        }

        [Given("que o candidato esta na pagina inicial")]
        public void GivenQueOCandidatoEstaNaPaginaInicial()
        {
            SubscriptionPage.VerificarSeEstaNaPaginaInicial();
        }

        [When("seleciona o nivel de ensino {string}")]
        public void WhenSelecionaONivelDeEnsino(string nivelEnsino)
        {
            SubscriptionPage.ClicarNaComboboxDeNivelDeEnsino(nivelEnsino);
        }

        [Then("deve ser redirecionado para selecao de curso de {string}")]
        public void ThenDeveSerRedirecionadoParaSelecaoDeCursoDe(string graduacao)
        {
            _driver.FindElement(By.CssSelector(SubscriptionPageSelectors.ComboboxCurso)).Displayed
                .Should().BeTrue();
        }
    }
}
