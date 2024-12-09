package com.sec.internal.ims.cmstore.adapters;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.sec.internal.ims.cmstore.helper.TelephonyDbHelper;
import com.sec.internal.interfaces.ims.cmstore.ITelephonyDBColumns;
import com.sec.internal.log.IMSLog;
import java.text.MessageFormat;
import java.util.Arrays;

/* loaded from: classes.dex */
public class CloudMessageTelephonyStorageAdapter {
    public static final String LOG_TAG = "CloudMessageTelephonyStorageAdapter";
    private final Context mContext;
    private final TelephonyDbHelper mTeleDBHelper;

    public CloudMessageTelephonyStorageAdapter(Context context) {
        this.mContext = context;
        this.mTeleDBHelper = new TelephonyDbHelper(context);
    }

    public Cursor getTelephonyAddr(long j) {
        return this.mTeleDBHelper.query(Uri.parse(MessageFormat.format("content://mms/{0}/addr", String.valueOf(j))), null, "msg_id=" + j, null, null);
    }

    public Cursor getTelephonyPart(long j) {
        return this.mTeleDBHelper.query(Uri.parse("content://mms/part"), null, "mid=" + j, null, null);
    }

    public Cursor queryMMSPduFromTelephonyDbUseID(long j) {
        return this.mTeleDBHelper.query(ITelephonyDBColumns.CONTENT_MMS, null, "_id = " + j, null, null);
    }

    public Cursor querySMSfromTelephony(String[] strArr, String str, String[] strArr2, String str2) {
        return this.mTeleDBHelper.query(ITelephonyDBColumns.CONTENT_SMS, strArr, str, strArr2, str2);
    }

    public Cursor querySMSUseRowId(long j) {
        return this.mTeleDBHelper.query(ITelephonyDBColumns.CONTENT_SMS, null, "_id=?", new String[]{Long.toString(j)}, null);
    }

    public Cursor queryMMSPduFromTelephonyDb(String[] strArr, String str, String[] strArr2, String str2) {
        Log.d(LOG_TAG, "queryMMSPduFromTelephonyDb,  whereClaus: " + str + " selectionArgs: " + IMSLog.numberChecker(Arrays.toString(strArr2)));
        return this.mTeleDBHelper.query(ITelephonyDBColumns.CONTENT_MMS, strArr, str, strArr2, str2);
    }

    public long getFtRowFromTelephonyDb(String str) {
        return this.mTeleDBHelper.getFtRowFromTelephony(str);
    }

    public Cursor queryAllSessionsFromTelephony(String str) {
        return this.mTeleDBHelper.queryAllSessionsFromTelephony(str);
    }

    public Cursor queryAllFtRCSFromTelephony(String str, String str2) {
        return this.mTeleDBHelper.queryAllFtRCSFromTelephony(str, str2);
    }

    public Cursor queryParticipantsUsingChatIdFromTP(String str) {
        return this.mTeleDBHelper.queryParticipantsUsingChatIdFromTP(str);
    }

    public Cursor queryParticipantsInfoFromTP(String str) {
        return this.mTeleDBHelper.queryParticipantsInfoFromTP(str);
    }

    public Cursor queryAllRCSChatFromTP(String str, String str2) {
        return this.mTeleDBHelper.queryAllRCSChatFromTP(str, str2);
    }
}
