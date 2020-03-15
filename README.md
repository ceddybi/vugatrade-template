## lerna with yarn workspaces - Typescript


example with 2 packages `common` and `notebooks`
```
📦root
    └─📂node_modules
    └─📂packages
      └─ 📂common
         └─ 📂src
            └─ 📜index.ts
         └─ 📜tsconfig.json
         └─ 📜package.json
      └─ 📂 notebooks
         └─ 📂src
            └─ 📜index.ts
         └─ 📜tsconfig.json
         └─ 📜package.json     
    └─📜.gitignore
    └─📜package.json
```


```
git clone https://github.com/ceddybi/vugatrade-template
cd vugatrade-template
yarn install
cd packages/common
yarn build
yarn add ...
...e.t.c
```
