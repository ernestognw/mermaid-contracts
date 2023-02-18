import { filesAt } from '../utils/files';
import { extname, join, relative } from 'path';
import json2md from 'json2md';
import { writeFileSync } from 'fs';

const root = join(__dirname, '../..');

function createReadme() {
  writeFileSync(
    join(root, 'README.md'),
    json2md([
      {
        h1: 'Solidity Contracts Mermaid Diagrams',
      },
      {
        p: 'A collection of common Solidity Contracts diagrams',
      },
      {
        h2: 'Index',
      },
      createIndex(),
    ])
  );
}

interface UnorderedList {
  ul: (string | UnorderedList)[];
}

const isString = (candidate): candidate is string =>
  typeof candidate === 'string';

function createIndex(): UnorderedList {
  const generated = join(root, 'generated');

  const tree: UnorderedList = {
    ul: [],
  };

  // Create tree
  for (const diagram of filesAt(generated)) {
    const path = relative(generated, diagram.name);
    let current = tree;
    for (const dir of path.split('/')) {
      if (!extname(dir)) {
        // Push directory if doesn't exist
        if (!current.ul.includes(dir)) {
          current.ul.push(dir);
          current.ul.push({
            ul: [],
          });
        }

        // Advance
        const dirIndex = current.ul.findIndex(
          (ul) => isString(ul) && ul == dir
        );
        const next = current.ul[dirIndex + 1];
        if (isString(next)) throw new Error('Failed processing README'); // Should be unreachable
        current = next;
      } else {
        current.ul.push(`[${dir}](${join('./generated', path)})`);
      }
    }
  }

  return tree;
}

createReadme();
