import type { File } from '../types';
import { readdirSync, readFileSync } from 'fs';
import { join } from 'path';

interface Options {
  filter?: (File) => boolean;
}

function* filesAt(path: string, options?: Options): Generator<File> {
  const files = readdirSync(path, { withFileTypes: true });
  for (const file of files) {
    const name = join(path, file.name);
    if (file.isDirectory()) {
      yield* filesAt(name, options);
    } else {
      const result = { name, content: readFileSync(name, 'utf-8') };
      if (options?.filter ? options.filter(result) : true) yield result;
    }
  }
}

export { filesAt };
