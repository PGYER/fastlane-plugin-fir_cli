# fir_cli plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-fir_cli)

## Getting Started

This project is a [_fastlane_](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-fir_cli`, add it to your project by running:

```bash
fastlane add_plugin fir_cli
```

## About fir_cli

Using fir-cli gem, upload ipa or apk to fir.im in fastlane directly.

内置 fir-cli 这个gem, 直接在fastlane 中直接将文件上传到 fir.im

## params 

run `fastlane action fir_cli` in terminal to lookup the details.

在命令行中运行 `fastlane action fir_cli` 查看细节.


## Example

run fir_plugin in Fastfile

在 Fastfile 文件中 引入

```
default_platform(:ios)

platform :ios do
  lane :gofir do
    gym export_method: "ad-hoc"
    fir_cli api_token: "YOUR FIR API TOKEN"
  end
end

# run `fastlane gofir` in terminal to start lane gofir
```



run fir plugin in bash
在终端跑这个插件


```
fastlane run fir_cli api_token:"YOUR_FIR_API_TOKEN" specify_file_path:"YOUR IPA OR APK FILE PATH"
```




## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using _fastlane_ Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About _fastlane_

_fastlane_ is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
