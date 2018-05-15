(ns app.core
  (:require ["aws-sdk" :as aws-sdk]))

(defn ^:export handler
  "I don't do a whole lot."
  [event context callback]
  (let [response {:statusCode 200
                  :headers {"Content-Type" "text/html; charset=utf-8"}
                  :body "<p>Hello world!</p>"}]
    (callback nil (clj->js response))))
