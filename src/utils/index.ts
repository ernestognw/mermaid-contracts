import { Contract } from "@types";
import solc from "solc";
import { SourceUnit } from "solidity-ast";
import { SolcOutput } from "solidity-ast/solc";

function getOutput(
  contracts: Record<string, Contract>,
  name: string
): SolcOutput {
  const input = {
    language: "Solidity",
    sources: {
      [name]: { content: contracts[name].content },
    },
    settings: {
      outputSelection: {
        "*": {
          "*": ["*"],
          "": ["ast"],
        },
      },
    },
  };

  return JSON.parse(
    solc.compile(JSON.stringify(input), {
      import: (path) => ({
        contents: contracts[path].content,
      }),
    })
  );
}

export { getOutput };
