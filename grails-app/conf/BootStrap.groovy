import com.demo.Widget

class BootStrap {

    def init = { servletContext ->
        new Widget(name: 'Alpha', width: 14, height: 2).save()
        new Widget(name: 'Baker', width: 7, height: 1).save()
        new Widget(name: 'Charlie', width: 29, height: 4).save()
        new Widget(name: 'Delta', width: 13, height: 86).save()
        new Widget(name: 'Echo', width: 2, height: 11).save()
    }
    def destroy = {
    }
}
