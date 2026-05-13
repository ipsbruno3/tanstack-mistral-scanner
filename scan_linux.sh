#!/usr/bin/env bash

OUT="$HOME/compromised_scan.txt"

echo "[*] Deep Linux scan started..."
echo "[*] Output: $OUT"

rm -f "$OUT"

PACKAGES=(

# Tanstack
"@tanstack/arktype-adapter"
"@tanstack/eslint-plugin-router"
"@tanstack/eslint-plugin-start"
"@tanstack/history"
"@tanstack/nitro-v2-vite-plugin"
"@tanstack/react-router"
"@tanstack/react-router-devtools"
"@tanstack/react-router-ssr-query"
"@tanstack/react-start"
"@tanstack/react-start-client"
"@tanstack/react-start-rsc"
"@tanstack/react-start-server"
"@tanstack/router-cli"
"@tanstack/router-core"
"@tanstack/router-devtools"
"@tanstack/router-devtools-core"
"@tanstack/router-generator"
"@tanstack/router-plugin"
"@tanstack/router-ssr-query-core"
"@tanstack/router-utils"
"@tanstack/router-vite-plugin"
"@tanstack/solid-router"
"@tanstack/solid-router-devtools"
"@tanstack/solid-router-ssr-query"
"@tanstack/solid-start"
"@tanstack/solid-start-client"
"@tanstack/solid-start-server"
"@tanstack/start-client-core"
"@tanstack/start-fn-stubs"
"@tanstack/start-plugin-core"
"@tanstack/start-server-core"
"@tanstack/start-static-server-functions"
"@tanstack/start-storage-context"
"@tanstack/valibot-adapter"
"@tanstack/virtual-file-routes"
"@tanstack/vue-router"
"@tanstack/vue-router-devtools"
"@tanstack/vue-router-ssr-query"
"@tanstack/vue-start"
"@tanstack/vue-start-client"
"@tanstack/vue-start-server"
"@tanstack/zod-adapter"

# Mistral
"@mistralai/mistralai"
"@mistralai/mistralai-azure"
"@mistralai/mistralai-gcp"

# UiPath
"@uipath/access-policy-sdk"
"@uipath/access-policy-tool"
"@uipath/admin-tool"
"@uipath/agent-sdk"
"@uipath/agent-tool"
"@uipath/agent.sdk"
"@uipath/aops-policy-tool"
"@uipath/ap-chat"
"@uipath/api-workflow-tool"
"@uipath/apollo-core"
"@uipath/apollo-react"
"@uipath/apollo-wind"
"@uipath/auth"
"@uipath/case-tool"
"@uipath/cli"
"@uipath/codedagent-tool"
"@uipath/codedagents-tool"
"@uipath/codedapp-tool"
"@uipath/common"
"@uipath/context-grounding-tool"
"@uipath/data-fabric-tool"
"@uipath/docsai-tool"
"@uipath/filesystem"
"@uipath/flow-tool"
"@uipath/functions-tool"
"@uipath/gov-tool"
"@uipath/identity-tool"
"@uipath/insights-sdk"
"@uipath/insights-tool"
"@uipath/integrationservice-sdk"
"@uipath/integrationservice-tool"
"@uipath/llmgw-tool"
"@uipath/maestro-sdk"
"@uipath/maestro-tool"
"@uipath/orchestrator-tool"
"@uipath/packager-tool-apiworkflow"
"@uipath/packager-tool-bpmn"
"@uipath/packager-tool-case"
"@uipath/packager-tool-connector"
"@uipath/packager-tool-flow"
"@uipath/packager-tool-functions"
"@uipath/packager-tool-webapp"
"@uipath/packager-tool-workflowcompiler"
"@uipath/packager-tool-workflowcompiler-browser"
"@uipath/platform-tool"
"@uipath/project-packager"
"@uipath/resource-tool"
"@uipath/resourcecatalog-tool"
"@uipath/resources-tool"
"@uipath/robot"
"@uipath/rpa-legacy-tool"
"@uipath/rpa-tool"
"@uipath/solution-packager"
"@uipath/solution-tool"
"@uipath/solutionpackager-sdk"
"@uipath/solutionpackager-tool-core"
"@uipath/tasks-tool"
"@uipath/telemetry"
"@uipath/test-manager-tool"
"@uipath/tool-workflowcompiler"
"@uipath/traces-tool"
"@uipath/ui-widgets-multi-file-upload"
"@uipath/uipath-python-bridge"
"@uipath/vertical-solutions-tool"
"@uipath/vss"
"@uipath/widget.sdk"

# Squawk
"@squawk/airport-data"
"@squawk/airports"
"@squawk/airspace"
"@squawk/airspace-data"
"@squawk/airway-data"
"@squawk/airways"
"@squawk/fix-data"
"@squawk/fixes"
"@squawk/flight-math"
"@squawk/flightplan"
"@squawk/geo"
"@squawk/icao-registry"
"@squawk/icao-registry-data"
"@squawk/mcp"
"@squawk/navaid-data"
"@squawk/navaids"
"@squawk/notams"
"@squawk/procedure-data"
"@squawk/procedures"
"@squawk/types"
"@squawk/units"
"@squawk/weather"

# Tally
"@tallyui/components"
"@tallyui/connector-medusa"
"@tallyui/connector-shopify"
"@tallyui/connector-vendure"
"@tallyui/connector-woocommerce"
"@tallyui/core"
"@tallyui/database"
"@tallyui/pos"
"@tallyui/storage-sqlite"
"@tallyui/theme"

# Others
"@beproduct/nestjs-auth"
"@draftauth/client"
"@draftauth/core"
"@draftlab/auth"
"@draftlab/auth-router"
"@draftlab/db"
"@supersurkhet/cli"
"@supersurkhet/sdk"
"@taskflow-corp/cli"
"@tolka/cli"
"@mesadev/rest"
"@mesadev/saguaro"
"@mesadev/sdk"
"@ml-toolkit-ts/preprocessing"
"@ml-toolkit-ts/xgboost"
"@dirigible-ai/sdk"
"@opensearch-project/opensearch"

# Unscoped
"agentwork-cli"
"cmux-agent-mcp"
"cross-stitch"
"git-branch-selector"
"git-git-git"
"ml-toolkit-ts"
"nextmove-mcp"
"safe-action"
"ts-dna"
"wot-api"

# PyPI
"guardrails-ai"
"mistralai"
)

echo "[*] Filesystem scan..."
echo

for pkg in "${PACKAGES[@]}"; do
    echo "Scanning $pkg"

    find / \
        -type d \
        -iname "*$(basename "$pkg")*" \
        2>/dev/null >> "$OUT"

    find / \
        -type f \
        -iname "*$(basename "$pkg")*" \
        2>/dev/null >> "$OUT"
done

echo
echo "[*] npm local packages"

for pkg in "${PACKAGES[@]}"; do
    npm ls "$pkg" --all --depth=20 2>/dev/null | grep "$pkg" >> "$OUT"
done

echo
echo "[*] npm global packages"

for pkg in "${PACKAGES[@]}"; do
    npm ls -g "$pkg" --all --depth=20 2>/dev/null | grep "$pkg" >> "$OUT"
done

echo
echo "[*] pip packages"

pip3 list 2>/dev/null | grep -E "guardrails-ai|mistralai" >> "$OUT"

echo
echo "[DONE]"
echo "Results saved to:"
echo "$OUT"
