package set

import (
	"github.com/spf13/cobra"
	"k8s.io/kubectl/pkg/util/templates"

	"kusionstack.io/kusion/pkg/cmd/util"
	"kusionstack.io/kusion/pkg/util/i18n"
)

func NewCmd() *cobra.Command {
	var (
		short = i18n.T(`Set a config item`)

		long = i18n.T(`
		This command sets the value of a specified kusion config item, where the config item must be registered, and the value must be in valid type.`)

		example = i18n.T(`
		# Set a config item with string type value
		kusion config set backends.current s3-pre

		# Set a config item with struct or map type value
		kusion config set backends.s3-pre.configs '{"bucket":"kusion"}'`)
	)

	o := NewOptions()
	cmd := &cobra.Command{
		Use:                   "set",
		Short:                 short,
		Long:                  templates.LongDesc(long),
		Example:               templates.Examples(example),
		DisableFlagsInUseLine: true,
		RunE: func(cmd *cobra.Command, args []string) (err error) {
			defer util.RecoverErr(&err)
			util.CheckErr(o.Complete(args))
			util.CheckErr(o.Validate())
			util.CheckErr(o.Run())
			return
		},
	}
	return cmd
}
