package com.sec.internal.ims.servicemodules.im;

import android.database.Cursor;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ImContract;
import com.sec.internal.constants.ims.servicemodules.im.result.Result;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.log.IMSLog;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.concurrent.ArrayBlockingQueue;

/* loaded from: classes.dex */
public class ImDump {
    private static final String LOG_TAG = "ImDump";
    private static final int MAX_EVENT_LOGS = 3000;
    private static final int MAX_MESSAGE_DUMP = 50;
    private final ImCache mImCache;
    private final ArrayBlockingQueue<String> mEventLogs = new ArrayBlockingQueue<>(3000);
    SimpleDateFormat timeFormat = new SimpleDateFormat("MM-dd HH:mm:ss.SSS");
    Date date = new Date();

    ImDump(ImCache imCache) {
        this.mImCache = imCache;
    }

    protected void dump() {
        String str = LOG_TAG;
        IMSLog.dump(str, "Dump of " + str + ":");
        IMSLog.increaseIndent(str);
        IMSLog.dump(str, "Event Logs:");
        IMSLog.increaseIndent(str);
        Iterator<String> it = this.mEventLogs.iterator();
        while (it.hasNext()) {
            IMSLog.dump(LOG_TAG, it.next());
        }
        String str2 = LOG_TAG;
        IMSLog.decreaseIndent(str2);
        IMSLog.dump(str2, "Active Sessions:");
        for (ImSession imSession : this.mImCache.getAllImSessions()) {
            String str3 = LOG_TAG;
            IMSLog.dump(str3, imSession.toString(), false);
            IMSLog.dump(str3, "Pending messages:");
            IMSLog.increaseIndent(str3);
            Iterator<MessageBase> it2 = this.mImCache.getAllPendingMessages(imSession.getChatId()).iterator();
            while (it2.hasNext()) {
                IMSLog.dump(LOG_TAG, it2.next().toString(), false);
            }
            IMSLog.decreaseIndent(LOG_TAG);
        }
        IMSLog.dump(LOG_TAG, "All Sessions:");
        try {
            Iterator<ChatData> it3 = this.mImCache.getPersister().querySessions(null).iterator();
            while (it3.hasNext()) {
                ImSession imSession2 = this.mImCache.getImSession(it3.next().getChatId());
                if (imSession2 != null) {
                    String str4 = LOG_TAG;
                    IMSLog.dump(str4, imSession2.toStringForDump(), false);
                    IMSLog.increaseIndent(str4);
                    Iterator<String> it4 = generateMessagesForDump(this.mImCache.getPersister().queryMessagesByChatIdForDump(imSession2.getChatId(), 50)).iterator();
                    while (it4.hasNext()) {
                        IMSLog.dump(LOG_TAG, it4.next(), false);
                    }
                    IMSLog.decreaseIndent(LOG_TAG);
                }
            }
            IMSLog.decreaseIndent(LOG_TAG);
        } catch (SecurityException unused) {
        }
    }

    protected void addEventLogs(String str) {
        this.date.setTime(System.currentTimeMillis());
        String format = this.timeFormat.format(this.date);
        try {
            if (this.mEventLogs.offer(format + " " + str)) {
                return;
            }
            this.mEventLogs.poll();
            this.mEventLogs.add(format + " " + str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected ArrayList<String> generateMessagesForDump(Cursor cursor) {
        String str;
        String str2;
        if (cursor == null) {
            return null;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        while (cursor.moveToNext()) {
            if (cursor.getInt(cursor.getColumnIndexOrThrow("message_type")) == 0) {
                str = "FtMessage [";
            } else {
                str = cursor.getInt(cursor.getColumnIndexOrThrow("message_type")) == 1 ? "ImMessage [" : "  Message [";
            }
            String str3 = str + "imdnId=" + cursor.getString(cursor.getColumnIndexOrThrow("imdn_message_id")) + ", type=" + cursor.getString(cursor.getColumnIndexOrThrow("message_type")) + ", status=" + cursor.getInt(cursor.getColumnIndexOrThrow("status")) + ", direction=" + cursor.getInt(cursor.getColumnIndexOrThrow("direction")) + ", sentTime=" + cursor.getLong(cursor.getColumnIndexOrThrow(ImContract.Message.SENT_TIMESTAMP)) + ", deliveredTime=" + cursor.getLong(cursor.getColumnIndexOrThrow(ImContract.ChatItem.DELIVERED_TIMESTAMP)) + ", NotificationStatus=" + cursor.getInt(cursor.getColumnIndexOrThrow("notification_status"));
            if (cursor.getInt(cursor.getColumnIndexOrThrow("message_type")) == 0) {
                str2 = str3 + ", filename=" + IMSLog.checker(cursor.getString(cursor.getColumnIndexOrThrow(ImContract.CsSession.FILE_NAME))) + ", transferredByte=" + cursor.getLong(cursor.getColumnIndexOrThrow(ImContract.CsSession.BYTES_TRANSFERRED)) + ", fileSize=" + cursor.getLong(cursor.getColumnIndexOrThrow(ImContract.CsSession.FILE_SIZE));
            } else {
                str2 = str3 + ", body=" + IMSLog.checker(cursor.getString(cursor.getColumnIndexOrThrow("body")));
            }
            arrayList.add(str2);
        }
        return arrayList;
    }

    protected void dumpIncomingSession(int i, ImSession imSession, boolean z, boolean z2) {
        if (imSession != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(String.valueOf(imSession.getChatType().getId()));
            arrayList.add(ImsUtil.hideInfo(imSession.getConversationId(), 4));
            arrayList.add(z ? "1" : "0");
            arrayList.add(z2 ? "1" : "0");
            arrayList.add(imSession.isChatbotRole() ? "1" : "0");
            ImsUtil.listToDumpFormat(LogClass.IM_RECV_SESSION, i, imSession.getChatId(), arrayList);
        }
    }

    protected void dumpMessageSendingFailed(int i, ImSession imSession, Result result, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(ImsUtil.hideInfo(imSession.getConversationId(), 4));
        arrayList.add(ImsUtil.hideInfo(str, 4));
        if (result != null && result.getType() != Result.Type.NONE) {
            arrayList.add(result.toCriticalLog());
        }
        arrayList.add(str2);
        ImsUtil.listToDumpFormat(LogClass.IM_SEND_RES, i, imSession.getChatId(), arrayList);
    }

    protected void dumpIncomingMessageReceived(int i, boolean z, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(z ? "1" : "0");
        arrayList.add(ImsUtil.hideInfo(str2, 4));
        ImsUtil.listToDumpFormat(LogClass.IM_RECV_IM, i, str, arrayList);
    }
}
