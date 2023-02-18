import { Contract } from "@types";
import { readdirSync, readFileSync } from "fs";
import { extname, join } from "path";

function* contractsAt(path): Generator<Contract> {
  const files = readdirSync(path, { withFileTypes: true });
  for (const file of files) {
    const name = join(path, file.name);
    if (file.isDirectory()) {
      yield* contractsAt(name);
    } else if (extname(name) === ".sol") {
      yield { name, content: readFileSync(name, "utf-8") };
    }
  }
}

export { contractsAt };
