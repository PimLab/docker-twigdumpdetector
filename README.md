# TwigDumpDetector Docker

Simple to use script to detect dump variables in twig template files. It search through the given directory 
recursive to find all twig files in it and sniff for forgotten dump statements. It's often used in CI/CD Pipelines.

## Hot to use

After you installed twig-dump-detector to your system, you can use it this way:

```shell
$ twig-dump-detector -d path/to/directory
```

#### Avaible Arguments

| Argument       | Value          | Required | Description                                                                          |
| :------------- | :------------- | :------- | :----------------------------------------------------------------------------------- |
| -d             | path/to/dir    | yes      | Must be given once. Give relative of absolut path to the directory you want to test. |
