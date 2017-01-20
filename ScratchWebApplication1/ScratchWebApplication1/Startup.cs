using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ScratchWebApplication1.Startup))]
namespace ScratchWebApplication1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
