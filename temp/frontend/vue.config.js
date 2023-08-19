const { defineConfig } = require('@vue/cli-service')
module.exports = defineConfig({
  transpileDependencies: true,
  devServer: {
    disableHostCheck: true,
    host: '0.0.0.0',
    port: 4201,
    public: 'qxdsladmin.local' // 수정필요
  },

})
