const { defineConfig } = require('cypress')
const getCompareSnapshotsPlugin = require('/app_modules/node_modules/cypress-image-diff-js/dist/plugin')
const { beforeRunHook } = require('/app_modules/node_modules/cypress-mochawesome-reporter/lib')

module.exports = defineConfig({
  reporter: '/app_modules/node_modules/cypress-mochawesome-reporter',
  video: false,
  screenshotOnRunFailure: true,
  e2e: {
    supportFile: '/e2e/e2e/accessibility/axe_eng.cy.js',
    specPattern: '/e2e/*.cy.js',
    baseUrl: 'http://localhost',
    viewportWidth: 1280,
    viewportHeight: 800,
    "retries": {
      "runMode": 2,
      // "openMode": 0
    },
    chromeWebSecurity: false,
    responsetimeout: 10000,
    "blockHosts": ["www.google-analytics.com", "ssl.google-analytics.com"],
    experimentalRunAllSpecs: true,
    setupNodeEvents(on, config) {
      // Plugins
      getCompareSnapshotsPlugin(on, config),
      require('/app_modules/node_modules/cypress-mochawesome-reporter/plugin')(on),
      on('before:run', async (details) => {
        console.log('override before:run')
        await beforeRunHook(details)
      }),
      // Tasks
      on('task', {
        log(message) {
          console.log(message)

          return null
        },
        table(message) {
          console.table(message)
    
          return null
        }
      })
    }
  },
});