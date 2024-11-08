const { defineConfig } = require("cypress");
const cucumber = require('cypress-cucumber-preprocessor').default;
const codeCoverage = require('@cypress/code-coverage/task');


module.exports = defineConfig({
  reporter: 'cypress-mochawesome-reporter',
  reporterOptions: {
    charts: true,
    reportPageTitle: 'RCWILLEY',
    embeddedScreenshots: true,
    inlineAssets: true,
    saveAllAttempts: false
  },
  e2e: {
    setupNodeEvents(on, config) {
      // Register the code coverage task
      codeCoverage(on, config);

      // Register the cucumber preprocessor
      on('file:preprocessor', cucumber());

      // Register the Mochawesome reporter plugin
      require('cypress-mochawesome-reporter/plugin')(on);


      return config; // Return the config object
    },
    //baseUrl :'https://www.rcwilley.com/',

    baseUrl: 'https://rcwtest.rcwilley.com/',
    specPattern: 'cypress/e2e/features/**/*.feature',

    chromeWebSecurity: false
  },
});
