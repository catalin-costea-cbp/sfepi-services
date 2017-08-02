L'idée est de faire une appli "hello world" et de la déployer jusqu'au bout.

# Configuration

Dans le build.properties : ajout de app_version=X.X.X-SNAPSHOT

Dans le build.gradle : 
* plugin [maven-publish](https://docs.gradle.org/3.3/userguide/publishing_maven.html)
* [config du repo](https://docs.gradle.org/3.3/dsl/org.gradle.api.artifacts.repositories.MavenArtifactRepository.html)
* ajout du code a jouer avant la tâche "war" : `war.doFirst {...` et après le "publish" : `publish.doLast`
* ajout des méthodes utilitaires