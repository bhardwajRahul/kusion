## kusion

Kusion is the Platform Orchestrator of Internal Developer Platform

### Synopsis

As a Platform Orchestrator, Kusion delivers user intentions to Kubernetes, Clouds and On-Premise resources. Also enables asynchronous cooperation between the development and the platform team and drives separation of concerns.

 Find more information at: https://www.kusionstack.io/docs/reference/commands/

```
kusion [flags]
```

### Options

```
  -h, --help                    help for kusion
      --profile string          Name of profile to capture. One of (none|cpu|heap|goroutine|threadcreate|block|mutex) (default "none")
      --profile-output string   Name of the file to write the profile to (default "profile.pprof")
```

### SEE ALSO

* [kusion apply](kusion_apply.md)	 - Apply the operational intent of various resources to multiple runtimes
* [kusion build](kusion_build.md)	 - Build Kusion modules in a Stack to the Intent
* [kusion compile](kusion_compile.md)	 - Deprecated: Use 'kusion build' to generate the Intent instead
* [kusion deps](kusion_deps.md)	 - Show KCL file dependency information
* [kusion destroy](kusion_destroy.md)	 - Destroy resources within the stack.
* [kusion init](kusion_init.md)	 - Initialize the scaffolding for a project
* [kusion preview](kusion_preview.md)	 - Preview a series of resource changes within the stack
* [kusion version](kusion_version.md)	 - Print the Kusion version information for the current context
* [kusion workspace](kusion_workspace.md)	 - Workspace is a logical concept representing a target that stacks will be deployed to

###### Auto generated by spf13/cobra on 4-Jan-2024
