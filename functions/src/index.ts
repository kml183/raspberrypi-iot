import * as functions from 'firebase-functions';
import * as admin   from 'firebase-admin';
import * as express from 'express';

import {PubsubHandler as TelemetryPubsubHandler, List as TelemetryListHandler} from './room_environment_monitor_telemetry';
import {PubsubHandler as StatusPubsubHandler} from './room_environment_monitor_status';


export const RoomEnvironmentTelemetryPubsubTopic = 'room-environment-monitor-telemetry';
export const RoomEnvironmentStatusPubsubTopic = 'room-environment-monitor-status';

admin.initializeApp(functions.config().firebase);

const db = admin.firestore();
db.settings({timestampsInSnapshots: true});

const RoomEnvironmentTelemetryExpressApp = express();

RoomEnvironmentTelemetryExpressApp.get('/api/list', (req, res, next) => TelemetryListHandler(req, res, next, db))

export const RoomEnvironmentTelemetryPubsubHandler = functions.pubsub.topic(RoomEnvironmentTelemetryPubsubTopic).onPublish(msg => TelemetryPubsubHandler(msg, db))
export const RoomEnvironmentStatusPubsubHandler = functions.pubsub.topic(RoomEnvironmentTelemetryPubsubTopic).onPublish(msg => StatusPubsubHandler(msg, db))
export const RoomEnvironmentTelemetryHandler = functions.https.onRequest(RoomEnvironmentTelemetryExpressApp);
