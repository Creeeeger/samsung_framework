package com.sec.internal.ims.cmstore.utils;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImContract;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.strategy.KorCmStrategy;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class CursorContentValueTranslator {
    private static final String LOG_TAG = "CursorContentValueTranslator";

    public static ArrayList<ContentValues> convertRCSimfttoCV(Cursor cursor, Context context, int i) {
        ArrayList<ContentValues> arrayList = new ArrayList<>();
        boolean isMcsSupported = CmsUtil.isMcsSupported(context, i);
        do {
            try {
                String string = cursor.getString(cursor.getColumnIndexOrThrow("body"));
                if (!isMcsSupported || !isRevokedMessage(cursor)) {
                    if (TextUtils.isEmpty(string)) {
                        Log.d(LOG_TAG, "covertRCSimfttoCV: direction: " + cursor.getInt(cursor.getColumnIndexOrThrow("direction")) + "covertRCSimfttoCV: status: " + cursor.getInt(cursor.getColumnIndexOrThrow(ImContract.CsSession.STATUS)));
                        if ((cursor.getInt(cursor.getColumnIndexOrThrow("direction")) == ImDirection.INCOMING.getId() || cursor.getInt(cursor.getColumnIndexOrThrow("direction")) == ImDirection.OUTGOING.getId()) && (cursor.getInt(cursor.getColumnIndexOrThrow(ImContract.CsSession.STATUS)) == ImConstants.Status.SENT.getId() || cursor.getInt(cursor.getColumnIndexOrThrow(ImContract.CsSession.STATUS)) == ImConstants.Status.UNREAD.getId() || cursor.getInt(cursor.getColumnIndexOrThrow(ImContract.CsSession.STATUS)) == ImConstants.Status.READ.getId() || (isMcsSupported && (cursor.getInt(cursor.getColumnIndexOrThrow(ImContract.CsSession.STATUS)) == ImConstants.Status.TO_SEND.getId() || cursor.getInt(cursor.getColumnIndexOrThrow(ImContract.CsSession.STATUS)) == ImConstants.Status.SENDING.getId())))) {
                            copyRcsMessageCursor(cursor, arrayList, isMcsSupported);
                        }
                    } else if ((cursor.getInt(cursor.getColumnIndexOrThrow("direction")) == ImDirection.INCOMING.getId() || cursor.getInt(cursor.getColumnIndexOrThrow("direction")) == ImDirection.OUTGOING.getId()) && (cursor.getInt(cursor.getColumnIndexOrThrow("status")) == ImConstants.Status.SENT.getId() || cursor.getInt(cursor.getColumnIndexOrThrow("status")) == ImConstants.Status.UNREAD.getId() || cursor.getInt(cursor.getColumnIndexOrThrow("status")) == ImConstants.Status.READ.getId())) {
                        copyRcsMessageCursor(cursor, arrayList, isMcsSupported);
                    }
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    try {
                        cursor.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } while (cursor.moveToNext());
        cursor.close();
        return arrayList;
    }

    private static boolean isRevokedMessage(Cursor cursor) {
        int i = cursor.getInt(cursor.getColumnIndexOrThrow(ImContract.Message.REVOCATION_STATUS));
        return (i == ImConstants.RevocationStatus.NONE.getId() || i == ImConstants.RevocationStatus.AVAILABLE.getId() || i == ImConstants.RevocationStatus.FAILED.getId()) ? false : true;
    }

    private static void copyRcsMessageCursor(Cursor cursor, ArrayList<ContentValues> arrayList, boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("_id"))));
        int i = cursor.getInt(cursor.getColumnIndexOrThrow(ImContract.ChatItem.IS_FILE_TRANSFER));
        contentValues.put(ImContract.ChatItem.IS_FILE_TRANSFER, Integer.valueOf(i));
        contentValues.put("direction", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("direction"))));
        contentValues.put("chat_id", cursor.getString(cursor.getColumnIndexOrThrow("chat_id")));
        contentValues.put("remote_uri", cursor.getString(cursor.getColumnIndexOrThrow("remote_uri")));
        contentValues.put(ImContract.ChatItem.USER_ALIAS, cursor.getString(cursor.getColumnIndexOrThrow(ImContract.ChatItem.USER_ALIAS)));
        contentValues.put("content_type", cursor.getString(cursor.getColumnIndexOrThrow("content_type")));
        contentValues.put(ImContract.ChatItem.INSERTED_TIMESTAMP, Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(ImContract.ChatItem.INSERTED_TIMESTAMP))));
        contentValues.put(ImContract.ChatItem.EXT_INFO, cursor.getString(cursor.getColumnIndexOrThrow(ImContract.ChatItem.EXT_INFO)));
        contentValues.put(ImContract.ChatItem.EXT_INFO, cursor.getString(cursor.getColumnIndexOrThrow(ImContract.ChatItem.EXT_INFO)));
        contentValues.put("body", cursor.getString(cursor.getColumnIndexOrThrow("body")));
        contentValues.put(ImContract.Message.NOTIFICATION_DISPOSITION_MASK, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(ImContract.Message.NOTIFICATION_DISPOSITION_MASK))));
        contentValues.put("notification_status", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("notification_status"))));
        contentValues.put(ImContract.Message.DISPOSITION_NOTIFICATION_STATUS, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(ImContract.Message.DISPOSITION_NOTIFICATION_STATUS))));
        contentValues.put(ImContract.Message.SENT_TIMESTAMP, Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(ImContract.Message.SENT_TIMESTAMP))));
        contentValues.put(ImContract.ChatItem.DELIVERED_TIMESTAMP, Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(ImContract.ChatItem.DELIVERED_TIMESTAMP))));
        contentValues.put(ImContract.Message.DISPLAYED_TIMESTAMP, Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(ImContract.Message.DISPLAYED_TIMESTAMP))));
        contentValues.put("message_type", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("message_type"))));
        contentValues.put(ImContract.Message.MESSAGE_ISSLM, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(ImContract.Message.MESSAGE_ISSLM))));
        contentValues.put("status", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("status"))));
        contentValues.put(ImContract.Message.NOT_DISPLAYED_COUNTER, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(ImContract.Message.NOT_DISPLAYED_COUNTER))));
        contentValues.put("imdn_message_id", cursor.getString(cursor.getColumnIndexOrThrow("imdn_message_id")));
        contentValues.put(ImContract.Message.IMDN_ORIGINAL_TO, cursor.getString(cursor.getColumnIndexOrThrow(ImContract.Message.IMDN_ORIGINAL_TO)));
        contentValues.put("conversation_id", cursor.getString(cursor.getColumnIndexOrThrow("conversation_id")));
        contentValues.put("contribution_id", cursor.getString(cursor.getColumnIndexOrThrow("contribution_id")));
        contentValues.put(ImContract.CsSession.FILE_PATH, cursor.getString(cursor.getColumnIndexOrThrow(ImContract.CsSession.FILE_PATH)));
        contentValues.put(ImContract.CsSession.FILE_NAME, cursor.getString(cursor.getColumnIndexOrThrow(ImContract.CsSession.FILE_NAME)));
        contentValues.put(ImContract.CsSession.FILE_SIZE, Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(ImContract.CsSession.FILE_SIZE))));
        contentValues.put(ImContract.CsSession.FILE_TRANSFER_ID, cursor.getString(cursor.getColumnIndexOrThrow(ImContract.CsSession.FILE_TRANSFER_ID)));
        contentValues.put("state", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("state"))));
        contentValues.put("reason", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("reason"))));
        contentValues.put(ImContract.CsSession.BYTES_TRANSFERRED, Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(ImContract.CsSession.BYTES_TRANSFERRED))));
        contentValues.put(ImContract.CsSession.STATUS, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(ImContract.CsSession.STATUS))));
        contentValues.put(ImContract.CsSession.THUMBNAIL_PATH, cursor.getString(cursor.getColumnIndexOrThrow(ImContract.CsSession.THUMBNAIL_PATH)));
        contentValues.put(ImContract.CsSession.IS_RESUMABLE, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(ImContract.CsSession.IS_RESUMABLE))));
        if (z && i == 1) {
            contentValues.put(ImContract.CsSession.TRANSFER_MECH, (Integer) 1);
        } else {
            contentValues.put(ImContract.CsSession.TRANSFER_MECH, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(ImContract.CsSession.TRANSFER_MECH))));
        }
        contentValues.put(ImContract.CsSession.DATA_URL, cursor.getString(cursor.getColumnIndexOrThrow(ImContract.CsSession.DATA_URL)));
        contentValues.put("request_message_id", cursor.getString(cursor.getColumnIndexOrThrow("request_message_id")));
        contentValues.put("sim_imsi", cursor.getString(cursor.getColumnIndexOrThrow("sim_imsi")));
        contentValues.put("is_resizable", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("is_resizable"))));
        contentValues.put(ImContract.Message.REFERENCE_ID, cursor.getString(cursor.getColumnIndexOrThrow(ImContract.Message.REFERENCE_ID)));
        contentValues.put(ImContract.Message.REFERENCE_TYPE, cursor.getString(cursor.getColumnIndexOrThrow(ImContract.Message.REFERENCE_TYPE)));
        contentValues.put(ImContract.Message.REFERENCE_VALUE, cursor.getString(cursor.getColumnIndexOrThrow(ImContract.Message.REFERENCE_VALUE)));
        contentValues.put(ImContract.Message.SUGGESTION, cursor.getString(cursor.getColumnIndexOrThrow(ImContract.Message.SUGGESTION)));
        contentValues.put("maap_traffic_type", cursor.getString(cursor.getColumnIndexOrThrow("maap_traffic_type")));
        contentValues.put(ImContract.Message.MSG_CREATOR, cursor.getString(cursor.getColumnIndexOrThrow(ImContract.Message.MSG_CREATOR)));
        arrayList.add(contentValues);
    }

    public static ArrayList<ContentValues> convertRCSparticipantstoCV(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        ArrayList<ContentValues> arrayList = new ArrayList<>();
        do {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("_id", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("_id"))));
                contentValues.put("chat_id", cursor.getString(cursor.getColumnIndexOrThrow("chat_id")));
                contentValues.put("status", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("status"))));
                contentValues.put("type", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("type"))));
                contentValues.put("uri", cursor.getString(cursor.getColumnIndexOrThrow("uri")));
                contentValues.put("alias", cursor.getString(cursor.getColumnIndexOrThrow("alias")));
                arrayList.add(contentValues);
            } catch (Throwable th) {
                try {
                    cursor.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } while (cursor.moveToNext());
        cursor.close();
        return arrayList;
    }

    public static ArrayList<ContentValues> convertSMStoCV(Cursor cursor, boolean z) {
        String str = CloudMessageProviderContract.BufferDBSMS.REPLY_PATH_PRESENT;
        String str2 = "status";
        String str3 = "read";
        String str4 = CloudMessageProviderContract.BufferDBSMS.PROTOCOL;
        String str5 = "sim_imsi";
        String str6 = "date_sent";
        String str7 = "sim_slot";
        String str8 = "type";
        String str9 = "deletable";
        String str10 = "seen";
        String str11 = CloudMessageProviderContract.BufferDBSMS.ERROR_CODE;
        String str12 = "locked";
        String str13 = CloudMessageProviderContract.BufferDBSMS.SERVICE_CENTER;
        String str14 = "subject";
        ArrayList<ContentValues> arrayList = new ArrayList<>();
        while (true) {
            try {
                ContentValues contentValues = new ContentValues();
                String str15 = str;
                int i = cursor.getInt(cursor.getColumnIndexOrThrow("_id"));
                String str16 = str2;
                String str17 = LOG_TAG;
                String str18 = str3;
                StringBuilder sb = new StringBuilder();
                String str19 = str4;
                sb.append("appId: ");
                sb.append(i);
                IMSLog.i(str17, sb.toString());
                contentValues.put("thread_id", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("thread_id"))));
                if (!z) {
                    contentValues.put("_id", Integer.valueOf(i));
                    contentValues.put("address", cursor.getString(cursor.getColumnIndexOrThrow("address")));
                    contentValues.put(str8, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str8))));
                    contentValues.put("hidden", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("hidden"))));
                    contentValues.put("body", cursor.getString(cursor.getColumnIndexOrThrow("body")));
                    contentValues.put(CloudMessageProviderContract.BufferDBSMS.GROUP_ID, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.GROUP_ID))));
                }
                contentValues.put(CloudMessageProviderContract.BufferDBSMS.PERSON, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.PERSON))));
                contentValues.put("date", Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow("date"))));
                contentValues.put(str6, Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(str6))));
                contentValues.put(str19, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str19))));
                contentValues.put(str18, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str18))));
                contentValues.put(str16, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str16))));
                String str20 = str6;
                contentValues.put(str15, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str15))));
                String str21 = str14;
                String str22 = str8;
                contentValues.put(str21, cursor.getString(cursor.getColumnIndexOrThrow(str21)));
                String str23 = str13;
                contentValues.put(str23, cursor.getString(cursor.getColumnIndexOrThrow(str23)));
                String str24 = str12;
                contentValues.put(str24, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str24))));
                String str25 = str11;
                contentValues.put(str25, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str25))));
                String str26 = str10;
                contentValues.put(str26, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str26))));
                String str27 = str9;
                contentValues.put(str27, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str27))));
                String str28 = str7;
                contentValues.put(str28, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str28))));
                String str29 = str5;
                contentValues.put(str29, cursor.getString(cursor.getColumnIndexOrThrow(str29)));
                contentValues.put(CloudMessageProviderContract.BufferDBSMS.GROUP_TYPE, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.GROUP_TYPE))));
                contentValues.put(CloudMessageProviderContract.BufferDBSMS.DELIVERY_DATE, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.DELIVERY_DATE))));
                contentValues.put("app_id", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("app_id"))));
                contentValues.put("msg_id", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("msg_id"))));
                contentValues.put(CloudMessageProviderContract.BufferDBSMS.CALLBACK_NUMBER, cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.CALLBACK_NUMBER)));
                contentValues.put("reserved", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("reserved"))));
                contentValues.put("pri", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("pri"))));
                contentValues.put(CloudMessageProviderContract.BufferDBSMS.TELESERVICE_ID, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.TELESERVICE_ID))));
                contentValues.put(CloudMessageProviderContract.BufferDBSMS.LINK_URL, cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.LINK_URL)));
                contentValues.put(CloudMessageProviderContract.BufferDBSMS.SVC_CMD, cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.SVC_CMD)));
                contentValues.put(CloudMessageProviderContract.BufferDBSMS.SVC_CMD_CONTENT, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.SVC_CMD_CONTENT))));
                contentValues.put(CloudMessageProviderContract.BufferDBSMS.ROAM_PENDING, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.ROAM_PENDING))));
                contentValues.put("spam_report", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("spam_report"))));
                contentValues.put("safe_message", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("safe_message"))));
                contentValues.put("from_address", cursor.getString(cursor.getColumnIndexOrThrow("from_address")));
                contentValues.put("spam_type", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("spam_type"))));
                ArrayList<ContentValues> arrayList2 = arrayList;
                arrayList2.add(contentValues);
                if (!cursor.moveToNext()) {
                    cursor.close();
                    return arrayList2;
                }
                arrayList = arrayList2;
                str8 = str22;
                str6 = str20;
                str14 = str21;
                str13 = str23;
                str12 = str24;
                str11 = str25;
                str10 = str26;
                str9 = str27;
                str7 = str28;
                str5 = str29;
                str4 = str19;
                str = str15;
                str3 = str18;
                str2 = str16;
            } finally {
            }
        }
    }

    public static ArrayList<ContentValues> convertPDUtoCV(Cursor cursor) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        ArrayList<ContentValues> arrayList;
        String str11 = CloudMessageProviderContract.BufferDBMMSpdu.M_TYPE;
        String str12 = CloudMessageProviderContract.BufferDBMMSpdu.TR_ID;
        String str13 = CloudMessageProviderContract.BufferDBMMSpdu.M_ID;
        String str14 = CloudMessageProviderContract.BufferDBMMSpdu.ST;
        String str15 = "read";
        String str16 = CloudMessageProviderContract.BufferDBMMSpdu.RESP_ST;
        String str17 = CloudMessageProviderContract.BufferDBMMSpdu.RPT_A;
        String str18 = CloudMessageProviderContract.BufferDBMMSpdu.RR;
        String str19 = "pri";
        String str20 = CloudMessageProviderContract.BufferDBMMSpdu.M_SIZE;
        if (cursor == null) {
            return null;
        }
        String str21 = CloudMessageProviderContract.BufferDBMMSpdu.V;
        ArrayList<ContentValues> arrayList2 = new ArrayList<>();
        while (true) {
            try {
                int columnIndex = cursor.getColumnIndex(CloudMessageProviderContract.BufferDBMMSpdu.SECRET_MODE);
                String str22 = str11;
                if (columnIndex != -1 && cursor.getInt(columnIndex) == 1) {
                    Log.i(LOG_TAG, "secret mode mms, so skip");
                    str10 = str12;
                    str9 = str14;
                    str8 = str16;
                    str7 = str17;
                    str6 = str18;
                    str5 = str19;
                    str4 = str20;
                    str3 = str21;
                    str11 = str22;
                    str = str13;
                    str2 = str15;
                    arrayList = arrayList2;
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("_id", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("_id"))));
                    contentValues.put("thread_id", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("thread_id"))));
                    contentValues.put("date", Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow("date")) * 1000));
                    contentValues.put("date_sent", Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow("date_sent"))));
                    contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.MSG_BOX, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpdu.MSG_BOX))));
                    contentValues.put(str15, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str15))));
                    contentValues.put(str13, cursor.getString(cursor.getColumnIndexOrThrow(str13)));
                    contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.SUB, cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpdu.SUB)));
                    contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.SUB_CS, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpdu.SUB_CS))));
                    contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.CT_T, cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpdu.CT_T)));
                    contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.CT_L, cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpdu.CT_L)));
                    contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.EXP, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpdu.EXP))));
                    contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.M_CLS, cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpdu.M_CLS)));
                    str11 = str22;
                    str = str13;
                    contentValues.put(str11, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str11))));
                    String str23 = str21;
                    str2 = str15;
                    contentValues.put(str23, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str23))));
                    String str24 = str20;
                    str3 = str23;
                    contentValues.put(str24, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str24))));
                    String str25 = str19;
                    str4 = str24;
                    contentValues.put(str25, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str25))));
                    String str26 = str18;
                    str5 = str25;
                    contentValues.put(str26, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str26))));
                    String str27 = str17;
                    str6 = str26;
                    contentValues.put(str27, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str27))));
                    String str28 = str16;
                    str7 = str27;
                    contentValues.put(str28, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str28))));
                    String str29 = str14;
                    str8 = str28;
                    contentValues.put(str29, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str29))));
                    String str30 = str12;
                    str9 = str29;
                    contentValues.put(str30, cursor.getString(cursor.getColumnIndexOrThrow(str30)));
                    str10 = str30;
                    contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.RETR_ST, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpdu.RETR_ST))));
                    contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.RETR_TXT, cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpdu.RETR_TXT)));
                    contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.RETR_TXT_CS, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpdu.RETR_TXT_CS))));
                    contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.READ_STATUS, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpdu.READ_STATUS))));
                    contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.CT_CLS, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpdu.CT_CLS))));
                    contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.RESP_TXT, cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpdu.RESP_TXT)));
                    contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.D_TM, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpdu.D_TM))));
                    contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.D_RPT, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpdu.D_RPT))));
                    contentValues.put("locked", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("locked"))));
                    contentValues.put("seen", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("seen"))));
                    contentValues.put("sim_slot", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("sim_slot"))));
                    contentValues.put("sim_imsi", cursor.getString(cursor.getColumnIndexOrThrow("sim_imsi")));
                    contentValues.put("deletable", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("deletable"))));
                    contentValues.put("hidden", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("hidden"))));
                    contentValues.put("app_id", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("app_id"))));
                    contentValues.put("msg_id", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("msg_id"))));
                    contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.CALLBACK_SET, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpdu.CALLBACK_SET))));
                    contentValues.put("reserved", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("reserved"))));
                    contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.TEXT_ONLY, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpdu.TEXT_ONLY))));
                    contentValues.put("spam_report", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("spam_report"))));
                    contentValues.put("safe_message", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("safe_message"))));
                    contentValues.put("from_address", cursor.getString(cursor.getColumnIndexOrThrow("from_address")));
                    contentValues.put("spam_type", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("spam_type"))));
                    arrayList = arrayList2;
                    arrayList.add(contentValues);
                }
                if (!cursor.moveToNext()) {
                    cursor.close();
                    return arrayList;
                }
                arrayList2 = arrayList;
                str15 = str2;
                str13 = str;
                str21 = str3;
                str20 = str4;
                str19 = str5;
                str18 = str6;
                str17 = str7;
                str16 = str8;
                str14 = str9;
                str12 = str10;
            } finally {
            }
        }
    }

    public static ArrayList<ContentValues> convertADDRtoCV(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        ArrayList<ContentValues> arrayList = new ArrayList<>();
        do {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("_id", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("_id"))));
                contentValues.put("msg_id", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("msg_id"))));
                contentValues.put(CloudMessageProviderContract.BufferDBMMSaddr.CONTACT_ID, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSaddr.CONTACT_ID))));
                contentValues.put("address", cursor.getString(cursor.getColumnIndexOrThrow("address")));
                contentValues.put("type", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("type"))));
                contentValues.put("charset", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("charset"))));
                arrayList.add(contentValues);
            } catch (Throwable th) {
                try {
                    cursor.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } while (cursor.moveToNext());
        cursor.close();
        return arrayList;
    }

    public static ArrayList<ContentValues> convertPARTtoCV(Cursor cursor) {
        String str = "text";
        String str2 = CloudMessageProviderContract.BufferDBMMSpart._DATA;
        if (cursor == null) {
            return null;
        }
        ArrayList<ContentValues> arrayList = new ArrayList<>();
        while (true) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("_id", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("_id"))));
                contentValues.put(CloudMessageProviderContract.BufferDBMMSpart.MID, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpart.MID))));
                contentValues.put(CloudMessageProviderContract.BufferDBMMSpart.SEQ, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpart.SEQ))));
                contentValues.put(CloudMessageProviderContract.BufferDBMMSpart.CT, cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpart.CT)));
                contentValues.put("name", cursor.getString(cursor.getColumnIndexOrThrow("name")));
                contentValues.put(CloudMessageProviderContract.BufferDBMMSpart.CHSET, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpart.CHSET))));
                contentValues.put(CloudMessageProviderContract.BufferDBMMSpart.CD, cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpart.CD)));
                contentValues.put(CloudMessageProviderContract.BufferDBMMSpart.FN, cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpart.FN)));
                contentValues.put(CloudMessageProviderContract.BufferDBMMSpart.CID, cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpart.CID)));
                contentValues.put(CloudMessageProviderContract.BufferDBMMSpart.CL, cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpart.CL)));
                contentValues.put(CloudMessageProviderContract.BufferDBMMSpart.CTT_S, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpart.CTT_S))));
                contentValues.put(CloudMessageProviderContract.BufferDBMMSpart.CTT_T, cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpart.CTT_T)));
                contentValues.put(str2, cursor.getString(cursor.getColumnIndexOrThrow(str2)));
                str = str;
                String str3 = str2;
                contentValues.put(str, cursor.getString(cursor.getColumnIndexOrThrow(str)));
                ArrayList<ContentValues> arrayList2 = arrayList;
                arrayList2.add(contentValues);
                if (!cursor.moveToNext()) {
                    cursor.close();
                    return arrayList2;
                }
                arrayList = arrayList2;
                str2 = str3;
            } finally {
            }
        }
    }

    public static ArrayList<ContentValues> convertImdnNotificationtoCV(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        ArrayList<ContentValues> arrayList = new ArrayList<>();
        do {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("id", Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow("id"))));
                contentValues.put("imdn_id", cursor.getString(cursor.getColumnIndexOrThrow("imdn_id")));
                contentValues.put(ImContract.MessageNotification.SENDER_URI, cursor.getString(cursor.getColumnIndexOrThrow(ImContract.MessageNotification.SENDER_URI)));
                contentValues.put("status", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("status"))));
                contentValues.put("timestamp", Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow("timestamp"))));
                arrayList.add(contentValues);
            } catch (Throwable th) {
                try {
                    cursor.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } while (cursor.moveToNext());
        cursor.close();
        return arrayList;
    }

    public static ArrayList<ContentValues> convertRCSSessiontoCV(Cursor cursor) {
        String str = "session_uri";
        String str2 = "subject_participant";
        String str3 = "status";
        String str4 = "direction";
        String str5 = ImContract.ImSession.IS_FT_GROUP_CHAT;
        String str6 = ImContract.ImSession.INSERTED_TIMESTAMP;
        String str7 = "is_group_chat";
        String str8 = "sim_imsi";
        String str9 = ImContract.ImSession.CHAT_TYPE;
        String str10 = ImContract.ImSession.ICON_TIMESTAMP;
        String str11 = ImContract.ImSession.OWN_PHONE_NUMBER;
        String str12 = ImContract.ImSession.ICON_PARTICIPANT;
        String str13 = ImContract.ImSession.ICON_PATH;
        String str14 = ImContract.ImSession.PREFERRED_URI;
        ArrayList<ContentValues> arrayList = new ArrayList<>();
        while (true) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("_id", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("_id"))));
                contentValues.put("chat_id", cursor.getString(cursor.getColumnIndexOrThrow("chat_id")));
                contentValues.put(str11, cursor.getString(cursor.getColumnIndexOrThrow(str11)));
                contentValues.put(str9, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str9))));
                contentValues.put(str7, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str7))));
                contentValues.put(str5, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str5))));
                contentValues.put(str3, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(str3))));
                contentValues.put("subject", cursor.getString(cursor.getColumnIndexOrThrow("subject")));
                contentValues.put(ImContract.ImSession.IS_MUTED, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(ImContract.ImSession.IS_MUTED))));
                contentValues.put(ImContract.ImSession.MAX_PARTICIPANTS_COUNT, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(ImContract.ImSession.MAX_PARTICIPANTS_COUNT))));
                contentValues.put(ImContract.ImSession.IMDN_NOTIFICATIONS_AVAILABILITY, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(ImContract.ImSession.IMDN_NOTIFICATIONS_AVAILABILITY))));
                contentValues.put("conversation_id", cursor.getString(cursor.getColumnIndexOrThrow("conversation_id")));
                contentValues.put("contribution_id", cursor.getString(cursor.getColumnIndexOrThrow("contribution_id")));
                str = str;
                String str15 = str3;
                contentValues.put(str, cursor.getString(cursor.getColumnIndexOrThrow(str)));
                String str16 = str14;
                String str17 = str5;
                contentValues.put(str16, cursor.getString(cursor.getColumnIndexOrThrow(str16)));
                String str18 = str13;
                contentValues.put(str18, cursor.getString(cursor.getColumnIndexOrThrow(str18)));
                String str19 = str12;
                contentValues.put(str19, cursor.getString(cursor.getColumnIndexOrThrow(str19)));
                String str20 = str10;
                contentValues.put(str20, cursor.getString(cursor.getColumnIndexOrThrow(str20)));
                String str21 = str8;
                contentValues.put(str21, cursor.getString(cursor.getColumnIndexOrThrow(str21)));
                String str22 = str6;
                String string = cursor.getString(cursor.getColumnIndexOrThrow(str22));
                String str23 = str7;
                String str24 = str4;
                String str25 = str9;
                int i = cursor.getInt(cursor.getColumnIndexOrThrow(str24));
                String str26 = str11;
                contentValues.put(str24, Integer.valueOf(i));
                if (TextUtils.isEmpty(string)) {
                    string = String.valueOf(RcsUtils.getEpochNanosec(i));
                }
                contentValues.put(str22, string);
                String str27 = str2;
                contentValues.put(str27, cursor.getString(cursor.getColumnIndexOrThrow(str27)));
                contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Insert.getId()));
                contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud.getId()));
                ArrayList<ContentValues> arrayList2 = arrayList;
                arrayList2.add(contentValues);
                if (!cursor.moveToNext()) {
                    cursor.close();
                    return arrayList2;
                }
                str2 = str27;
                arrayList = arrayList2;
                str9 = str25;
                str3 = str15;
                str11 = str26;
                str4 = str24;
                str7 = str23;
                str6 = str22;
                str5 = str17;
                str14 = str16;
                str13 = str18;
                str12 = str19;
                str10 = str20;
                str8 = str21;
            } finally {
            }
        }
    }

    public static ArrayList<ContentValues> convertRCSIMFTFromTPtoCV(Cursor cursor, boolean z) {
        ArrayList<ContentValues> arrayList = new ArrayList<>();
        do {
            try {
                int i = cursor.getInt(cursor.getColumnIndexOrThrow("status"));
                int i2 = cursor.getInt(cursor.getColumnIndexOrThrow("type")) - 1;
                Log.d(LOG_TAG, "convertRCSIMFTFromTPtoCV: direction: " + i2 + " status: " + i + " isFT: " + z);
                ContentValues contentValues = new ContentValues();
                if (z) {
                    if ((i2 == ImDirection.INCOMING.getId() || i2 == ImDirection.OUTGOING.getId()) && (i == ImConstants.Status.SENT.getId() || i == ImConstants.Status.TO_SEND.getId() || i == ImConstants.Status.SENDING.getId() || i == ImConstants.Status.UNREAD.getId() || i == ImConstants.Status.CANCELLATION.getId() || i == ImConstants.Status.READ.getId())) {
                        addFtInfoTOcv(cursor, contentValues);
                        contentValues.put(ImContract.ChatItem.IS_FILE_TRANSFER, (Integer) 1);
                        contentValues.put(ImContract.CsSession.TRANSFER_MECH, (Integer) 1);
                        copyTPRcsMessageCursor(cursor, arrayList, contentValues);
                    }
                } else if ((i2 == ImDirection.INCOMING.getId() || i2 == ImDirection.OUTGOING.getId()) && (i == ImConstants.Status.SENT.getId() || i == ImConstants.Status.UNREAD.getId() || i == ImConstants.Status.CANCELLATION.getId() || i == ImConstants.Status.READ.getId())) {
                    contentValues.put("body", cursor.getString(cursor.getColumnIndexOrThrow("body")));
                    contentValues.put(ImContract.ChatItem.IS_FILE_TRANSFER, (Integer) 0);
                    copyTPRcsMessageCursor(cursor, arrayList, contentValues);
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    try {
                        cursor.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } while (cursor.moveToNext());
        cursor.close();
        return arrayList;
    }

    private static void copyTPRcsMessageCursor(Cursor cursor, ArrayList<ContentValues> arrayList, ContentValues contentValues) {
        contentValues.put("_id", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("_id"))));
        int i = cursor.getInt(cursor.getColumnIndexOrThrow("type")) - 1;
        contentValues.put("direction", Integer.valueOf(i));
        contentValues.put("remote_uri", cursor.getString(cursor.getColumnIndexOrThrow("remote_uri")));
        contentValues.put(ImContract.ChatItem.USER_ALIAS, cursor.getString(cursor.getColumnIndexOrThrow("user_alias")));
        contentValues.put("content_type", cursor.getString(cursor.getColumnIndexOrThrow("content_type")));
        contentValues.put(ImContract.ChatItem.INSERTED_TIMESTAMP, Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow("date"))));
        contentValues.put("notification_status", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.DISPLAY_NOTIFICATION_STATUS))));
        contentValues.put(ImContract.Message.SENT_TIMESTAMP, Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow("date_sent"))));
        contentValues.put(ImContract.ChatItem.DELIVERED_TIMESTAMP, Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(ImContract.ChatItem.DELIVERED_TIMESTAMP))));
        contentValues.put(ImContract.Message.DISPLAYED_TIMESTAMP, Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.UPDATED_TIMESTAMP))));
        contentValues.put("message_type", Integer.valueOf(KorCmStrategy.getRCSMessageType(cursor.getInt(cursor.getColumnIndexOrThrow("message_type")))));
        int i2 = cursor.getInt(cursor.getColumnIndexOrThrow("status"));
        int i3 = cursor.getInt(cursor.getColumnIndexOrThrow("read"));
        ImConstants.Status status = ImConstants.Status.CANCELLATION;
        if (i2 == status.getId()) {
            if (i == ImDirection.INCOMING.getId() && i3 == ImConstants.Status.UNREAD.getId()) {
                i2 = ImConstants.Status.CANCELLATION_UNREAD.getId();
            } else {
                i2 = status.getId();
            }
        } else if (i == ImDirection.INCOMING.getId()) {
            i2 = i3;
        }
        contentValues.put("status", Integer.valueOf(i2));
        contentValues.put(ImContract.Message.NOT_DISPLAYED_COUNTER, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.DISPLAYED_COUNTER))));
        contentValues.put("imdn_message_id", cursor.getString(cursor.getColumnIndexOrThrow("imdn_message_id")));
        contentValues.put(ImContract.Message.MSG_CREATOR, cursor.getString(cursor.getColumnIndexOrThrow(ImContract.Message.MSG_CREATOR)));
        contentValues.put("recipients", cursor.getString(cursor.getColumnIndexOrThrow("recipients")));
        contentValues.put(ImContract.Message.REFERENCE_ID, cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.REFERENCE_ID)));
        Integer valueOf = Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.REFERENCE_TYPE)));
        contentValues.put(ImContract.Message.REFERENCE_TYPE, valueOf);
        String string = cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.REFERENCE_VALUE));
        if ("2".equals(String.valueOf(valueOf)) && !TextUtils.isEmpty(string)) {
            try {
                string = Util.getReactionReferenceValue(Integer.valueOf(string).intValue());
            } catch (NumberFormatException unused) {
                Log.i(LOG_TAG, "re_type is for Reaction but re_count_info is not integer, skip converting.");
            }
        }
        contentValues.put(ImContract.Message.REFERENCE_VALUE, string);
        try {
            contentValues.put(ImContract.Message.SUGGESTION, cursor.getString(cursor.getColumnIndexOrThrow(ImContract.Message.SUGGESTION)));
        } catch (IllegalArgumentException unused2) {
        }
        try {
            contentValues.put("maap_traffic_type", cursor.getString(cursor.getColumnIndexOrThrow("maap_traffic_type")));
        } catch (IllegalArgumentException unused3) {
        }
        contentValues.put("locked", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("locked"))));
        contentValues.put("spam_type", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("spam_type"))));
        arrayList.add(contentValues);
    }

    private static void addFtInfoTOcv(Cursor cursor, ContentValues contentValues) {
        contentValues.put(ImContract.CsSession.FILE_PATH, cursor.getString(cursor.getColumnIndexOrThrow(ImContract.CsSession.FILE_PATH)));
        contentValues.put(ImContract.CsSession.FILE_NAME, cursor.getString(cursor.getColumnIndexOrThrow(ImContract.CsSession.FILE_NAME)));
        contentValues.put(ImContract.CsSession.FILE_SIZE, Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(ImContract.CsSession.FILE_SIZE))));
        contentValues.put(ImContract.CsSession.BYTES_TRANSFERRED, Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(ImContract.CsSession.BYTES_TRANSFERRED))));
        contentValues.put(ImContract.CsSession.STATUS, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("status"))));
        contentValues.put(ImContract.CsSession.THUMBNAIL_PATH, cursor.getString(cursor.getColumnIndexOrThrow(ImContract.CsSession.THUMBNAIL_PATH)));
    }

    public static ArrayList<ContentValues> convertTPRCSSessionToCV(Cursor cursor, MessageStoreClient messageStoreClient) {
        long j;
        ArrayList<ContentValues> arrayList = new ArrayList<>();
        do {
            try {
                ContentValues contentValues = new ContentValues();
                String string = cursor.getString(cursor.getColumnIndexOrThrow("sim_imsi"));
                boolean z = !TextUtils.isEmpty(string);
                Log.i(LOG_TAG, "convertTPRCSSessionToCV: isImsiPresent: " + z);
                contentValues.put("_id", Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow("_id"))));
                if (z && string.equals(messageStoreClient.getCurrentIMSI())) {
                    contentValues.put("chat_id", cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.SESSION_ID)));
                    contentValues.put("conversation_id", cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.IM_CONVERSATION_ID)));
                    contentValues.put("contribution_id", cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.IM_CONTRIBUTION_ID)));
                    contentValues.put("session_uri", cursor.getString(cursor.getColumnIndexOrThrow("session_uri")));
                    contentValues.put("sim_imsi", cursor.getString(cursor.getColumnIndexOrThrow("sim_imsi")));
                } else {
                    contentValues.put("chat_id", cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.SESSION_ID2)));
                    contentValues.put("conversation_id", cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.IM_CONVERSATION_ID2)));
                    contentValues.put("contribution_id", cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.IM_CONTRIBUTION_ID2)));
                    contentValues.put("session_uri", cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.SESSION_URI2)));
                    contentValues.put("sim_imsi", cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.SIM_IMSI2)));
                }
                contentValues.put(ImContract.ImSession.OWN_PHONE_NUMBER, cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.SELF_PHONE_NUMBER)));
                contentValues.put(ImContract.ImSession.CHAT_TYPE, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.CONVERSATION_TYPE)) - 1));
                contentValues.put("subject", cursor.getString(cursor.getColumnIndexOrThrow("alias")));
                contentValues.put("subject_timestamp", cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.MESSAGE_DATE)));
                try {
                    j = Long.parseLong(cursor.getString(cursor.getColumnIndexOrThrow("date"))) * 1000000;
                } catch (NumberFormatException unused) {
                    j = 0;
                }
                contentValues.put(ImContract.ImSession.INSERTED_TIMESTAMP, Long.valueOf(j));
                int i = cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.CONVERSATION_TYPE));
                contentValues.put("status", Integer.valueOf(ChatData.State.ACTIVE.getId()));
                if (i == 3) {
                    Log.i(LOG_TAG, "Ignore closed the group chat");
                } else {
                    contentValues.put("is_group_chat", Integer.valueOf(i == 2 ? 1 : 0));
                    contentValues.put(ImContract.ImSession.IS_MUTED, Integer.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.IS_MUTE))));
                    contentValues.put(ImContract.ImSession.PREFERRED_URI, Util.getTelUri(cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.SELF_PHONE_NUMBER)), Util.getSimCountryCode(messageStoreClient.getContext(), messageStoreClient.getClientID())));
                    contentValues.put(ImContract.ImSession.MAX_PARTICIPANTS_COUNT, (Integer) 100);
                    contentValues.put(ImContract.ImSession.ICON_PATH, cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.MENUSTRING)));
                    contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Insert.getId()));
                    contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud.getId()));
                    arrayList.add(contentValues);
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    try {
                        cursor.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } while (cursor.moveToNext());
        cursor.close();
        return arrayList;
    }
}
