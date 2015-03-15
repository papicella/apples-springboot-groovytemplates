yieldUnescaped '<!DOCTYPE html>'
html {
    head {
        title(pageTitle)
        link(rel: 'stylesheet', href: '/css/bootstrap.min.css')
    }
    body {
        div(class: 'container') {
            div(class: 'navbar') {
                div(class: 'navbar-inner') {
                    a(class: 'brand',
                            href: 'http://docs.groovy-lang.org/docs/next/html/documentation/template-engines.html',
                            'Groovy - Template Engine docs')
                    a(class: 'brand',
                            href: 'http://projects.spring.io/spring-boot/') {
                        yield 'Spring Boot docs'
                    }
                }
            }
            mainBody()
        }
    }
}
