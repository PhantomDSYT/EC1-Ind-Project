using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LoPets.Startup))]
namespace LoPets
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
