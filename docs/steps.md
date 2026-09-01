# create expressjs typescript

To create an **Express.js** application with **TypeScript**, initialize a new project and install the core framework along with TypeScript and its type definitions as development dependencies.

```bash
npm init -y
npm install express
npm install -D typescript @types/node @types/express tsx
```

Create a `tsconfig.json` file by running `npx tsc --init` and ensure the `outDir` is set to a build folder (e.g., `"./dist"`). Next, create a source file (e.g., `src/index.ts`) with the following structure:

```typescript
import express, { Request, Response } from 'express';

const app = express();
const PORT = process.env.PORT || 3000;

app.get('/', (req: Request, res: Response) => {
  res.send('Hello World!');
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
```

Finally, add scripts to `package.json` to compile and run the server, or use `tsx` for direct execution during development:

```json
"scripts": {
  "build": "tsc",
  "start": "node dist/index.js",
  "dev": "tsx watch src/index.ts"
}
```
