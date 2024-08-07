��    :      �  O   �      �  0  �  a  *  �   �  d  U	  �  �
  �   �  8  8  Y  q  �   �  �   T  �   '  |   %  D  �  H   �  @   0  F   q  3   �  >   �  7   +     c  c   y  )   �       "   #  R   F  #   �  3   �  (   �  R     N   m  T   �  8     +   J  =   v  2   �  O   �  5   7  V   m  $   �  <   �  ,   &  Z   S  &   �  1   �               4  D   �     �  u        �     �  g   �  [   -  +   �  *   �  ;   �  Z    -  w   \  �!  �   $  ^  �$  �  &  o   �(    M)  H  h*  z   �+  �   ,,  �   �,  Q   �-    �-  8   /  $   =/  '   b/  (   �/  5   �/  2   �/     0  h   30  !   �0     �0     �0  9   �0     -1  -   I1  $   w1  N   �1  E   �1  F   12  ,   x2  '   �2  B   �2  '   3  F   83  (   3  E   �3     �3  #   	4  /   -4  E   ]4     �4     �4     �4     �4  w   5  ;   y5     �5  \   �5     %6     86  [   K6  D   �6  -   �6  L   7  6   g7     1                    
      (       %       	   8                              )          6   2      +       '   "      7   9   .                         *   $         #              /                   0   5      -   ,      4   :                                      &   3       !    
		# Check configuration in main.k
		kusion check main.k

		# Check main.k with arguments
		kusion check main.k -D name=test -D age=18

		# Check main.k with arguments from settings.yaml
		kusion check main.k -Y settings.yaml

		# Check main.k with work directory
		kusion check main.k -w appops/demo/dev 
		# Compile configuration in main.k into YAML format
		kusion compile main.k
	
		# Compile main.k with arguments
		kusion compile main.k -D name=test -D age=18
	
		# Compile main.k with arguments from settings.yaml
		kusion compile main.k -Y settings.yaml
	
		# Compile main.k with work directory
		kusion compile main.k -w appops/demo/dev
	
		# Compile with override
		kusion compile -O __main__:appConfiguration.image=nginx:latest -a
	
		# Compile main.k and write result into output.yaml
		kusion compile main.k -o output.yaml
		
		# Complie without output style and color
		kusion compile --no-style=true 
		# Get name and description of internal templates
		kusion init templates

		# Get templates from specific templates repository
		kusion init templates https://github.com/<user>/<repo> --online=true 
		# Initialize a project from internal templates
		kusion init

		# Initialize a project from default online templates
		kusion init --online=true

		# Initialize a project from a specific online template
		kusion init https://github.com/<user>/<repo> --online=true

		# Initialize a project from a specific local template
		kusion init /path/to/templates 
		# List all project and stack information in the current directory
		kusion ls

		# List all project and stack information in the specify directory
		kusion ls ./path/to/project_dir

		# List all project and stack information in the specify directory,
		# and output in a Tree format
		kusion ls ./path/to/project_dir --format=tree

		# List all project and stack information in the specify directory,
		# and output in a JSON format
		kusion ls ./path/to/project_dir --format=json

		# List all project and stack information in the specify directory,
		# and output in a YAML format
		kusion ls ./path/to/project_dir --format=yaml

		# List all project and stack by level, and output in a Tree format
		kusion ls ./path/to/project_dir --format=tree --level=1 
		# Print Kusion environment information
		kusion env

		# Print Kusion environment information as JSON format
		kusion env --json 
		# The comparison object comes from the files
		kusion diff pod-1.yaml pod-2.yaml
		kusion diff pod-1.yaml pod-2.yaml --swap=true

		# The comparison object comes from the stdin
		cat pod-1.yaml > pod-full.yaml
		echo '---' >> pod-full.yaml
		cat pod-2.yaml >> pod-full.yaml
		cat pod-full.yaml | kusion diff - 
		Apply a series of resource changes within the stack.
	
		Create or update or delete resources according to the KCL files within a stack.
		By default, Kusion will generate an execution plan and present it for your approval before taking any action.
	
		You can check the plan details and then decide if the actions should be taken or aborted. 
		Compare files differences and display the delta.
		Support input file types are: YAML (http://yaml.org/) and JSON (http://json.org/). 
		List all project and stack information in the current directory or the
		specify directory.
		The default output is in a human friendly format, and it also supports
		a variety of formatted structure output. 
		Preview a series of resource changes within the stack.
	
		Create or update or delete resources according to the KCL files within a stack. By default,
		Kusion will generate an execution plan and present it for your approval before taking any action. 
		This command gets the descriptions and definitions of the templates which are used to initialize the project scaffolding. 
		This command initializes the scaffolding for a project, generating a project from an appointed template with correct structure.

		The scaffold templates can be retrieved from local or online. The built-in templates are used by default, self-defined templates are also supported by assigning the template repository path. After creating/updating/deleting the requested object, watch for changes Automatically approve and perform the update after previewing it Automatically show all plan details, combined use with flag `--detail` Automatically show plan details after previewing it Check if KCL configurations in current directory ok to compile Compare differences between input files <from> and <to> Compile KCL into YAML Custom params in JSON. If specified, it will be used as the template default value and skip prompts Delete the specified resources in runtime Disable dumping None values Disable the output style and color Force generating the scaffolding files, even if it would change the existing files Ignore differences of target fields Ignore order changes in lists. The default is false Initialize the scaffolding for a project Initialize with specified project name. If not specified, a prompt will request it Initialize with specified template. If not specified, a prompt will request it Inspect direct of the dependency information. Valid values: up, down. Defaults to up Kusion is the platform engineering engine of KusionStack List templates used to initialize a project Max display depth of the project and stack tree. One of 0,1,2 Omit the dyff summary header. The default is false Output format of the project information. valid values: json, yaml, tree, human Preview a series of resource changes within the stack Preview the execution effect (always successful) without actually applying the changes Print Kusion environment information Print the Kusion version information for the current context Skip prompts and proceed with default values Sort from and to by kubernetes resource order(non standard behavior). The default is false Specify the command line setting files Specify the configuration override path and value Specify the operator Specify the output file Specify the output format of templates. If specified, only support json for now; if not, template name and description is given Specify the output style. One of human and raw. The default is human Specify the override option Specify the spec file path as input, and the spec file must be located in the working directory or its subdirectories Specify the top-level argument Specify the work directory Swap <from> and <to> for comparison. Note that it is invalid when <from> is stdin. The default is false Use templates from online repository to initialize project, or use locally cached templates backend-config config state storage backend backend-type specify state storage backend no-style sets to RawOutput mode and disables all of styling Project-Id-Version: gettext-go-examples-hello
Report-Msgid-Bugs-To: EMAIL
PO-Revision-Date: 2023-07-24 16:46+0800
Last-Translator: howieyuen <howieyuen@outlook.com>
Language-Team: 
Language: zh
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Poedit 3.3.2
 
		# 验证 main.k 中的配置
		kusion check main.k

		# 使用参数验证 main.k
		kusion check main.k -D name=test -D age=18

		# 使用来自 settings.yaml 的参数验证 main.k
		kusion check main.k -Y settings.yaml

		# 使用工作目录验证 main.k
		kusion check main.k -w appops/demo/dev 
		# 将 main.k 中的配置编译成 YAML 格式
		kusion compile main.k

		# 使用参数编译 main.k
		kusion compile main.k -D name=test -D age=18

		# 使用来自 settings.yaml 的参数编译 main.k
		kusion compile main.k -Y settings.yaml

		# 使用工作目录编译 main.k
		kusion compile main.k -w appops/demo/dev

		# Override 当前 Stack 中的 KCL 配置
		kusion compile -O __main__:appConfiguration.image=nginx:latest -a

		# 编译 main.k 并将结果写入 output.yaml
		kusion compile main.k -o output.yaml
		
		# 编译输出不带样式和颜色
		kusion compile —no-style=true 
		# 获取内置模板的名称和描述
		kusion init templates

		# 获取指定的在线仓库中的模板列表
		kusion init templates https://github.com/<user>/<repo> —online=true 
		# 从本地内置模板中初始化一个 Project
		kusion init

		# 从默认的在线模板中初始化一个 Project
		kusion init --online=true

		# 从指定的在线模板初始化一个 Project
		kusion init https://github.com/<user>/<repo> --online=true

		# 从指定的本地模板初始化一个 Project
		kusion init /path/to/templates 
		# 列出当前目录下的所有 Project 和 Stack 信息
		kusion ls

		# 列出指定目录中的所有 Project 和 Stack 信息
		kusion ls ./path/to/project_dir

		# 列出指定目录下的所有 Project 和 Stack 信息，并以 Tree 格式输出
		kusion ls ./path/to/project_dir --format=tree

		# 列出指定目录下的所有 Project 和 Stack 信息，并以 JSON 格式输出
		kusion ls ./path/to/project_dir --format=json

		# 列出指定目录下的所有 Project 和 Stack 信息，并以 YAML 格式输出
		kusion ls ./path/to/project_dir --format=yaml

		# 逐级列出所有 Project 和 Stack，并以 Tree 格式输出
		kusion ls ./path/to/project_dir --format=tree --level=1 
		# 打印 Kusion 环境信息
		kusion env

		# 以 JSON 格式打印 Kusion 环境信息
		kusion env --json 
		# 比较对象来自文件
		kusion diff pod-1.yaml pod-2.yaml
		kusion diff pod-1.yaml pod-2.yaml --swap=true

		# 比较对象来自标准输入
		cat pod-1.yaml > pod-full.yaml
		echo '---' >> pod-full.yaml
		cat pod-2.yaml >> pod-full.yaml
		cat pod-full.yaml | kusion diff - 
		将一系列资源变更 apply 到当前栈中。

		在当前 Stack 中根据 KCL 文件创建、更新、删除资源。
		默认情况下，在采取任何行动之前，Kusion 会生成一个执行计划，并提交给你批准。

		你可以检查计划详细信息，然后决定是否应采取或中止这些操作。 
		比较文件差异并显示增量。
		支持的文件类型有: YAML (http://yaml.org/) 和 JSON (http://json.org/)。 
		列出当前目录或指定目录中的所有 Project 和 Stack 信息。
		默认输出是人性化的格式，也支持多种格式的结构输出。 
		预览 Stack 中的一系列资源更改。

		根据 Stack 内的 KCL 文件创建或更新或删除资源。
		默认情况下，Kusion 会生成一个执行计划并在采取任何行动之前将其提交给您批准。 
		该指令获取用于初始化 Project 脚手架的模板的描述和定义。 
		该指令用于初始化一个 Project 脚手架，从选定的模板生成具备正确结构的 Project。

		脚手架模板可以从本地或者线上获取。默认使用内置模板；若需要使用自定义的模板，需要指定模板仓库的地址。 在创建/更新/删除请求的对象后，观测变更 预览后自动审批并应用更新 预览后自动展示执行计划细节 预览后自动展示 apply 计划细节 检查当前目录中的 KCL 配置是否可以编译 比较输入文件 <from> 和 <to> 之间的差异 将 KCL 编译成 YAML JSON 格式的自定义参数。若指定，那么会用其作为默认的模板参数，并跳过提示 删除运行时中指定的资源 禁用转储 None 值 禁用输出的样式与颜色 强制生成脚手架文件，即使会更改现有文件 忽略目标字段的差异 忽略列表中的顺序变化，默认为否 初始化一个 Project 的脚手架 用指定的 Project 名称初始化。若不指定，将有提示请求获取 用指定的模板初始化。若不指定，将有提示请求获取 Project 信息的输出格式。可选值：json、yaml、tree、human Kusion 是 KusionStack 的平台工程引擎 列出用于初始化 Project 的模板 Project 和 Stack 树的最大显示深度。可选值：0、1、2 省略 dyff 摘要标题，默认为否 project 信息的输出格式。可选值：json、yaml、tree、human 预览 Stack 中的一系列资源更改 dry-run 预览执行效果（总是成功）而不实际 apply 更改 打印 Kusion 环境信息 打印当前 Kusion 的版本信息 跳过提示，使用默认值初始化 Project 按 kubernetes 资源顺序排序（非标准行为）。默认为否 指定命令行配置文件 指定配置覆盖路径和值 指定操作人 指定输出文件 指定模板的输出格式。若指定，现在仅支持 json；若不指定，那么将打印模板的名称和描述 指定输出风格，human 和 raw 之一，默认值 human 指定覆盖选项 指定 spec 文件路径作为输入，spce 文件必须位于工作目录或其子目录下 指定顶级参数 指定工作目录 交换 <from> 和 <to> 进行比较。注意 <from> 为标准输入时无效。默认为否 使用线上模板初始化 Project，否则使用本地缓存模板 backend-config 配置状态存储后端信息 backend-type 指定状态存储后端类型，支持 local、db、oss 和 s3 no-style 设置原始输出模式并禁用所有样式 