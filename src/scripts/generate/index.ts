import { getOutput } from "../../utils";
import { existsSync, mkdirSync, writeFileSync } from "fs";
import { basename, dirname, join, relative } from "path";
import { astDereferencer, findAll } from "solidity-ast/utils";
import { Class } from "solidity-mermaid";
import { contractsAt } from "./contracts";
import { SourceUnit } from "solidity-ast";

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
        const classDiagram = new Class(
          {
            sources: output.sources,
          },
          "ContractDefinition",
          typeDef.id
        );

        const path = join(
          root,
          "generated",
          relative(".", name).split("node_modules/")[1]
        );
        const directory = dirname(path);
        if (!existsSync(path)) mkdirSync(directory, { recursive: true });

        // Save diagram
        writeFileSync(path, classDiagram.processed);
        console.info(`${path} saved`);
      }
    }
  }
}

generate();
