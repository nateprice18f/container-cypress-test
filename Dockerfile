# Without Cypress with Node 20.5.0, Chrome 114.0.5735 and Edge 114.0.1823
#FROM cypress/browsers:node-20.5.0-chrome-114.0.5735.133-1-ff-114.0.2-edge-114.0.1823.51-1

# Cypress included version 12.17.4 as baseline Cypress image with Node 20.5.0, Chrome 114.0.5735 and Edge 114.0.1823
FROM cypress/included:cypress-12.17.4-node-20.5.0-chrome-114.0.5735.133-1-ff-114.0.2-edge-114.0.1823.51-1

ENV TZ=America/New_York

LABEL maintainer="natep18f"
LABEL description="Cypress Base Container"
LABEL version="0.0"

