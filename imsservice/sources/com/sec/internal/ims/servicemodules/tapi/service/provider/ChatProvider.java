package com.sec.internal.ims.servicemodules.tapi.service.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.gsma.services.rcs.RcsService;
import com.gsma.services.rcs.chat.ChatLog;
import com.gsma.services.rcs.chat.GroupChat;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.cmstore.CmsJsonConstants;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.ims.servicemodules.csh.event.ICshConstants;
import com.sec.internal.ims.servicemodules.gls.GlsXmlParser;
import com.sec.internal.ims.servicemodules.im.ImCache;
import com.sec.internal.ims.servicemodules.im.ImSession;
import com.sec.internal.ims.servicemodules.tapi.service.api.ChatServiceImpl;
import java.util.Arrays;
import java.util.Collection;

/* loaded from: classes.dex */
public class ChatProvider extends ContentProvider {
    private static final int CHATS = 1;
    private static final int CHATS_ID = 6;
    private static final String[] CHAT_COLUMS;
    private static final int CHAT_ID = 2;
    private static final String LOG_TAG = ChatProvider.class.getSimpleName();
    private static final int MESSAGES = 3;
    private static final int MESSAGES_CONTACTID = 5;
    private static final String[] MESSAGE_COLUNMS;
    private static final int MESSAGE_ID = 4;
    private static final String PROVIDER_NAME;
    private static final UriMatcher uriMatcher;
    private ImCache mCache;

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    static {
        String authority = ChatLog.GroupChat.CONTENT_URI.getAuthority();
        PROVIDER_NAME = authority;
        UriMatcher uriMatcher2 = new UriMatcher(-1);
        uriMatcher = uriMatcher2;
        uriMatcher2.addURI(authority, "groupchat", 1);
        uriMatcher2.addURI(authority, "groupchat/#", 2);
        uriMatcher2.addURI(authority, "groupchat/*", 6);
        uriMatcher2.addURI(authority, "chatmessage", 3);
        uriMatcher2.addURI(authority, "chatmessage/#", 4);
        uriMatcher2.addURI(authority, "chatmessage/*", 5);
        CHAT_COLUMS = new String[]{"_id", "chat_id", "state", "subject", "direction", "timestamp", "reason_code", CmsJsonConstants.PARTICIPANTS, ICshConstants.ShareDatabase.KEY_TARGET_CONTACT};
        MESSAGE_COLUNMS = new String[]{"_id", "chat_id", ICshConstants.ShareDatabase.KEY_TARGET_CONTACT, "msg_id", "mime_type", "content", "status", CloudMessageProviderContract.BufferDBMMSpdu.READ_STATUS, "direction", "timestamp", "timestamp_sent", "timestamp_delivered", "timestamp_displayed", "reason_code", "expired_delivery"};
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.mCache = ImCache.getInstance();
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        String str3 = LOG_TAG;
        Log.d(str3, "query " + uri);
        if (this.mCache.isLoaded()) {
            switch (uriMatcher.match(uri)) {
            }
            return null;
        }
        Log.e(str3, "ImCache is not ready yet.");
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }

    private Cursor buildChatCursor(Uri uri) {
        MatrixCursor matrixCursor = new MatrixCursor(CHAT_COLUMS);
        try {
            String lastPathSegment = uri.getLastPathSegment();
            if (lastPathSegment == null) {
                return matrixCursor;
            }
            synchronized (this.mCache) {
                ImSession imSession = this.mCache.getImSession(lastPathSegment);
                if (imSession != null && imSession.isGroupChat()) {
                    fillChatCursor(imSession, matrixCursor);
                    return matrixCursor;
                }
                Log.e(LOG_TAG, "buildChatCursor: Session not found " + lastPathSegment);
                return matrixCursor;
            }
        } catch (Exception unused) {
            Log.e(LOG_TAG, "Cannot build chat cursor");
            matrixCursor.close();
            return null;
        }
    }

    private Cursor buildChatCursor() {
        MatrixCursor matrixCursor = new MatrixCursor(CHAT_COLUMS);
        try {
            synchronized (this.mCache) {
                Collection<ImSession> allImSessions = this.mCache.getAllImSessions();
                if (allImSessions == null) {
                    return matrixCursor;
                }
                for (ImSession imSession : allImSessions) {
                    if (imSession.isGroupChat()) {
                        fillChatCursor(imSession, matrixCursor);
                    }
                }
                return matrixCursor;
            }
        } catch (Exception unused) {
            Log.e(LOG_TAG, "Cannot build chat cursor");
            matrixCursor.close();
            return null;
        }
    }

    private void fillChatCursor(ImSession imSession, MatrixCursor matrixCursor) {
        int ordinal = GroupChat.State.INITIATING.ordinal();
        int chatStateId = imSession.getChatStateId();
        if (ChatData.State.ACTIVE.getId() == chatStateId) {
            ordinal = GroupChat.State.STARTED.ordinal();
        } else if (ChatData.State.CLOSED_BY_USER.getId() == chatStateId) {
            ordinal = GroupChat.State.ABORTED.ordinal();
        }
        matrixCursor.newRow().add(Long.valueOf(imSession.getId())).add(imSession.getChatId()).add(Integer.valueOf(ordinal)).add(imSession.getSubject()).add(Integer.valueOf(imSession.getDirection().getId())).add(null).add(null).add(null);
    }

    private Cursor buildMessagesCursor(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        String str3;
        if (strArr == null) {
            strArr = MESSAGE_COLUNMS;
        }
        String[] strArr3 = strArr;
        if (uri != null) {
            String lastPathSegment = uri.getLastPathSegment();
            if (lastPathSegment == null) {
                Log.e(LOG_TAG, "buildMessageCursor: No last segment.");
                return null;
            }
            str3 = lastPathSegment;
        } else {
            str3 = null;
        }
        return fillMessageCursor(str3, strArr3, str, strArr2, str2);
    }

    private MatrixCursor fillMessageCursor(String str, String[] strArr, String str2, String[] strArr2, String str3) {
        String str4 = str2;
        String str5 = LOG_TAG;
        Log.d(str5, "fillMessageCursor idString: " + str + ", projection: " + Arrays.toString(strArr) + ", selection: " + str4 + ", selectionArgs: " + Arrays.toString(strArr2) + ", sortOrder: " + str3);
        if (str4 != null && str4.contains(MIMEContentType.PLAIN_TEXT)) {
            str4 = str4.replace(MIMEContentType.PLAIN_TEXT, "text/plain' OR mime_type ='text/plain;charset=UTF-8");
        }
        if (str != null) {
            str4 = TextUtils.isEmpty(str4) ? "msg_id = " + str : "(" + str4 + ") AND msg_id = " + str;
        }
        Cursor queryChatMessagesForTapi = this.mCache.queryChatMessagesForTapi(strArr, str4, strArr2, str3);
        String str6 = null;
        try {
            if (queryChatMessagesForTapi == null) {
                Log.e(str5, "buildMessageCursor: Message not found.");
                if (queryChatMessagesForTapi != null) {
                    queryChatMessagesForTapi.close();
                }
                return null;
            }
            String[] columnNames = queryChatMessagesForTapi.getColumnNames();
            MatrixCursor matrixCursor = new MatrixCursor(columnNames);
            while (queryChatMessagesForTapi.moveToNext()) {
                MatrixCursor.RowBuilder newRow = matrixCursor.newRow();
                String str7 = str6;
                for (String str8 : columnNames) {
                    int columnIndex = queryChatMessagesForTapi.getColumnIndex(str8);
                    if ("status".equals(str8)) {
                        ChatLog.Message.Content.Status status = ChatLog.Message.Content.Status.DISPLAY_REPORT_REQUESTED;
                        ChatLog.Message.Content.Status translateStatus = ChatServiceImpl.translateStatus(ImConstants.Status.values()[queryChatMessagesForTapi.getInt(columnIndex)]);
                        int columnIndex2 = queryChatMessagesForTapi.getColumnIndex("timestamp_displayed");
                        int columnIndex3 = queryChatMessagesForTapi.getColumnIndex("timestamp_delivered");
                        if (translateStatus == ChatLog.Message.Content.Status.SENT && queryChatMessagesForTapi.getInt(columnIndex2) > 0) {
                            translateStatus = ChatLog.Message.Content.Status.DISPLAYED;
                        } else if (translateStatus == ChatLog.Message.Content.Status.SENT && queryChatMessagesForTapi.getInt(columnIndex3) > 0) {
                            translateStatus = ChatLog.Message.Content.Status.DELIVERED;
                        }
                        newRow.add(Integer.valueOf(translateStatus.ordinal()));
                    } else if ("reason_code".equals(str8)) {
                        newRow.add(Integer.valueOf(ChatLog.Message.Content.ReasonCode.UNSPECIFIED.ordinal()));
                    } else if (CloudMessageProviderContract.BufferDBMMSpdu.READ_STATUS.equals(str8)) {
                        if (ImConstants.Status.READ == ImConstants.Status.values()[queryChatMessagesForTapi.getInt(columnIndex)]) {
                            newRow.add(Integer.valueOf(RcsService.ReadStatus.READ.ordinal()));
                        } else {
                            newRow.add(Integer.valueOf(RcsService.ReadStatus.UNREAD.ordinal()));
                        }
                    } else if ("mime_type".equals(str8)) {
                        str7 = queryChatMessagesForTapi.getString(columnIndex);
                        if (str7 != null && str7.contains(MIMEContentType.PLAIN_TEXT)) {
                            newRow.add(MIMEContentType.PLAIN_TEXT);
                        } else if (str7 != null && str7.contains("application/geoloc")) {
                            newRow.add("application/geoloc");
                        } else if (str7 != null && str7.contains("rcs/groupchat-event")) {
                            newRow.add("rcs/groupchat-event");
                        } else {
                            newRow.add(str7);
                        }
                    } else {
                        int i = 1;
                        if ("expired_delivery".equals(str8)) {
                            if (queryChatMessagesForTapi.getLong(columnIndex) <= 0) {
                                i = 0;
                            }
                            newRow.add(Integer.valueOf(i));
                        } else if ("content".equals(str8) && str7 != null && str7.contains("rcspushlocation")) {
                            String string = queryChatMessagesForTapi.getString(columnIndex);
                            try {
                                string = new GlsXmlParser().getGeolocString(string);
                            } catch (Exception e) {
                                Log.e(LOG_TAG, "parse error: " + e.getMessage() + ", Geo location body : " + string);
                            }
                            newRow.add(string);
                            str6 = null;
                        } else {
                            int type = queryChatMessagesForTapi.getType(columnIndex);
                            if (type == 1) {
                                str6 = null;
                                newRow.add(Long.valueOf(queryChatMessagesForTapi.getLong(columnIndex)));
                            } else if (type == 2) {
                                str6 = null;
                                newRow.add(Float.valueOf(queryChatMessagesForTapi.getFloat(columnIndex)));
                            } else if (type == 3) {
                                str6 = null;
                                newRow.add(queryChatMessagesForTapi.getString(columnIndex));
                            } else if (type == 4) {
                                str6 = null;
                                newRow.add(queryChatMessagesForTapi.getBlob(columnIndex));
                            } else {
                                str6 = null;
                                newRow.add(null);
                            }
                        }
                    }
                }
            }
            matrixCursor.setNotificationUri(getContext().getContentResolver(), ChatLog.Message.CONTENT_URI);
            queryChatMessagesForTapi.close();
            return matrixCursor;
        } finally {
        }
    }
}
