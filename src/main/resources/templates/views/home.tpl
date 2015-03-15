layout 'layouts/main.tpl',
        pageTitle: 'Spring Boot - Groovy templates example with layout',
        mainBody: contents {
            div("This is an application using Boot $bootVersion and Groovy templates $groovyVersion")

            div {
                br()
                a(href:'/person/list', 'List people')
            }

            div {
                br()
                hr(size:'2')
                img(src:'img/bluemixAd728x90.jpg')
            }
        }

