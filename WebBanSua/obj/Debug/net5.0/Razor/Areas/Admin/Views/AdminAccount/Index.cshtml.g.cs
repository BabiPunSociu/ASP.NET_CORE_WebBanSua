#pragma checksum "C:\Users\ADMIN\OneDrive\Máy tính\ASP.NET_CORE_WebBanSua\WebBanSua\Areas\Admin\Views\AdminAccount\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "1dc90585992989a756f1a491e5e3c00a4a39666c"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Admin_Views_AdminAccount_Index), @"mvc.1.0.view", @"/Areas/Admin/Views/AdminAccount/Index.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\ADMIN\OneDrive\Máy tính\ASP.NET_CORE_WebBanSua\WebBanSua\Areas\Admin\Views\_ViewImports.cshtml"
using WebBanSua;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\ADMIN\OneDrive\Máy tính\ASP.NET_CORE_WebBanSua\WebBanSua\Areas\Admin\Views\_ViewImports.cshtml"
using WebBanSua.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"1dc90585992989a756f1a491e5e3c00a4a39666c", @"/Areas/Admin/Views/AdminAccount/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"760aadcc2c7cbe3a1b7a47602ade652044f0dac2", @"/Areas/Admin/Views/_ViewImports.cshtml")]
    #nullable restore
    public class Areas_Admin_Views_AdminAccount_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IEnumerable<WebBanSua.Models.Account>>
    #nullable disable
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Details", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("btn btn-primary"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("style", new global::Microsoft.AspNetCore.Html.HtmlString("font-size:12px;"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/js/datatables-bt5.js"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.HeadTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 3 "C:\Users\ADMIN\OneDrive\Máy tính\ASP.NET_CORE_WebBanSua\WebBanSua\Areas\Admin\Views\AdminAccount\Index.cshtml"
  
    ViewData["Title"] = "Index";
    Layout = "~/Areas/Admin/Views/Shared/_AdminLayout.cshtml";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n\r\n\r\n    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("head", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "1dc90585992989a756f1a491e5e3c00a4a39666c5316", async() => {
                WriteLiteral(" \r\n<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css\">\r\n <link rel=\"stylesheet\" href=\"https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css\">\r\n");
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.HeadTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_HeadTagHelper);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(@"


<div class=""col-12"">
          <div class=""card mb-4"">
            <div class=""card-header pb-0"">
              <h4>Danh Sách Tài Khoản</h4>
            </div>
       
            <div class=""card-body px-0 pt-0 pb-2"" >
              <div class=""table-responsive p-0"">
                <table id=""example"" class=""table align-items-center justify-content-center mb-0 table-striped"" style=""font-size:20px;"">
                  <thead>
                    <tr>
                       <th class=""text-uppercase text-secondary text-xxs font-weight-bolder "">Tài Khoản</th>
                      <th class=""text-uppercase text-secondary text-xxs font-weight-bolder "">Ngày Tạo</th>
                      <th class=""text-uppercase text-secondary text-xxs font-weight-bolder "">Quyền</th>
                      <th></th>
                    </tr>
                  </thead>
                  
                  <tbody>
");
#nullable restore
#line 35 "C:\Users\ADMIN\OneDrive\Máy tính\ASP.NET_CORE_WebBanSua\WebBanSua\Areas\Admin\Views\AdminAccount\Index.cshtml"
                       foreach (var item in Model) {

#line default
#line hidden
#nullable disable
            WriteLiteral("                       <tr>\r\n                      <td>\r\n                        <span class=\"font-weight-bold\" style=\"font-size:12px;\">");
#nullable restore
#line 38 "C:\Users\ADMIN\OneDrive\Máy tính\ASP.NET_CORE_WebBanSua\WebBanSua\Areas\Admin\Views\AdminAccount\Index.cshtml"
                                                                          Write(Html.DisplayFor(modelItem => item.TaiKhoan));

#line default
#line hidden
#nullable disable
            WriteLiteral("</span>\r\n                      </td>\r\n                      <td>\r\n                        <span class=\"font-weight-bold\" style=\"font-size:12px;\">");
#nullable restore
#line 41 "C:\Users\ADMIN\OneDrive\Máy tính\ASP.NET_CORE_WebBanSua\WebBanSua\Areas\Admin\Views\AdminAccount\Index.cshtml"
                                                                          Write(Html.DisplayFor(modelItem => item.CreateDate));

#line default
#line hidden
#nullable disable
            WriteLiteral("</span>\r\n                      </td>\r\n                      <td>\r\n                        <span class=\"font-weight-bold\" style=\"font-size:12px;\">");
#nullable restore
#line 44 "C:\Users\ADMIN\OneDrive\Máy tính\ASP.NET_CORE_WebBanSua\WebBanSua\Areas\Admin\Views\AdminAccount\Index.cshtml"
                                                                          Write(Html.DisplayFor(modelItem => item.Role.Mota));

#line default
#line hidden
#nullable disable
            WriteLiteral("</span>\r\n                      </td>\r\n                      <td class=\"align-middle\">\r\n                 \r\n                      ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "1dc90585992989a756f1a491e5e3c00a4a39666c9381", async() => {
                WriteLiteral("Xem");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#nullable restore
#line 48 "C:\Users\ADMIN\OneDrive\Máy tính\ASP.NET_CORE_WebBanSua\WebBanSua\Areas\Admin\Views\AdminAccount\Index.cshtml"
                                                WriteLiteral(item.AccountId);

#line default
#line hidden
#nullable disable
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(" \r\n                      </td>\r\n                    </tr>\r\n");
#nullable restore
#line 51 "C:\Users\ADMIN\OneDrive\Máy tính\ASP.NET_CORE_WebBanSua\WebBanSua\Areas\Admin\Views\AdminAccount\Index.cshtml"
                    }

#line default
#line hidden
#nullable disable
            WriteLiteral(@"                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
<script src=""https://code.jquery.com/jquery-3.5.1.js""></script>
<script src=""https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js""></script>
<script src=""https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js""></script>
    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("script", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "1dc90585992989a756f1a491e5e3c00a4a39666c12429", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_3);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
        }
        #pragma warning restore 1998
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IEnumerable<WebBanSua.Models.Account>> Html { get; private set; } = default!;
        #nullable disable
    }
}
#pragma warning restore 1591