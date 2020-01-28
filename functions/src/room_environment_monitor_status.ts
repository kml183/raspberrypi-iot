import * as functions from 'firebase-functions';
import { SetOptions } from 'firestore';

import { RoomEnvironmentMonitorStatusInterface, RoomEnvironmentMonitorStatusPubsubMessageInterface,
    Convert, MODEL, ConvertQuerySnapshotDocument } from './room_environment_monitor_status.interface';
import { ExtractInterfaceFromPubsubMessage } from './pubsub.util';
import { Response, Request, NextFunction } from 'express';
import { ApiResponse, ApiRequest } from './api.interface';

// Handlers
export async function PubsubHandler(message: functions.pubsub.Message, db: FirebaseFirestore.Firestore) {
    const rawData = ExtractInterfaceFromPubsubMessage(message) as RoomEnvironmentMonitorStatusPubsubMessageInterface;

    if (!rawData) {
        console.error("The raw data could not be abstracted fro the pubsub message.");
        return
    }

    // Becasue the id is based on the timestamp, if the timestamp is passed null or undefined the same entity will be updated
    const sysDate = new Date(rawData.timestamp || "");
    const deviceId = message.attributes.deviceId;
    const data = Convert(deviceId, sysDate, rawData)

    return upsert(deviceId, data, db, {});
}

async function upsert(id: string, data: RoomEnvironmentMonitorStatusInterface, db: FirebaseFirestore.Firestore, options: SetOptions) {
    return db
    .collection(MODEL)
    .doc(id)
    .set(data, options)
    .catch(err => console.error(err));
}

// Handlers
export async function List(req: Request, res: Response, next: NextFunction, db: FirebaseFirestore.Firestore) {
    const r = ApiRequest.fromRequest(req);

    return db
        .collection(MODEL)
        .limit(r.pageSize)
        .offset(r.cursor)
        .get()
        .then(results => handleListResponse(r, res, results))
        .catch(next);
}

function handleListResponse(req: ApiRequest, res: Response, s: FirebaseFirestore.QuerySnapshot) {
    const data = (s.docs || []).map(ConvertQuerySnapshotDocument);
    (new ApiResponse<RoomEnvironmentMonitorStatusInterface>(data, req)).toReponse(res);
}
