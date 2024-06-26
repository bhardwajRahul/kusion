package set

import (
	"testing"

	"github.com/bytedance/mockey"
	"github.com/stretchr/testify/assert"

	"kusionstack.io/kusion/pkg/config"
)

func TestOptions_Complete(t *testing.T) {
	testcases := []struct {
		name         string
		args         []string
		success      bool
		expectedOpts *Options
	}{
		{
			name:    "successfully complete options",
			args:    []string{"backends.current", "s3-pre"},
			success: true,
			expectedOpts: &Options{
				Item:  "backends.current",
				Value: "s3-pre",
			},
		},
		{
			name:         "complete field invalid args",
			args:         []string{"backends.current"},
			success:      false,
			expectedOpts: nil,
		},
	}

	for _, tc := range testcases {
		t.Run(tc.name, func(t *testing.T) {
			opts := NewOptions()
			err := opts.Complete(tc.args)
			assert.Equal(t, tc.success, err == nil)
			if tc.success {
				assert.Equal(t, tc.expectedOpts, opts)
			}
		})
	}
}

func TestOptions_Validate(t *testing.T) {
	testcases := []struct {
		name    string
		opts    *Options
		success bool
	}{
		{
			name: "valid options",
			opts: &Options{
				Item:  "backends.current",
				Value: "s3-pre",
			},
			success: true,
		},
		{
			name: "invalid options empty config item",
			opts: &Options{
				Value: "s3-pre",
			},
			success: false,
		},
		{
			name: "invalid options empty config value",
			opts: &Options{
				Item: "backends.current",
			},
			success: false,
		},
	}

	for _, tc := range testcases {
		t.Run(tc.name, func(t *testing.T) {
			err := tc.opts.Validate()
			assert.Equal(t, tc.success, err == nil)
		})
	}
}

func TestOptions_Run(t *testing.T) {
	testcases := []struct {
		name    string
		opts    *Options
		success bool
	}{
		{
			name: "successfully run",
			opts: &Options{
				Item:  "backends.current",
				Value: "s3-pre",
			},
			success: true,
		},
	}

	for _, tc := range testcases {
		t.Run(tc.name, func(t *testing.T) {
			mockey.PatchConvey("mock set config item", t, func() {
				mockey.Mock(config.SetEncodedConfigItem).Return(nil).Build()

				err := tc.opts.Run()
				assert.Equal(t, tc.success, err == nil)
			})
		})
	}
}
