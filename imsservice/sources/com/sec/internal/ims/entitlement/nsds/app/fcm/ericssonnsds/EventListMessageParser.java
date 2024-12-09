package com.sec.internal.ims.entitlement.nsds.app.fcm.ericssonnsds;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.sec.internal.ims.entitlement.nsds.app.fcm.data.ericssonnsds.EventListMessage;
import com.sec.internal.ims.entitlement.nsds.app.fcm.data.ericssonnsds.FcmMessage;
import com.sec.internal.log.IMSLog;
import java.util.Map;

/* loaded from: classes.dex */
public class EventListMessageParser implements IFcmMessageParser {
    private static final String LOG_TAG = "EventListMessageParser";

    @Override // com.sec.internal.ims.entitlement.nsds.app.fcm.ericssonnsds.IFcmMessageParser
    public FcmMessage parseMessage(Map map) {
        Gson gson = new Gson();
        EventListMessage eventListMessage = null;
        try {
            if (map.get("message") == null) {
                return null;
            }
            String obj = map.get("message").toString();
            EventListMessage eventListMessage2 = (EventListMessage) gson.fromJson(obj, EventListMessage.class);
            try {
                eventListMessage2.setOrigMessage(obj);
                if (eventListMessage2.eventList != null) {
                    IMSLog.s(LOG_TAG, "parseMessage: event date-" + eventListMessage2.eventList.date + " events-" + eventListMessage2.eventList.events);
                } else {
                    IMSLog.e(LOG_TAG, "parseMessage: parsing failed for " + IMSLog.checker(obj));
                }
                return eventListMessage2;
            } catch (JsonSyntaxException e) {
                e = e;
                eventListMessage = eventListMessage2;
                IMSLog.s(LOG_TAG, "cannot parse received message" + e.getMessage());
                return eventListMessage;
            }
        } catch (JsonSyntaxException e2) {
            e = e2;
        }
    }
}
