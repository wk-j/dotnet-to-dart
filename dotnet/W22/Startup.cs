using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using System.IO;
using Microsoft.EntityFrameworkCore;
using Serilog;
using Serilog.Core;
using Microsoft.AspNetCore.Diagnostics.HealthChecks;
using HealthChecks.UI.Client;

namespace KService {

    public static class Extension {
        public static IApplicationBuilder LoadNSwagUi(this IApplicationBuilder app) {
            app.UseSwagger(settings => { });
            app.UseSwaggerUi3(settings => { });
            return app;
        }
    }

    public class Startup {



        public Startup(IConfiguration configuration, Microsoft.AspNetCore.Hosting.IHostingEnvironment env) {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }



        public void ConfigureServices(IServiceCollection services) {

            services.AddHealthChecks();
            services.AddSwaggerDocument(config => config.Title = "K Service");
            services.AddMvc();
            services.AddHttpClient();
        }

        public void Configure(IApplicationBuilder app, ILogger<Startup> logger, Microsoft.Extensions.Hosting.IHostingEnvironment env
            ) {

            logger.LogInformation("configure application - {0}", env);

            if (env.IsDevelopment()) {
                app.UseDeveloperExceptionPage();
            } else {
                app.UseHsts();
            }

            app.UseHealthChecks("/hc", new HealthCheckOptions {
                Predicate = _ => true,
                ResponseWriter = UIResponseWriter.WriteHealthCheckUIResponse
            });

            // app.UseHttpsRedirection();
            app.LoadNSwagUi();
            app.UseAuthentication();
            app.UseMvc(routes => {
                routes.MapRoute(
                    name: "default",
                    template: "{controller=Home}/{action=Index}/{id?}");
            });
        }
    }
}
