# Source Code from Get Programming with Haskell Book

## Visual Studio Code plugin
- `Haskero`
* <a href="https://github.com/rainbyte/haskell-ide-chart"> Haskell editor/IDE support</a>

## Install Stack 
0. `brew update`
1. `brew install stack`

## Create new project and Build 
```shell
	stack new {project name} simple --resolver=lts-7.8
	lst-7.8 does is it mean compile version you need to use
```
1. Create project -> `stack new hello-world simple --resolver=lts-7.8` 
2. Build -> `stack build` 
3. Set up stack or setup GHC -> `stack setup`
4. Execute program -> `stack exec hello-world`
5. Run program -> `stack runghc Main.hs`
6. Interactive for GHC -> `stack ghci`
7. Exit interactive mode -> `:quit`


### You can read more on Haskell platform