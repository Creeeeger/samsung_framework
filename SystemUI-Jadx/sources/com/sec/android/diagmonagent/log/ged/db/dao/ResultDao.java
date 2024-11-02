package com.sec.android.diagmonagent.log.ged.db.dao;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.samsung.android.knox.restriction.PhoneRestrictionPolicy;
import com.sec.android.diagmonagent.log.ged.db.model.Event;
import com.sec.android.diagmonagent.log.ged.db.model.Result;
import java.util.concurrent.TimeUnit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ResultDao {
    public final long MAX_KEEP_TIME = TimeUnit.DAYS.toMillis(30);
    public final SQLiteDatabase db;

    public ResultDao(SQLiteDatabase sQLiteDatabase) {
        this.db = sQLiteDatabase;
    }

    public static Result makeResult(Event event) {
        Result result = new Result();
        result.serviceId = event.serviceId;
        result.eventId = event.eventId;
        result.clientStatusCode = event.status;
        result.timestamp = event.timestamp;
        return result;
    }

    public final void insert(Result result) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("eventId", result.eventId);
        contentValues.put("serviceId", result.serviceId);
        contentValues.put("clientStatusCode", Integer.valueOf(result.clientStatusCode));
        contentValues.put(PhoneRestrictionPolicy.TIMESTAMP, Long.valueOf(result.timestamp));
        this.db.insert("Result", null, contentValues);
    }
}
