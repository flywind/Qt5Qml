var component
var image

function createComponent() {
    component = Qt.createComponent("Logo.qml")
    console.log("Url path: " + component.url)
    if(component.status == Component.Ready) {
        createObject()
    } else {
        component.statusChanged.connect(createObject)
    }
}

function createObject() {
    if(component.status == Component.Ready) {
        image = component.createObject(rect,{x: 10, y: 20})
        if(image == null) {
            console.log("Error creating object!")
        }
    } else if(component.status == Component.Error) {
            console.log("Error loading component:", component.errorString())
    }
}
