(require '[cljs.build.api :as b])

(b/build "src"
         {:output-dir "target"
          :output-to "target/main.js"
          :optimizations :none
          :parallel-build true
          :main 'app.core
          :source-map true
          :target :nodejs
          :language-in :ecmascript5
          :npm-deps {:source-map-support "0.5.4"
                     :aws-sdk "2.224.1"}
          :install-deps true})
