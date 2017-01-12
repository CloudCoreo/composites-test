# The following resource is expected to fail
coreo_uni_util_jsrunner "jsrunner-script-fails-always-runs" do
  action :run
  trigger "1"
  json_input '{ "hi script error": [ {"this": "resource"}, {"always": "runs"} ] }'
  function <<-EOH
console.log('we are running');
callback(json_input["hi trigger");
  EOH
end
