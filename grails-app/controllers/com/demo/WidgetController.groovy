package com.demo

class WidgetController {

    def index() {
        redirect action: 'list'
    }

    def list(String sort, String order) {
        def widgets = Widget.list()
        if(sort) {
            widgets = widgets.sort { it[sort] }
            if('desc' == order) {
                widgets = widgets.reverse()
            }
        }
        [widgetInstanceList: widgets]
    }
}
