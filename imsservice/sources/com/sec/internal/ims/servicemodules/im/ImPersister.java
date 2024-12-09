package com.sec.internal.ims.servicemodules.im;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteFullException;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ImCacheAction;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImContract;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImImdnRecRoute;
import com.sec.internal.constants.ims.servicemodules.im.ImParticipant;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.ims.servicemodules.im.interfaces.FtIntent;
import com.sec.internal.ims.servicemodules.im.interfaces.ImIntent;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class ImPersister {
    private static final int DATABASE_VERSION = 31;
    private static final String IN_WHERE_PENDING_MESSAGES = "(IFNULL(status, " + ImConstants.Status.IRRELEVANT.getId() + ") in (" + ImConstants.Status.SENDING.getId() + ", " + ImConstants.Status.TO_SEND.getId() + ") AND IFNULL(direction, " + ImDirection.IRRELEVANT.getId() + ") = " + ImDirection.OUTGOING.getId() + ") OR (IFNULL(state, 3) != 3)";
    private static final String IN_WHERE_PENDING_NOTIFICATION;
    private static final String IN_WHERE_REVOKE;
    private static final String LOG_TAG = "ImPersister";
    private final Context mContext;
    private final ImDBHelper mImDBHelper;
    private final ImModule mImModule;
    private final ContentResolver mResolver;

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("(IFNULL(status, ");
        ImConstants.Status status = ImConstants.Status.FAILED;
        sb.append(status.getId());
        sb.append(") != ");
        sb.append(status.getId());
        sb.append(" OR ");
        sb.append(ImContract.ChatItem.IS_FILE_TRANSFER);
        sb.append(" = 1) AND IFNULL(");
        sb.append("direction");
        sb.append(", 2) = ");
        sb.append(ImDirection.INCOMING.getId());
        sb.append(" AND ");
        sb.append("notification_status");
        sb.append(" < ");
        sb.append(ImContract.Message.DISPOSITION_NOTIFICATION_STATUS);
        IN_WHERE_PENDING_NOTIFICATION = sb.toString();
        IN_WHERE_REVOKE = "(IFNULL(revocation_status, " + ImConstants.RevocationStatus.NONE.getId() + ") in (" + ImConstants.RevocationStatus.AVAILABLE.getId() + ", " + ImConstants.RevocationStatus.PENDING.getId() + ", " + ImConstants.RevocationStatus.SENDING.getId() + "))";
    }

    public ImPersister(Context context, ImModule imModule) {
        Log.i(LOG_TAG, "ImPersister create");
        this.mContext = context;
        this.mImModule = imModule;
        this.mResolver = context.getContentResolver();
        this.mImDBHelper = new ImDBHelper(context, 31);
        clearDeletedParticipants();
        closeDB();
    }

    public Cursor querySessions(String[] strArr, String str, String[] strArr2, String str2) {
        Cursor cursor = null;
        try {
            SQLiteDatabase writableDatabase = this.mImDBHelper.getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                try {
                    cursor = writableDatabase.query(ImDBHelper.SESSION_TABLE, strArr, str, strArr2, null, null, str2);
                    setTransactionSuccessful(writableDatabase);
                } catch (SQLException e) {
                    Log.e(LOG_TAG, "SQL exception while querying all sessions. " + e);
                }
                return cursor;
            } finally {
                endTransaction(writableDatabase);
            }
        } catch (SQLiteDiskIOException e2) {
            Log.e(LOG_TAG, "SQLiteDiskIOException : " + e2);
            return null;
        }
    }

    public Cursor queryMessages(String[] strArr, String str, String[] strArr2, String str2) {
        Cursor cursor = null;
        try {
            SQLiteDatabase writableDatabase = this.mImDBHelper.getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                try {
                    cursor = writableDatabase.query("message", strArr, str, strArr2, null, null, str2);
                    setTransactionSuccessful(writableDatabase);
                } catch (SQLException e) {
                    Log.e(LOG_TAG, "SQL exception while querying all sessions. " + e);
                }
                return cursor;
            } finally {
                endTransaction(writableDatabase);
            }
        } catch (SQLiteDiskIOException e2) {
            Log.e(LOG_TAG, "SQLiteDiskIOException : " + e2);
            return null;
        }
    }

    private Cursor queryMessagesForTapi(String str, String[] strArr, String str2, String[] strArr2, String str3) {
        Cursor cursor;
        SQLiteDatabase writableDatabase = this.mImDBHelper.getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            try {
                cursor = writableDatabase.query(str, strArr, str2, strArr2, null, null, str3);
            } finally {
                endTransaction(writableDatabase);
            }
        } catch (SQLException e) {
            e = e;
            cursor = null;
        }
        try {
            setTransactionSuccessful(writableDatabase);
        } catch (SQLException e2) {
            e = e2;
            Log.e(LOG_TAG, "SQL exception while queryMessagesForTapi. " + e);
            return cursor;
        }
        return cursor;
    }

    public Cursor queryChatMessagesForTapi(String[] strArr, String str, String[] strArr2, String str2) {
        return queryMessagesForTapi(ImDBHelper.CHAT_MESSAGE_VIEW, strArr, str, strArr2, str2);
    }

    public Cursor queryFtMessagesForTapi(String[] strArr, String str, String[] strArr2, String str2) {
        return queryMessagesForTapi(ImDBHelper.FILETRANSFER_VIEW, strArr, str, strArr2, str2);
    }

    public Cursor queryParticipants(String[] strArr, String str, String[] strArr2, String str2) {
        Cursor cursor = null;
        try {
            SQLiteDatabase writableDatabase = this.mImDBHelper.getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                try {
                    cursor = writableDatabase.query("participant", strArr, str, strArr2, null, null, str2);
                    setTransactionSuccessful(writableDatabase);
                } catch (SQLException e) {
                    Log.e(LOG_TAG, "SQL exception while querying all sessions. " + e);
                }
                return cursor;
            } finally {
                endTransaction(writableDatabase);
            }
        } catch (SQLiteDiskIOException e2) {
            Log.e(LOG_TAG, "SQLiteDiskIOException : " + e2);
            return null;
        }
    }

    public Cursor queryMessageNotification(String[] strArr, String str, String[] strArr2, String str2) {
        Cursor cursor = null;
        try {
            SQLiteDatabase writableDatabase = this.mImDBHelper.getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                try {
                    cursor = writableDatabase.query("notification", strArr, str, strArr2, null, null, str2);
                    setTransactionSuccessful(writableDatabase);
                } catch (SQLException e) {
                    Log.e(LOG_TAG, "SQL exception while querying all sessions. " + e);
                }
                return cursor;
            } finally {
                endTransaction(writableDatabase);
            }
        } catch (SQLiteDiskIOException e2) {
            Log.e(LOG_TAG, "SQLiteDiskIOException : " + e2);
            return null;
        }
    }

    private Cursor query(String str, WhereClauseArgs whereClauseArgs, String[] strArr, String str2, String str3) {
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables(str);
        Cursor cursor = null;
        try {
            SQLiteDatabase writableDatabase = this.mImDBHelper.getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                try {
                    if (whereClauseArgs != null) {
                        cursor = sQLiteQueryBuilder.query(writableDatabase, strArr, whereClauseArgs.getWhereClause(), whereClauseArgs.getWhereArgs(), str2, null, str3);
                    } else {
                        cursor = sQLiteQueryBuilder.query(writableDatabase, strArr, null, null, str2, null, str3);
                    }
                    setTransactionSuccessful(writableDatabase);
                } catch (SQLException e) {
                    Log.e(LOG_TAG, "SQL exception while querying " + e);
                }
                return cursor;
            } finally {
                endTransaction(writableDatabase);
            }
        } catch (SQLiteDiskIOException e2) {
            Log.e(LOG_TAG, "SQLiteDiskIOException : " + e2);
            return null;
        }
    }

    private Cursor query(String str, String str2, String[] strArr, String str3, String str4) {
        return query(str, new WhereClauseArgs(str2), strArr, str3, str4);
    }

    private void update(String str, List<Pair<ContentValues, WhereClauseArgs>> list) {
        try {
            SQLiteDatabase writableDatabase = this.mImDBHelper.getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                try {
                    for (Pair<ContentValues, WhereClauseArgs> pair : list) {
                        Object obj = pair.second;
                        if (obj != null) {
                            writableDatabase.update(str, (ContentValues) pair.first, ((WhereClauseArgs) obj).getWhereClause(), ((WhereClauseArgs) pair.second).getWhereArgs());
                        } else {
                            writableDatabase.update(str, (ContentValues) pair.first, null, null);
                        }
                    }
                    setTransactionSuccessful(writableDatabase);
                } catch (SQLiteFullException e) {
                    Log.e(LOG_TAG, "SQLiteOutOfMemoryException while update. " + e);
                    this.mImModule.notifyDeviceOutOfMemory();
                } catch (SQLException e2) {
                    Log.e(LOG_TAG, "SQL exception while update. " + e2);
                }
            } finally {
                endTransaction(writableDatabase);
            }
        } catch (SQLiteDiskIOException e3) {
            Log.e(LOG_TAG, "SQLiteDiskIOException : " + e3);
        }
    }

    private void update(String str, ContentValues contentValues, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair<>(contentValues, new WhereClauseArgs(str2)));
        update(str, arrayList);
    }

    private void delete(String str, String str2) {
        try {
            SQLiteDatabase writableDatabase = this.mImDBHelper.getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                try {
                    writableDatabase.delete(str, str2, null);
                    setTransactionSuccessful(writableDatabase);
                } catch (SQLiteFullException e) {
                    Log.e(LOG_TAG, "SQLiteOutOfMemoryException while delete. " + e);
                    this.mImModule.notifyDeviceOutOfMemory();
                } catch (SQLException e2) {
                    Log.e(LOG_TAG, "SQL exception while delete. " + e2);
                }
            } finally {
                endTransaction(writableDatabase);
            }
        } catch (SQLiteDiskIOException | IllegalStateException e3) {
            Log.e(LOG_TAG, "Exception : " + e3);
        }
    }

    private List<MessageBase> queryMessages(String str) {
        ArrayList arrayList = new ArrayList();
        Cursor query = query("message", str, (String[]) null, (String) null, (String) null);
        if (query == null) {
            if (query != null) {
                query.close();
            }
            return arrayList;
        }
        while (query.moveToNext()) {
            try {
                boolean z = true;
                if (query.getInt(query.getColumnIndexOrThrow(ImContract.ChatItem.IS_FILE_TRANSFER)) != 1) {
                    z = false;
                }
                if (z) {
                    arrayList.add(this.mImDBHelper.makeFtMessage(query, this.mImModule));
                } else {
                    arrayList.add(this.mImDBHelper.makeImMessage(query, this.mImModule));
                }
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        query.close();
        return arrayList;
    }

    public List<ChatData> querySessions(String str) {
        ArrayList arrayList = new ArrayList();
        Cursor query = query(ImDBHelper.SESSION_TABLE, str, (String[]) null, (String) null, (String) null);
        if (query == null) {
            if (query != null) {
                query.close();
            }
            return arrayList;
        }
        while (query.moveToNext()) {
            try {
                arrayList.add(ImDBHelper.makeSession(query));
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        query.close();
        return arrayList;
    }

    protected List<ImParticipant> queryParticipants(String str) {
        ArrayList arrayList = new ArrayList();
        Cursor query = query("participant", str, (String[]) null, (String) null, (String) null);
        if (query == null) {
            if (query != null) {
                query.close();
            }
            return arrayList;
        }
        while (query.moveToNext()) {
            try {
                arrayList.add(this.mImDBHelper.makeParticipant(query));
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        query.close();
        return arrayList;
    }

    private List<ImImdnRecRoute> queryImImdnRecRoutes(String str) {
        ArrayList arrayList = new ArrayList();
        Cursor query = query(ImDBHelper.IMDNRECROUTE_TABLE, str, (String[]) null, (String) null, (String) null);
        if (query == null) {
            if (query != null) {
                query.close();
            }
            return arrayList;
        }
        while (query.moveToNext()) {
            try {
                arrayList.add(this.mImDBHelper.makeImdnRecRoute(query));
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        query.close();
        return arrayList;
    }

    public MessageBase queryMessage(String str) {
        List<MessageBase> queryMessages = queryMessages("_id = '" + str + "'");
        if (queryMessages.isEmpty()) {
            return null;
        }
        return queryMessages.get(0);
    }

    protected void insertSession(ChatData chatData) {
        String str = LOG_TAG;
        IMSLog.s(str, "insertSession: " + chatData);
        try {
            SQLiteDatabase writableDatabase = this.mImDBHelper.getWritableDatabase();
            ContentValues makeSessionRow = ImDBHelper.makeSessionRow(chatData);
            writableDatabase.beginTransaction();
            try {
                long insert = writableDatabase.insert(ImDBHelper.SESSION_TABLE, null, makeSessionRow);
                if (insert != -1) {
                    Log.i(str, "Set chat id " + insert + " (" + chatData.getChatId() + ")");
                    chatData.setId((int) insert);
                    setTransactionSuccessful(writableDatabase);
                } else {
                    Log.e(str, "SQL exception while inserting a session.");
                }
            } finally {
                endTransaction(writableDatabase);
            }
        } catch (SQLiteDiskIOException e) {
            Log.e(LOG_TAG, "SQLiteDiskIOException : " + e);
        }
    }

    protected void onSessionUpdated(ChatData chatData) {
        String str = LOG_TAG;
        IMSLog.s(str, "onSessionUpdated: " + chatData);
        update(ImDBHelper.SESSION_TABLE, ImDBHelper.makeSessionRow(chatData), "_id = " + chatData.getId());
        String chatId = chatData.getChatId();
        if (this.mResolver == null || chatId == null) {
            return;
        }
        this.mResolver.notifyChange(Uri.parse("content://com.samsung.rcs.im/chat/" + chatId), null);
        if (chatData.getState() == ChatData.State.ACTIVE || chatData.getState() == ChatData.State.NONE || chatData.getState() == ChatData.State.CLOSED_VOLUNTARILY) {
            Uri parse = Uri.parse("content://com.samsung.rcs.cmstore/chat/" + chatId);
            Log.i(str, "onSessionUpdated, storeUri: " + parse);
            this.mResolver.notifyChange(parse, null);
        }
        Log.i(str, "onSessionUpdated: notifyChange to " + chatId + "(state=" + chatData.getState() + ")");
    }

    private void deleteSession(ChatData chatData) {
        IMSLog.s(LOG_TAG, "deleteSession: " + chatData);
        delete(ImDBHelper.SESSION_TABLE, "_id=" + chatData.getId());
    }

    public List<String> querySessionForAutoRejoin(boolean z) {
        String str = "(";
        if (z) {
            str = "(status = '1' OR status = '3' OR ";
        }
        String str2 = str + "status = '4') AND chat_type = " + ChatData.ChatType.REGULAR_GROUP_CHAT.getId();
        ArrayList arrayList = new ArrayList();
        Cursor query = query(ImDBHelper.SESSION_TABLE, str2, new String[]{"chat_id"}, (String) null, (String) null);
        if (query == null) {
            if (query != null) {
                query.close();
            }
            return arrayList;
        }
        while (query.moveToNext()) {
            try {
                arrayList.add(query.getString(0));
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        query.close();
        return arrayList;
    }

    public List<String> querySessionByChatType(String str, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("sim_imsi = '");
        sb.append(str);
        sb.append("' AND ");
        sb.append("is_group_chat");
        sb.append(" = ");
        sb.append(z ? "'1'" : "'0'");
        List<ChatData> querySessions = querySessions(sb.toString());
        if (querySessions.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<ChatData> it = querySessions.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getChatId());
        }
        return arrayList;
    }

    public ChatData querySessionByChatId(String str) {
        List<ChatData> querySessions = querySessions("chat_id = '" + str + "'");
        if (querySessions.isEmpty()) {
            return null;
        }
        return querySessions.get(0);
    }

    public ChatData querySessionByContributionId(String str, String str2, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("contribution_id = '");
        sb.append(str2);
        sb.append("' AND ");
        sb.append("sim_imsi");
        sb.append("='");
        sb.append(str);
        sb.append("' AND ");
        sb.append("is_group_chat");
        sb.append(" = ");
        sb.append(z ? "'1'" : "'0'");
        List<ChatData> querySessions = querySessions(sb.toString());
        if (querySessions.isEmpty()) {
            return null;
        }
        return querySessions.get(0);
    }

    public ChatData querySessionByConversationId(String str, String str2, boolean z) {
        IMSLog.s(LOG_TAG, "querySessionByConversationId cid=" + str2);
        StringBuilder sb = new StringBuilder();
        sb.append("conversation_id = '");
        sb.append(str2);
        sb.append("' AND ");
        sb.append("sim_imsi");
        sb.append("='");
        sb.append(str);
        sb.append("' AND ");
        sb.append("is_group_chat");
        sb.append(" = ");
        sb.append(z ? "'1'" : "'0'");
        List<ChatData> querySessions = querySessions(sb.toString());
        if (querySessions.isEmpty()) {
            return null;
        }
        return querySessions.get(0);
    }

    public List<String> queryAllSessionByParticipant(Set<ImsUri> set, ChatData.ChatType chatType) {
        IMSLog.s(LOG_TAG, "queryAllSessionByParticipant chatType=" + chatType + " participants=" + set);
        ArrayList arrayList = new ArrayList();
        Cursor query = query("session, participant", String.format("%s.%s=%s.%s and %s=%s", ImDBHelper.SESSION_TABLE, "chat_id", "participant", "chat_id", ImContract.ImSession.CHAT_TYPE, Integer.valueOf(chatType.getId())), new String[]{"DISTINCT session.chat_id", "participant.uri"}, (String) null, (String) null);
        if (query == null) {
            if (query == null) {
                return null;
            }
            query.close();
            return null;
        }
        while (query.moveToNext()) {
            try {
                if (set.contains(ImsUri.parse(query.getString(1)))) {
                    arrayList.add(query.getString(0));
                }
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        Log.i(LOG_TAG, "Chats found: " + arrayList);
        query.close();
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ea, code lost:
    
        r11 = r12.getString(0);
        android.util.Log.i(r14, "Chat found:" + r11);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.sec.internal.constants.ims.servicemodules.im.ChatData querySessionByParticipants(java.util.Set<com.sec.ims.util.ImsUri> r11, com.sec.internal.constants.ims.servicemodules.im.ChatData.ChatType r12, java.lang.String r13, com.sec.internal.constants.ims.servicemodules.im.ChatMode r14) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.im.ImPersister.querySessionByParticipants(java.util.Set, com.sec.internal.constants.ims.servicemodules.im.ChatData$ChatType, java.lang.String, com.sec.internal.constants.ims.servicemodules.im.ChatMode):com.sec.internal.constants.ims.servicemodules.im.ChatData");
    }

    protected void insertParticipant(ImParticipant imParticipant) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(imParticipant);
        insertParticipant(arrayList);
    }

    protected void insertParticipant(Collection<ImParticipant> collection) {
        try {
            SQLiteDatabase writableDatabase = this.mImDBHelper.getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                for (ImParticipant imParticipant : collection) {
                    long insert = writableDatabase.insert("participant", null, ImDBHelper.makeParticipantRow(imParticipant));
                    if (insert != -1) {
                        Log.i(LOG_TAG, "Set participant id " + insert);
                        imParticipant.setId((int) insert);
                    } else {
                        Log.e(LOG_TAG, "SQL exception while inserting a participant.");
                    }
                }
                setTransactionSuccessful(writableDatabase);
            } finally {
                endTransaction(writableDatabase);
            }
        } catch (SQLiteDiskIOException e) {
            Log.e(LOG_TAG, "SQLiteDiskIOException : " + e);
        }
    }

    protected void deleteParticipant(ImParticipant imParticipant) {
        delete("participant", "_id=" + imParticipant.getId());
    }

    protected void deleteParticipant(Collection<ImParticipant> collection) {
        ArrayList arrayList = new ArrayList();
        Iterator<ImParticipant> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(it.next().getId()));
        }
        delete("participant", "_id in ('" + TextUtils.join("', '", arrayList) + "')");
    }

    protected void onParticipantUpdated(ImParticipant imParticipant) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(imParticipant);
        onParticipantUpdated(arrayList);
    }

    private void onParticipantUpdated(Collection<ImParticipant> collection) {
        ArrayList arrayList = new ArrayList();
        for (ImParticipant imParticipant : collection) {
            arrayList.add(new Pair<>(ImDBHelper.makeParticipantRow(imParticipant), new WhereClauseArgs("_id = " + imParticipant.getId())));
        }
        update("participant", arrayList);
    }

    private void setTransactionSuccessful(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.setTransactionSuccessful();
        } catch (IllegalStateException e) {
            Log.e(LOG_TAG, "SQLException while setTransactionSuccessful:" + e);
        }
    }

    private void endTransaction(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.endTransaction();
        } catch (SQLiteFullException unused) {
            Log.e(LOG_TAG, "SQLiteOutOfMemoryException endTransaction");
            this.mImModule.notifyDeviceOutOfMemory();
        } catch (SQLException e) {
            Log.e(LOG_TAG, "SQLException while endTransaction:" + e);
        }
    }

    public Set<ImParticipant> queryParticipantSet(String str) {
        return new HashSet(queryParticipants("chat_id='" + str + "'"));
    }

    public List<ImParticipant> queryParticipant(String str, String str2) {
        return queryParticipants("chat_id='" + str + "' and uri='" + str2 + "'");
    }

    private void insertImdnRecRoute(Collection<ImImdnRecRoute> collection, int i) {
        try {
            SQLiteDatabase writableDatabase = this.mImDBHelper.getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                for (ImImdnRecRoute imImdnRecRoute : collection) {
                    imImdnRecRoute.setMessageId(i);
                    long insert = writableDatabase.insert(ImDBHelper.IMDNRECROUTE_TABLE, null, this.mImDBHelper.makeImdnRecRouteRow(imImdnRecRoute));
                    if (insert != -1) {
                        Log.i(LOG_TAG, "Set imdnrecroute id " + insert);
                        imImdnRecRoute.setId((int) insert);
                    } else {
                        Log.e(LOG_TAG, "SQL exception while inserting a imdnrecroute.");
                    }
                }
                setTransactionSuccessful(writableDatabase);
            } finally {
                endTransaction(writableDatabase);
            }
        } catch (SQLiteDiskIOException e) {
            Log.e(LOG_TAG, "SQLiteDiskIOException : " + e);
        }
    }

    List<ImImdnRecRoute> queryImImdnRecRoute(MessageBase messageBase) {
        if (messageBase != null && messageBase.getId() > 0 && !TextUtils.isEmpty(messageBase.getImdnId())) {
            return queryImImdnRecRoutes("message_id = " + messageBase.getId() + " OR (imdn_id = '" + messageBase.getImdnId() + "' AND message_id = 0)");
        }
        return new ArrayList();
    }

    private void insertMessage(MessageBase messageBase) {
        ContentValues makeFtMessageRow;
        String str = LOG_TAG;
        IMSLog.s(str, "insertMessage: " + messageBase);
        try {
            SQLiteDatabase writableDatabase = this.mImDBHelper.getWritableDatabase();
            if (messageBase instanceof ImMessage) {
                makeFtMessageRow = this.mImDBHelper.makeImMessageRow((ImMessage) messageBase);
            } else {
                makeFtMessageRow = messageBase instanceof FtMessage ? this.mImDBHelper.makeFtMessageRow((FtMessage) messageBase) : null;
            }
            if (makeFtMessageRow == null) {
                return;
            }
            writableDatabase.beginTransaction();
            try {
                long insert = writableDatabase.insert("message", null, makeFtMessageRow);
                if (insert != -1) {
                    Log.i(str, "Set message id " + insert + " (" + messageBase.getImdnId() + ")");
                    messageBase.setId((int) insert);
                    setTransactionSuccessful(writableDatabase);
                } else {
                    Log.e(str, "SQL exception while inserting a message.");
                }
            } finally {
                endTransaction(writableDatabase);
            }
        } catch (SQLiteDiskIOException e) {
            Log.e(LOG_TAG, "SQLiteDiskIOException : " + e);
        }
    }

    private void insertMessageNotification(MessageBase messageBase) {
        try {
            SQLiteDatabase writableDatabase = this.mImDBHelper.getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                for (ImParticipant imParticipant : queryParticipantSet(messageBase.getChatId())) {
                    if (writableDatabase.insert("notification", null, this.mImDBHelper.makeMessageNotificationRow(messageBase, imParticipant.getUri().toString())) != -1) {
                        IMSLog.s(LOG_TAG, "Set Notification sender_uri " + imParticipant.getUri());
                    } else {
                        Log.e(LOG_TAG, "SQL exception while inserting a notification.");
                    }
                }
                setTransactionSuccessful(writableDatabase);
            } finally {
                endTransaction(writableDatabase);
            }
        } catch (SQLiteDiskIOException e) {
            Log.e(LOG_TAG, "SQLiteDiskIOException : " + e);
        }
    }

    private void onMessageUpdated(MessageBase messageBase) {
        ContentValues makeFtMessageRow;
        IMSLog.s(LOG_TAG, "onMessageUpdated: " + messageBase);
        String str = "_id = " + messageBase.getId();
        if (messageBase instanceof ImMessage) {
            makeFtMessageRow = this.mImDBHelper.makeImMessageRow((ImMessage) messageBase);
        } else {
            makeFtMessageRow = messageBase instanceof FtMessage ? this.mImDBHelper.makeFtMessageRow((FtMessage) messageBase) : null;
        }
        if (makeFtMessageRow == null) {
            return;
        }
        update("message", makeFtMessageRow, str);
    }

    private void onMessageNotificationUpdated(MessageBase messageBase) {
        long deliveredTimestamp;
        ImsUri notificationParticipant = messageBase.getNotificationParticipant();
        if (notificationParticipant == null) {
            Log.e(LOG_TAG, "onMessageNotificationUpdated participant is null");
            return;
        }
        String str = LOG_TAG;
        IMSLog.s(str, "onMessageNotificationUpdated participant : " + notificationParticipant);
        if (messageBase.getLastNotificationType() == NotificationStatus.DELIVERED || messageBase.getLastNotificationType() == NotificationStatus.INTERWORKING_SMS || messageBase.getLastNotificationType() == NotificationStatus.INTERWORKING_MMS) {
            deliveredTimestamp = messageBase.getDeliveredTimestamp();
        } else {
            deliveredTimestamp = messageBase.getLastNotificationType() == NotificationStatus.DISPLAYED ? messageBase.getLastDisplayedTimestamp().longValue() : 0L;
        }
        Log.i(str, "onMessageNotificationUpdated status : " + messageBase.getLastNotificationType().getId() + ", timeStamp : " + deliveredTimestamp);
        update("notification", this.mImDBHelper.makeMessageNotificationUpdateRow(deliveredTimestamp, messageBase.getLastNotificationType().getId()), "imdn_id = '" + messageBase.getImdnId() + "' AND " + ImContract.MessageNotification.SENDER_URI + " = '" + notificationParticipant + "'");
    }

    protected void deleteMessage(int i) {
        deleteMessageNotification(i);
        deleteImdnRecRoute(i);
        delete("message", "_id = " + i);
    }

    protected void deleteMessage(String str) {
        List<Integer> queryAllMessageIdsByChatId = queryAllMessageIdsByChatId(str, false);
        deleteMessageNotification(queryAllMessageIdsByChatId);
        deleteImdnRecRoute(queryAllMessageIdsByChatId);
        delete("message", "chat_id = '" + str + "'");
    }

    private void deleteMessageNotification(int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i));
        deleteMessageNotification(arrayList);
    }

    private void deleteMessageNotification(List<Integer> list) {
        String str = "'" + TextUtils.join("', '", list) + "'";
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables("message");
        StringBuilder sb = new StringBuilder();
        sb.append("message_id in (");
        sb.append(str);
        sb.append(") OR (");
        sb.append("message_id");
        sb.append(" = 0 AND ");
        sb.append("imdn_id");
        sb.append(" in (");
        sb.append(sQLiteQueryBuilder.buildQuery(new String[]{"imdn_message_id"}, "_id in (" + str + ")", null, null, null, null));
        sb.append("))");
        delete("notification", sb.toString());
    }

    private void deleteImdnRecRoute(int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i));
        deleteImdnRecRoute(arrayList);
    }

    private void deleteImdnRecRoute(List<Integer> list) {
        String str = "'" + TextUtils.join("', '", list) + "'";
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables("message");
        StringBuilder sb = new StringBuilder();
        sb.append("message_id in (");
        sb.append(str);
        sb.append(") OR (");
        sb.append("message_id");
        sb.append(" = 0 AND ");
        sb.append("imdn_id");
        sb.append(" in (");
        sb.append(sQLiteQueryBuilder.buildQuery(new String[]{"imdn_message_id"}, "_id in (" + str + ")", null, null, null, null));
        sb.append("))");
        delete(ImDBHelper.IMDNRECROUTE_TABLE, sb.toString());
    }

    public List<MessageBase> queryMessages(Collection<String> collection) {
        return queryMessages("_id in ('" + TextUtils.join("', '", collection) + "')");
    }

    public List<MessageBase> queryMessagesUsingChatID(String str) {
        List<MessageBase> queryMessages = queryMessages("chat_id = '" + str + "'");
        if (queryMessages.isEmpty()) {
            return null;
        }
        return queryMessages;
    }

    public List<MessageBase> queryMessagesUsingChatIDExceptPending(String str, List<String> list) {
        List<MessageBase> queryMessages = queryMessages("chat_id = '" + str + "' AND _id not in ('" + TextUtils.join("', '", list) + "')");
        if (queryMessages.isEmpty()) {
            return null;
        }
        return queryMessages;
    }

    public List<MessageBase> queryMessages(Collection<String> collection, ImDirection imDirection, String str) {
        String str2;
        StringBuilder sb = new StringBuilder();
        sb.append("imdn_message_id in ('");
        sb.append(TextUtils.join("', '", collection));
        sb.append("') AND ");
        sb.append("direction");
        sb.append(" = '");
        sb.append(imDirection.getId());
        sb.append("'");
        if (str != null) {
            str2 = " AND chat_id = '" + str + "'";
        } else {
            str2 = "";
        }
        sb.append(str2);
        return queryMessages(sb.toString());
    }

    public MessageBase queryMessage(String str, ImDirection imDirection, String str2) {
        String str3;
        StringBuilder sb = new StringBuilder();
        sb.append("imdn_message_id = '");
        sb.append(str);
        sb.append("' AND ");
        sb.append("direction");
        sb.append(" = '");
        sb.append(imDirection.getId());
        sb.append("'");
        if (str2 != null) {
            str3 = " AND chat_id = '" + str2 + "'";
        } else {
            str3 = "";
        }
        sb.append(str3);
        List<MessageBase> queryMessages = queryMessages(sb.toString());
        if (queryMessages.isEmpty()) {
            return null;
        }
        return queryMessages.get(0);
    }

    public FtMessage queryFtMessageByFileTransferId(String str, String str2) {
        List<MessageBase> queryMessages = queryMessages("is_filetransfer = '1' AND file_transfer_id = '" + str + "' AND chat_id = '" + str2 + "'");
        if (queryMessages.isEmpty()) {
            return null;
        }
        return (FtMessage) queryMessages.get(0);
    }

    public List<Integer> queryAllMessageIdsByChatId(String str, boolean z) {
        String str2 = "chat_id = '" + str + "'";
        if (z) {
            str2 = str2 + " AND is_filetransfer = '1'";
        }
        return queryMessageIds(str2);
    }

    public Cursor queryMessagesByChatIdForDump(String str, int i) {
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables("message");
        WhereClauseArgs whereClauseArgs = new WhereClauseArgs("chat_id = '" + str + "'");
        String[] strArr = {"imdn_message_id", "message_type", "body", ImContract.CsSession.FILE_NAME, "status", ImContract.CsSession.BYTES_TRANSFERRED, ImContract.CsSession.FILE_SIZE, "direction", ImContract.Message.SENT_TIMESTAMP, ImContract.ChatItem.DELIVERED_TIMESTAMP, "notification_status"};
        Cursor cursor = null;
        try {
            SQLiteDatabase writableDatabase = this.mImDBHelper.getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                try {
                    cursor = sQLiteQueryBuilder.query(writableDatabase, strArr, whereClauseArgs.getWhereClause(), whereClauseArgs.getWhereArgs(), null, null, "sent_timestamp DESC", Integer.toString(i));
                    setTransactionSuccessful(writableDatabase);
                } catch (SQLException e) {
                    Log.e(LOG_TAG, "SQL exception while querying " + e);
                }
                return cursor;
            } finally {
                endTransaction(writableDatabase);
            }
        } catch (SQLiteDiskIOException e2) {
            Log.e(LOG_TAG, "SQLiteDiskIOException : " + e2);
            return null;
        }
    }

    private List<Integer> queryMessageIds(String str) {
        ArrayList arrayList = new ArrayList();
        Cursor query = query("message", str, new String[]{"_id"}, (String) null, (String) null);
        if (query == null) {
            if (query != null) {
                query.close();
            }
            return arrayList;
        }
        while (query.moveToNext()) {
            try {
                arrayList.add(Integer.valueOf(query.getInt(query.getColumnIndexOrThrow("_id"))));
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        query.close();
        return arrayList;
    }

    public List<Integer> queryPendingMessageIds(String str) {
        Log.i(LOG_TAG, "queryPendingMessageIds:" + str);
        return queryMessageIds("chat_id='" + str + "' AND " + IN_WHERE_PENDING_MESSAGES);
    }

    public List<Integer> queryMessagesIdsForRevoke(String str) {
        Log.i(LOG_TAG, "queryImMessagesIdsForRevoke:" + str);
        String str2 = "chat_id='" + str + "' AND " + IN_WHERE_REVOKE;
        ArrayList arrayList = new ArrayList();
        Cursor query = query("message", str2, new String[]{"_id"}, (String) null, (String) null);
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    arrayList.add(Integer.valueOf(query.getInt(query.getColumnIndexOrThrow("_id"))));
                } catch (Throwable th) {
                    try {
                        query.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
        }
        if (query != null) {
            query.close();
        }
        return arrayList;
    }

    public List<Integer> queryMessageIdsForPendingNotification(String str) {
        Log.i(LOG_TAG, "queryMessagesForPendingNotification:" + str);
        return queryMessageIds("chat_id='" + str + "' AND " + IN_WHERE_PENDING_NOTIFICATION);
    }

    public List<Integer> queryMessageIdsForDisplayAggregation(String str, ImDirection imDirection, Long l) {
        Log.i(LOG_TAG, "queryMessageIdsForDisplayAggregation: chatId = " + str + ", direction = " + imDirection + ", timestamp = " + l);
        return queryMessageIds("chat_id = '" + str + "' AND notification_status = " + NotificationStatus.DELIVERED.getId() + " AND " + ImContract.Message.NOTIFICATION_DISPOSITION_MASK + " & " + NotificationStatus.DISPLAYED.getId() + " != 0 AND " + ImContract.ChatItem.DELIVERED_TIMESTAMP + " <= " + l + " AND direction = " + imDirection.getId());
    }

    public List<String> queryAllChatIDwithPendingMessages() {
        Cursor query;
        Log.i(LOG_TAG, "queryAllChatIDwithPendingMessages at bootup");
        ArrayList arrayList = new ArrayList();
        try {
            query = query("message", IN_WHERE_PENDING_MESSAGES + " OR " + IN_WHERE_PENDING_NOTIFICATION + " OR " + IN_WHERE_REVOKE, new String[]{"chat_id"}, (String) null, (String) null);
        } catch (SQLiteDatabaseCorruptException e) {
            Log.e(LOG_TAG, "queryAllChatIDwithPendingMessages: SQLiteDatabaseCorruptException: " + e);
        }
        if (query == null) {
            if (query != null) {
                query.close();
            }
            return arrayList;
        }
        while (query.moveToNext()) {
            try {
                arrayList.add(query.getString(query.getColumnIndexOrThrow("chat_id")));
            } finally {
            }
        }
        query.close();
        Log.i(LOG_TAG, "queryAllChatIDwithPendingMessages: " + arrayList);
        return arrayList;
    }

    public List<String> queryAllChatIDwithFailedFTMessages() {
        String str = LOG_TAG;
        Log.i(str, "queryAllChatIDwithFailedFTMessages at bootup");
        ArrayList arrayList = new ArrayList();
        String str2 = "(IFNULL(ft_status, 0) == " + ImConstants.Status.FAILED.getId() + ") AND IFNULL(direction, 0) != " + ImDirection.IRRELEVANT.getId();
        Log.i(str, "queryAllChatIDwithFailedFTMessages lsj, inWhere: " + str2);
        Cursor query = query("message", str2, new String[]{"chat_id"}, (String) null, (String) null);
        if (query == null) {
            if (query != null) {
                query.close();
            }
            return arrayList;
        }
        while (query.moveToNext()) {
            try {
                arrayList.add(query.getString(query.getColumnIndexOrThrow("chat_id")));
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        query.close();
        Log.i(LOG_TAG, "queryAllChatIDwithFailedFTMessages: " + arrayList);
        return arrayList;
    }

    public NotificationStatus queryNotificationStatus(String str, ImsUri imsUri) {
        Cursor query = query("notification", "imdn_id = '" + str + "' AND " + ImContract.MessageNotification.SENDER_URI + " = '" + imsUri + "'", new String[]{"status"}, (String) null, (String) null);
        if (query == null) {
            if (query != null) {
                query.close();
            }
            return null;
        }
        try {
            NotificationStatus fromId = query.moveToNext() ? NotificationStatus.fromId(query.getInt(query.getColumnIndexOrThrow("status"))) : null;
            query.close();
            return fromId;
        } catch (Throwable th) {
            try {
                query.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public List<Bundle> queryLastSentMessages(List<String> list) {
        String str;
        String str2;
        int i;
        int i2;
        String str3 = LOG_TAG;
        Log.i(str3, "queryLastSentMessages listRequestMessageId size = " + list.size());
        ArrayList arrayList = new ArrayList();
        try {
            SQLiteDatabase writableDatabase = this.mImDBHelper.getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                try {
                    SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
                    sQLiteQueryBuilder.setTables("message");
                    Log.i(str3, "list of request message ids" + list);
                    if (list.size() >= 1) {
                        sQLiteQueryBuilder.appendWhere("request_message_id IN (" + TextUtils.join(", ", list) + ")");
                        str2 = null;
                        str = null;
                    } else {
                        str = "sent_timestamp DESC";
                        str2 = "1";
                    }
                    Cursor query = sQLiteQueryBuilder.query(writableDatabase, null, null, null, null, null, str, str2);
                    while (query != null) {
                        try {
                            if (!query.moveToNext()) {
                                break;
                            }
                            int i3 = query.getInt(query.getColumnIndexOrThrow("request_message_id"));
                            String string = query.getString(query.getColumnIndexOrThrow("chat_id"));
                            int i4 = query.getInt(query.getColumnIndexOrThrow(ImContract.ChatItem.IS_FILE_TRANSFER));
                            if (i4 == 0) {
                                i = query.getInt(query.getColumnIndexOrThrow("status"));
                                i2 = 0;
                            } else {
                                i = query.getInt(query.getColumnIndexOrThrow(ImContract.CsSession.STATUS));
                                i2 = query.getInt(query.getColumnIndexOrThrow(ImContract.CsSession.IS_RESUMABLE));
                            }
                            Bundle bundle = new Bundle();
                            bundle.putString("chat_id", string);
                            bundle.putLong("request_message_id", i3);
                            bundle.putInt(ImIntent.Extras.IS_FILE_TRANSFER, i4);
                            if (i == ImConstants.Status.FAILED.getId()) {
                                bundle.putBoolean("response_status", false);
                            } else if (i == ImConstants.Status.SENT.getId()) {
                                bundle.putBoolean("response_status", true);
                            }
                            bundle.putInt(FtIntent.Extras.EXTRA_RESUMABLE_OPTION_CODE, i2);
                            arrayList.add(bundle);
                        } finally {
                        }
                    }
                    if (query != null) {
                        query.close();
                    }
                    setTransactionSuccessful(writableDatabase);
                } catch (SQLException e) {
                    Log.e(LOG_TAG, "SQL exception while queryAllChatIDwithPendingMessages. " + e);
                }
                return arrayList;
            } finally {
                endTransaction(writableDatabase);
            }
        } catch (SQLiteDiskIOException e2) {
            Log.e(LOG_TAG, "SQLiteDiskIOException : " + e2);
            return arrayList;
        }
    }

    public Collection<ImsUri> queryChatbotRoleUris(String str) {
        ArrayList arrayList = new ArrayList();
        Cursor query = query("participant, session", "participant.chat_id = session.chat_id AND session.sim_imsi = '" + str + "' AND " + ImDBHelper.SESSION_TABLE + ".is_group_chat = 0 AND " + ImDBHelper.SESSION_TABLE + "." + ImContract.ImSession.IS_CHATBOT_ROLE + " = 1", new String[]{"uri"}, (String) null, (String) null);
        if (query == null) {
            if (query != null) {
                query.close();
            }
            return arrayList;
        }
        while (query.moveToNext()) {
            try {
                arrayList.add(ImsUri.parse(query.getString(query.getColumnIndexOrThrow("uri"))));
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        query.close();
        Log.i(LOG_TAG, "queryChatbotRoleUris: size=" + arrayList.size() + " " + IMSLog.checker(arrayList));
        return arrayList;
    }

    public Uri cloudInsertMessage(Uri uri, ContentValues contentValues) {
        String str = LOG_TAG;
        IMSLog.s(str, "cloudInsertMessage: " + contentValues);
        try {
            SQLiteDatabase writableDatabase = this.mImDBHelper.getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                long insert = writableDatabase.insert("message", null, contentValues);
                if (insert != -1) {
                    Log.i(str, "cloudInsertMessage: rowId=" + insert);
                    setTransactionSuccessful(writableDatabase);
                } else {
                    Log.e(str, "cloudInsertMessage: SQL exception while inserting a message.");
                }
                endTransaction(writableDatabase);
                return ContentUris.withAppendedId(uri, insert);
            } catch (Throwable th) {
                endTransaction(writableDatabase);
                throw th;
            }
        } catch (SQLiteDiskIOException e) {
            Log.e(LOG_TAG, "SQLiteDiskIOException : " + e);
            return null;
        }
    }

    public int cloudUpdateMessage(String str, ContentValues contentValues) {
        Log.i(LOG_TAG, "updateCloudMessage");
        int i = 0;
        try {
            SQLiteDatabase writableDatabase = this.mImDBHelper.getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                try {
                    i = writableDatabase.update("message", contentValues, "_id = ?", new String[]{String.valueOf(str)});
                    setTransactionSuccessful(writableDatabase);
                } catch (SQLException e) {
                    Log.e(LOG_TAG, "SQL exception while updating a message. " + e);
                }
                return i;
            } finally {
                endTransaction(writableDatabase);
            }
        } catch (SQLiteDiskIOException e2) {
            Log.e(LOG_TAG, "SQLiteDiskIOException : " + e2);
            return 0;
        }
    }

    public int cloudUpdateSession(String str, ContentValues contentValues) {
        Log.i(LOG_TAG, "updateCloudSession");
        int i = 0;
        try {
            SQLiteDatabase writableDatabase = this.mImDBHelper.getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                try {
                    i = writableDatabase.update(ImDBHelper.SESSION_TABLE, contentValues, "chat_id=?", new String[]{str});
                    setTransactionSuccessful(writableDatabase);
                } catch (SQLException e) {
                    Log.e(LOG_TAG, "SQL exception while updating a message. " + e);
                }
                return i;
            } finally {
                endTransaction(writableDatabase);
            }
        } catch (SQLiteDiskIOException e2) {
            Log.e(LOG_TAG, "SQLiteDiskIOException : " + e2.toString());
            return 0;
        }
    }

    public Uri cloudInsertNotification(Uri uri, ContentValues contentValues) {
        try {
            SQLiteDatabase writableDatabase = this.mImDBHelper.getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                long insert = writableDatabase.insert("notification", null, contentValues);
                if (insert != -1) {
                    setTransactionSuccessful(writableDatabase);
                } else {
                    Log.e(LOG_TAG, "cloudInsertNotification: SQL exception while inserting a notification.");
                }
                endTransaction(writableDatabase);
                return ContentUris.withAppendedId(uri, insert);
            } catch (Throwable th) {
                endTransaction(writableDatabase);
                throw th;
            }
        } catch (SQLiteDiskIOException e) {
            Log.e(LOG_TAG, "SQLiteDiskIOException : " + e.toString());
            return null;
        }
    }

    public int cloudUpdateNotification(String str, ContentValues contentValues, String str2, String[] strArr) {
        Log.i(LOG_TAG, "cloudUpdateNotification imdnId: " + str);
        int i = 0;
        try {
            SQLiteDatabase writableDatabase = this.mImDBHelper.getWritableDatabase();
            writableDatabase.beginTransaction();
            try {
                try {
                    i = writableDatabase.update("notification", contentValues, str2, strArr);
                    setTransactionSuccessful(writableDatabase);
                } catch (SQLException e) {
                    Log.e(LOG_TAG, "SQL exception while updating a message. " + e);
                }
                return i;
            } finally {
                endTransaction(writableDatabase);
            }
        } catch (SQLiteDiskIOException e2) {
            Log.e(LOG_TAG, "SQLiteDiskIOException : " + e2);
            return 0;
        }
    }

    public void updateDesiredNotificationStatusAsDisplayed(Collection<String> collection, int i, long j) {
        IMSLog.s(LOG_TAG, "updateDesiredNotificationStatusAsDisplayed: messages=" + collection + " status=" + i + " displayTime=" + j);
        String str = "_id in (" + TextUtils.join(", ", collection) + ")";
        ContentValues contentValues = new ContentValues();
        contentValues.put(ImContract.Message.DISPOSITION_NOTIFICATION_STATUS, Integer.valueOf(i));
        contentValues.put(ImContract.Message.DISPLAYED_TIMESTAMP, Long.valueOf(j));
        update("message", contentValues, str);
        String str2 = "_id in (" + TextUtils.join(", ", collection) + ") AND IFNULL(status, 4) != " + ImConstants.Status.FAILED.getId();
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("status", Integer.valueOf(ImConstants.Status.READ.getId()));
        update("message", contentValues2, str2);
    }

    private void clearDeletedParticipants() {
        StringBuilder sb = new StringBuilder();
        sb.append("status in (");
        ImParticipant.Status status = ImParticipant.Status.DECLINED;
        sb.append(status.getId());
        sb.append(", ");
        sb.append(ImParticipant.Status.FAILED.getId());
        sb.append(")");
        String sb2 = sb.toString();
        if (this.mImModule.getRcsStrategy() != null && !this.mImModule.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.REMOVE_FAILED_PARTICIPANT_GROUPCHAT)) {
            sb2 = "status = " + status.getId();
        }
        delete("participant", sb2);
    }

    void closeDB() {
        try {
            Log.i(LOG_TAG, "closeDB()");
            this.mImDBHelper.close();
        } catch (IllegalStateException e) {
            e.printStackTrace();
        }
    }

    public void updateChat(ChatData chatData, ImCacheAction imCacheAction) {
        if (imCacheAction == ImCacheAction.INSERTED) {
            insertSession(chatData);
        } else if (imCacheAction == ImCacheAction.UPDATED) {
            onSessionUpdated(chatData);
        } else if (imCacheAction == ImCacheAction.DELETED) {
            deleteSession(chatData);
        }
    }

    public void updateMessage(MessageBase messageBase, ImCacheAction imCacheAction) {
        if (imCacheAction == ImCacheAction.INSERTED) {
            insertMessage(messageBase);
            if (messageBase.getDirection() == ImDirection.OUTGOING) {
                insertMessageNotification(messageBase);
            }
            List<ImImdnRecRoute> imdnRecRouteList = messageBase.getImdnRecRouteList();
            if (imdnRecRouteList == null || imdnRecRouteList.isEmpty()) {
                return;
            }
            insertImdnRecRoute(imdnRecRouteList, messageBase.getId());
            return;
        }
        if (imCacheAction == ImCacheAction.UPDATED) {
            onMessageUpdated(messageBase);
            if (messageBase.getDirection() == ImDirection.OUTGOING) {
                onMessageNotificationUpdated(messageBase);
            }
        }
    }

    public void updateParticipant(ImParticipant imParticipant, ImCacheAction imCacheAction) {
        if (imCacheAction == ImCacheAction.INSERTED) {
            insertParticipant(imParticipant);
        } else if (imCacheAction == ImCacheAction.DELETED) {
            deleteParticipant(imParticipant);
        } else if (imCacheAction == ImCacheAction.UPDATED) {
            onParticipantUpdated(imParticipant);
        }
    }

    public void updateMessage(Collection<MessageBase> collection, ImCacheAction imCacheAction) {
        Iterator<MessageBase> it = collection.iterator();
        while (it.hasNext()) {
            updateMessage(it.next(), imCacheAction);
        }
    }

    public void updateParticipant(Collection<ImParticipant> collection, ImCacheAction imCacheAction) {
        if (imCacheAction == ImCacheAction.INSERTED) {
            insertParticipant(collection);
        } else if (imCacheAction == ImCacheAction.DELETED) {
            deleteParticipant(collection);
        } else if (imCacheAction == ImCacheAction.UPDATED) {
            onParticipantUpdated(collection);
        }
    }

    private static class WhereClauseArgs {
        private final String[] mWhereArgs;
        private final String mWhereClause;

        WhereClauseArgs(String str, String[] strArr) {
            this.mWhereClause = str;
            this.mWhereArgs = strArr;
        }

        WhereClauseArgs(String str) {
            this(str, null);
        }

        String getWhereClause() {
            return this.mWhereClause;
        }

        String[] getWhereArgs() {
            return this.mWhereArgs;
        }
    }
}
