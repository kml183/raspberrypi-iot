const Datastore = require('@google-cloud/datastore');
const datastore = Datastore();
const kind = 'RoomDataPoint';

export interface RoomDataPoint {
    temperature: number,
    humidity: number,
    ambientLight: number
}

export interface RaspberryPiRoomMonitoringPubSubMessage {
    timestamp: string,
    data: {  
       attributes: {  
          temperature: number,
          humidity: number,
          ambientLight: number
       }
    }
}

export function RaspberryPiRoomMonitoringPubSubHandler(req: RaspberryPiRoomMonitoringPubSubMessage, callback: Function) {

    let dateKey = (new Date(req.timestamp)).getTime().toString()
    const key = datastore.key([kind, dateKey])
    const entity = {
        key: key,
        data: {
          temperature: req.data && req.data.attributes ? req.data.attributes.temperature : null,
          humidity: req.data && req.data.attributes ? req.data.attributes.humidity : null,
          ambientLight: req.data && req.data.attributes ? req.data.attributes.ambientLight : null
        } as RoomDataPoint
    };
    datastore.save(entity)
        .then()
        .catch((err: Error) => console.error(err));

    callback();
}