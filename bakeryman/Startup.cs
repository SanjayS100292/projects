using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(bakeryman.Startup))]
namespace bakeryman
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
