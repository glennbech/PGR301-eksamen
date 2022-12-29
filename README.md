Del 1

En av de største utfordringene med Shopifly's systemutviklingsprosess er at de kun deployer kode en gang i kvartalet. Dette kan føre til at nye funksjonaliteter blir forsinket i månedsvis, og kan også føre til at feil og problemer blir liggende i koden i lang tid uten å bli oppdaget og fikset.

Innføring av DevOps kan bidra til å løse disse utfordringene ved å fremme en kultur og praksis for tettere samarbeid mellom utvikling- og driftsavdelingene. Dette kan bidra til å øke frekvensen på leveransene, noe som igjen kan føre til raskere utrulling av nye funksjonaliteter og bedre stabilitet i systemet.

Ut ifra et DevOps perspektiv, kan det være problematisk å redusere frekvensen på leveranser og legge på mer kontroll og QA i et forsøk på å øke stabiliteten. Dette kan føre til at endringer i koden blir lagt til i store, komplekse batcher som kan være vanskelige å feilsøke og forstå. Dette kan også føre til at endringer blir forsinket i lang tid, noe som kan svekke produktiviteten og hindre rask respons på kundebehov og markedsendringer.

En bedre tilnærming kan være å bruke DevOps-prinsipper som kontinuerlig levering og kontinuerlig integrasjon og deploy. Dette innebærer at endringer i koden blir lagt til og testet kontinuerlig, slik at enkeltendringer kan deployes i mindre og mer overkommelige batcher. Dette kan bidra til å øke stabiliteten, da endringer i koden blir testet og integrert kontinuerlig, i stedet for å vente til store batcher av kode skal deployes.



En utfordring med at utviklingsteamet overleverer kode til en annen avdeling som har ansvar for drift, er at det kan føre til en dårligere sammenkobling mellom utvikling- og driftsavdelingen. Dette kan føre til at utviklingsteamet ikke har god nok oversikt over driftsmiljøet og ikke kan ta hensyn til driftskrav og begrensninger når de utvikler kode. Dette kan også føre til at driftsavdelingen ikke har god nok innsikt i hvordan koden fungerer og kan føre til problemer når den skal deployes.

En bedre tilnærming kan være å ha et team som har ansvar for både utvikling og drift. Dette kan bidra til å styrke samarbeidet mellom avdelingene og øke forståelsen for hverandres behov og utfordringer. Dette kan også bidra til å redusere tiden det tar å deploye kode, da teamet kan jobbe med både utvikling og drift samtidig.

Å release kode ofte kan by på utfordringer, som for eksempel risiko for økt sannsynlighet for feil i koden og problemer med stabilitet. En måte å redusere risikoen på kan være å bruke DevOps-prinsipper som kontinuerlig integrasjon og deploy. Dette innebærer at kode blir lagt til og integrert i systemet kontinuerlig, slik at enkeltendringer kan deployes i mindre og mer overkommelige batcher. Dette kan bidra til å øke stabiliteten, da endringer i koden blir testet og integrert kontinuerlig, i stedet for å vente til store batcher av kode skal deployes.
En annen måte å redusere risiko på kan være å bruke automatisering av tester. Dette innebærer å bruke verktøy og teknikker for å automatisere testene som skal kjøres for å sikre at koden fungerer som forventet. Dette kan bidra til å redusere mengden manuell testing som må gjøres, noe som kan bidra til å øke hastigheten på leveransene og redusere risikoen for feil i koden.

Del 2
Oppave 1)

Oppdater workflow til å kjøre når det lages pull request og hver push til main branch

Oppgave 2)

Fikk oppdatert workflowen til å kjøre, og se at workflowen failet med de allerede eksisterende Unit testene. Deretter, rettet jeg opp i disse feilene og pushet koden til main. Da funket workflowen, og den passerte.

Oppgave 3

For å konfigurere forken på en slik måte at ingen kan pushe kode direkte på main branch, kan du bruke branch protection-funksjonaliteten til GitHub. Dette kan gjøres ved å gå til Settings-siden for forken, velge Branches-fanen, og deretter velge main branch under "Branch protection rules". Deretter kan du aktivere regelen for å kreve at alle endringer skal merge med en pull request.

For å konfigurere forken slik at kode kan merges til main branch kun ved å lage en pull request med minst en godkjenning, kan du bruke review-funksjonaliteten til GitHub. Dette kan gjøres ved å gå til Settings-siden for forken, velge Branches-fanen, og deretter velge main branch under "Branch protection rules". Deretter kan du aktivere regelen for "Pull request reviews" og angi antall godkjenninger som kreves for å merge en pull request.

For å konfigurere forken slik at kode kan merges til main branch bare når feature branch som pull requesten er basert på, er verifisert av GitHub Actions, kan du også bruke branch protection-funksjonaliteten til GitHub. Dette kan gjøres ved å gå til Settings-siden for forken, velge Branches-fanen, og deretter velge main branch under "Branch protection rules". Deretter kan du aktivere regelen for "Contexts" og velge ønskede GitHub Actions-workflows som kreves for å merge en pull request.

Slik kan du bruke branch protection- og status checks-funksjonaliteten til GitHub for å konfigurere forken på en slik måte at ingen kan pushe kode direkte på main branch, kode kan merges til main branch kun ved å lage en pull request med minst en godkjenning, og kode kan merges til main branch bare når feature branch som pull requesten er basert på, er verifisert av GitHub Actions.

Del 3
Oppgave 1)
For å få workflow til å fungere med Docker Hub konto, må man opprette two secrets i GitHub repositoriet for DOCKER_HUB_USERNAME og DOCKER_HUB_TOKEN. Etter at disse secretsene har blitt lagt til i repository, burde workflowen fungere. For min del, funket dette perfekt og workflowen lastet opp et nytt Docker Hub image.

Oppgave 2)
Etter å ha endret til riktig Java version, endret til en multi stage build prosess og også oppdatert workflowen alt ser ut til å kjøre riktig.

Oppgave 3)

For å laste opp et container-bilde til sensoren sitt eget AWS ECR-repository, må man først lage en ny fork, opprette et AWS ECR-repository og få de nødvendige IAM detaljene til brukeren.

Deretter oppdater AWS_ECR_REPOSITORY, AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY secretsene for Actions i repository settings. Brukeren må deretter pushe koden, og GitHub Actions-workflowen vil da automatisk bygge og pushe en container til brukerens ECR repository.
