import QtQuick 2.13
import QtQuick.Controls 2.13

import ArcGIS.AppFramework 1.0

App {
    id: app
    width: 400
    height: 640

    Column {
        anchors.fill: parent
        anchors.margins: 10

        Frame {
            contentWidth: thumbnailCreator.width
            contentHeight: thumbnailCreator.height

            Item {
                id: thumbnailCreator
                property string target: "thumbnail.png"
                property int thumbnailWidth: 200
                property int thumbnailHeight: 133
                property string iconSource: "https://raw.githubusercontent.com/Esri/calcite-ui-icons/master/icons/applications-32.svg"
                property int iconWidth: 96
                property int iconHeight: 96
                width: thumbnailWidth
                height: thumbnailHeight
                Button {
                    anchors.centerIn: parent
                    background: Item { }
                    icon.source: thumbnailCreator.iconSource
                    icon.width: thumbnailCreator.iconWidth
                    icon.height: thumbnailCreator.iconHeight
                    icon.color: "#c0c0c0"
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: thumbnailCreator.grabToImage( result => result.saveToFile(thumbnailCreator.target) )
                }
            }
        }

        Frame {
            contentWidth: appiconCreator.width
            contentHeight: appiconCreator.height

            Item {
                id: appiconCreator
                property string target: "appicon.png"
                property int appiconWidth: 128
                property int appiconHeight: 128
                property string iconSource: "https://raw.githubusercontent.com/Esri/calcite-ui-icons/master/icons/applications-32.svg"
                property int iconWidth: 96
                property int iconHeight: 96
                width: appiconWidth
                height: appiconHeight
                Button {
                    anchors.centerIn: parent
                    background: Item { }
                    icon.source: appiconCreator.iconSource
                    icon.width: appiconCreator.iconWidth
                    icon.height: appiconCreator.iconHeight
                    icon.color: "#c0c0c0"
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: appiconCreator.grabToImage( result => result.saveToFile(appiconCreator.target) )
                }
            }

        }
    }
}
