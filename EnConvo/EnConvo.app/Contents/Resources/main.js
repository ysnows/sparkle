var EXTENSION_ID = "";
var TEXT = "";
var CONTEXT_TEXT = "";

// 定义一个函数来创建全局getter
var global = this
function defineGlobalGetter(varName) {
    Object.defineProperty(global, `$${varName}`, {
        get() {
            return decodeURIComponent(global[varName]);
        }
    });
}

// 使用这个函数来为每个变量创建全局getter
defineGlobalGetter('EXTENSION_ID');
defineGlobalGetter('TEXT');
defineGlobalGetter('CONTEXT_TEXT');





