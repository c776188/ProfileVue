module.exports = {
    publicPath: process.env.NODE_ENV === "production" ? "/ProfileVue/" : "/",
    devServer: {
        disableHostCheck: true
    }
};