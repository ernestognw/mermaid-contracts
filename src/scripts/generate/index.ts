import { getOutput } from "../../utils";
import { existsSync, mkdirSync, writeFileSync } from "fs";
import { basename, dirname, join, relative } from "path";
import { findAll } from "solidity-ast/utils";
import { Class } from "solidity-mermaid";
import { contractsAt } from "./contracts";
import { ContractDefinition } from "solidity-ast";
import { SolcOutput } from "solidity-ast/solc";

function generate() {
  const root = join(__dirname, "../../..");
  const modulesPath = join(root, "node_modules");
  const ozPath = join(modulesPath, "@openzeppelin/contracts");

  const contracts = contractsAt(ozPath);
  const sources = [...contracts].reduce(
    (acc, contract) => Object.assign(acc, { [contract.name]: contract }),
    {}
  );

  // Loop every contract
  for (const { name } of contractsAt(ozPath)) {
    const output = getOutput(sources, name);

    // Loop every source generated
    for (const [, { ast }] of Object.entries(output.sources)) {
      // Loop every ContractDefinition
      for (const typeDef of findAll(["ContractDefinition"], ast)) {
        const ozDirectory = relative(".", name).split("node_modules/")[1];
        const outDirectory = join(root, "generated", dirname(ozDirectory));
        const relevantContract = name.split("/").reverse().at(0);
        if (relevantContract === `${typeDef.name}.sol`)
          writeMermaid(output.sources, typeDef, outDirectory);
        else console.info(`Skipping ${typeDef.name} from ${relevantContract}`);
      }
    }
  }
}

function writeMermaid(
  sources: SolcOutput["sources"],
  typeDef: ContractDefinition,
  directory: string
) {
  const classDiagram = new Class(
    {
      sources,
    },
    "ContractDefinition",
    typeDef.id
  );

  const path = join(directory, `${typeDef.name}.mmd`);
  const directoryName = dirname(path);
  if (!existsSync(path)) mkdirSync(directoryName, { recursive: true });

  // Save diagram
  writeFileSync(path, classDiagram.processed);
  console.info(`Saved ${relative(".", path)}`);
}

generate();
