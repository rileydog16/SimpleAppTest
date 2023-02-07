import {buildProject} from './tools.mjs'

const [,,projectDir, outputDir, toolsUrl] = process.argv

console.log('Building project', projectDir, outputDir, toolsUrl)
buildProject(projectDir, outputDir, toolsUrl)
console.log('Project built')