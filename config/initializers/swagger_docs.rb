# Swagger settings
# baseのcontrollerの指定、変換パスの設定
class Swagger::Docs::Config
  def self.base_api_controller; ActionController::API end
  def self.transform_path(path, api_version); "apidocs/#{path}" end
end

Swagger::Docs::Config.register_apis({
  "v1" => {
    :api_extension_type => nil,
    :api_file_path => "public/apidocs/",
    :base_path => "http://localhost:8080/",
    # :base_path => "/",
    :clean_directory => true,
    :formatting => :pretty,
    :camelize_model_properties => false,
    :controller_base_path => "",
    :attributes => {
      :info => {
        "title"       => "MyReader API",
        "description" => "MyReader operation API",
        "contact"     => "rmacchoj7@gmail.com",
        "license"     => "Apache 2.0",
        "licenseUrl"  => "http://www.apache.org/licenses/LICENSE-2.0.html"
      }
    }
  }
})

GrapeSwaggerRails.options.app_name    = "MyReader API"
GrapeSwaggerRails.options.url         = "/apidocs/api-docs.json"
GrapeSwaggerRails.options.app_url     = "/"
