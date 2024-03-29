<#-- @ftlvariable name="analyticsGoogleCode" type="java.lang.String" -->
<#-- @ftlvariable name="analyticsYandexCode" type="java.lang.String" -->

<#include "/core.ftl">

<@bg.security.unauthorized "moderator">
    <#if analyticsGoogleCode?has_content>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', '${analyticsGoogleCode}', 'ecoezhka.ru');
        ga('send', 'pageview');
    </script>
    </#if>

    <#if analyticsYandexCode?has_content>
    <script type="text/javascript">
        (function (d, w, c) {
            (w[c] = w[c] || []).push(function () {
                try {
                    w.yaCounter${analyticsYandexCode} = new Ya.Metrika({id: ${analyticsYandexCode},
                        webvisor: true,
                        clickmap: true,
                        accurateTrackBounce: true});
                } catch (e) {
                }
            });

            var n = d.getElementsByTagName("script")[0],
                    s = d.createElement("script"),
                    f = function () {
                        n.parentNode.insertBefore(s, n);
                    };
            s.type = "text/javascript";
            s.async = true;
            s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js";

            if (w.opera == "[object Opera]") {
                d.addEventListener("DOMContentLoaded", f, false);
            } else {
                f();
            }
        })(document, window, "yandex_metrika_callbacks");
    </script>
    </#if>
</@bg.security.unauthorized>
