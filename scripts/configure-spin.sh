#!/bin/bash

SPIN_DECK_ENDPOINT=spinnaker.stackarea.com
SPIN_GATE_ENDPOINT=spin-api.stackarea.com
SPIN_DECK_URL=http://${SPIN_DECK_ENDPOINT}
SPIN_GATE_URL=http://${SPIN_GATE_ENDPOINT}

hal config security ui edit --override-base-url ${SPIN_DECK_URL}
hal config security api edit --override-base-url ${SPIN_GATE_URL}

hal deploy apply
