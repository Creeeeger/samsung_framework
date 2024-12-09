package com.sec.internal.ims.servicemodules.im;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImContract;
import com.sec.internal.constants.ims.servicemodules.im.ImParticipant;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.RcsConfigurationHelper;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimUtil$$ExternalSyntheticLambda0;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.Set;

/* loaded from: classes.dex */
public class ImProvider extends ContentProvider {
    private static final String[] AUTO_ACCEPT_FT;
    private static final String[] BOT_USER_AGENT_SETTING;
    private static final String[] CHAT_COLUMNS;
    private static final String[] FILE_TRANSFER_COLUMNS;
    private static final String LOG_TAG = ImProvider.class.getSimpleName();
    private static final String[] MESSAGE_COLUMNS;
    private static final String[] MESSAGE_NOTIFICATIONS_COLUMNS;
    private static final String[] PARTICIPANT_COLUMNS;
    private static final String PROVIDER_NAME = "com.samsung.rcs.im";
    private static final UriMatcher sUriMatcher;
    private final ImCache mCache = ImCache.getInstance();

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        sUriMatcher = uriMatcher;
        CHAT_COLUMNS = new String[]{"_id", "chat_id", "sim_imsi", "is_group_chat", ImContract.ImSession.IS_FT_GROUP_CHAT, "status", "subject", ImContract.ImSession.IS_MUTED, ImContract.ImSession.MAX_PARTICIPANTS_COUNT, ImContract.ImSession.IMDN_NOTIFICATIONS_AVAILABILITY, ImContract.ImSession.PREFERRED_URI, ImContract.ImSession.OWN_PHONE_NUMBER, ImContract.ImSession.IS_CHATBOT_ROLE, "conversation_id", "contribution_id", "session_uri"};
        MESSAGE_COLUMNS = new String[]{"_id", ImContract.ChatItem.IS_FILE_TRANSFER, "direction", "chat_id", "remote_uri", ImContract.ChatItem.USER_ALIAS, "content_type", ImContract.ChatItem.INSERTED_TIMESTAMP, "body", ImContract.Message.NOTIFICATION_DISPOSITION_MASK, "notification_status", ImContract.Message.SENT_TIMESTAMP, ImContract.ChatItem.DELIVERED_TIMESTAMP, ImContract.Message.DISPLAYED_TIMESTAMP, "message_type", "status", ImContract.Message.NOT_DISPLAYED_COUNTER, "imdn_message_id", "maap_traffic_type", ImContract.Message.MESSAGING_TECH, "sim_imsi", ImContract.CsSession.FILE_PATH, ImContract.CsSession.FILE_SIZE, "state", "reason", ImContract.CsSession.BYTES_TRANSFERRED, ImContract.CsSession.STATUS, ImContract.CsSession.THUMBNAIL_PATH, ImContract.CsSession.IS_RESUMABLE, ImContract.ChatItem.EXT_INFO};
        FILE_TRANSFER_COLUMNS = new String[]{"_id", "chat_id", "remote_uri", ImContract.ChatItem.USER_ALIAS, ImContract.CsSession.FILE_PATH, ImContract.CsSession.FILE_SIZE, "state", "reason", "direction", "message_type AS type", ImContract.ChatItem.INSERTED_TIMESTAMP, ImContract.CsSession.BYTES_TRANSFERRED, "content_type", ImContract.CsSession.STATUS, ImContract.CsSession.THUMBNAIL_PATH, ImContract.CsSession.IS_RESUMABLE, ImContract.ChatItem.DELIVERED_TIMESTAMP, "file_disposition", "playing_length", ImContract.ChatItem.EXT_INFO, "imdn_message_id", ImContract.Message.SENT_TIMESTAMP, ImContract.Message.MESSAGING_TECH, "sim_imsi"};
        PARTICIPANT_COLUMNS = new String[]{"_id", "chat_id", "status", "type", "uri", "alias"};
        MESSAGE_NOTIFICATIONS_COLUMNS = new String[]{"id", "imdn_id", ImContract.MessageNotification.SENDER_URI, "status", "timestamp"};
        AUTO_ACCEPT_FT = new String[]{"_id", ImContract.AutoAcceptFt.SETTING_VALUE};
        BOT_USER_AGENT_SETTING = new String[]{ImContract.BotUserAgent.BOT_USER_AGENT};
        uriMatcher.addURI("com.samsung.rcs.im", "message/*", 1);
        uriMatcher.addURI("com.samsung.rcs.im", "messagescount/*", 2);
        uriMatcher.addURI("com.samsung.rcs.im", "chats", 3);
        uriMatcher.addURI("com.samsung.rcs.im", "enrichedchats", 13);
        uriMatcher.addURI("com.samsung.rcs.im", "chat/*", 4);
        uriMatcher.addURI("com.samsung.rcs.im", "participants/*", 5);
        uriMatcher.addURI("com.samsung.rcs.im", "unreadmessages/*", 6);
        uriMatcher.addURI("com.samsung.rcs.im", "unreadmessagescount", 7);
        uriMatcher.addURI("com.samsung.rcs.im", "unreadmessagescount", 7);
        uriMatcher.addURI("com.samsung.rcs.im", "unreadmessagescount", 7);
        uriMatcher.addURI("com.samsung.rcs.im", "unreadmessagescount/*", 8);
        uriMatcher.addURI("com.samsung.rcs.im", "filetransfers/*", 9);
        uriMatcher.addURI("com.samsung.rcs.im", "filetransfer/*", 10);
        uriMatcher.addURI("com.samsung.rcs.im", "messageswithft/*", 11);
        uriMatcher.addURI("com.samsung.rcs.im", "autoacceptft", 12);
        uriMatcher.addURI("com.samsung.rcs.im", "messageswithftcount/*", 16);
        uriMatcher.addURI("com.samsung.rcs.im", "settings", 14);
        uriMatcher.addURI("com.samsung.rcs.im", "messagenotifications/*", 15);
        uriMatcher.addURI("com.samsung.rcs.im", "chatidsbycontenttype/*", 17);
        uriMatcher.addURI("com.samsung.rcs.im", ImDBHelper.SESSION_TABLE, 18);
        uriMatcher.addURI("com.samsung.rcs.im", "message", 19);
        uriMatcher.addURI("com.samsung.rcs.im", "participant", 20);
        uriMatcher.addURI("com.samsung.rcs.im", "clouddeletemessage/#", 23);
        uriMatcher.addURI("com.samsung.rcs.im", "clouddeleteparticipant/#", 26);
        uriMatcher.addURI("com.samsung.rcs.im", "cloudinsertmessage", 21);
        uriMatcher.addURI("com.samsung.rcs.im", "cloudinsertparticipant", 24);
        uriMatcher.addURI("com.samsung.rcs.im", "cloudupdatemessage/#", 22);
        uriMatcher.addURI("com.samsung.rcs.im", "cloudupdateparticipant/#", 25);
        uriMatcher.addURI("com.samsung.rcs.im", "cloudquerymessagerowid/#", 27);
        uriMatcher.addURI("com.samsung.rcs.im", "cloudquerymessagechatid/*", 28);
        uriMatcher.addURI("com.samsung.rcs.im", "cloudquerymessageimdnid/*", 38);
        uriMatcher.addURI("com.samsung.rcs.im", "cloudqueryparticipant/*", 29);
        uriMatcher.addURI("com.samsung.rcs.im", "cloudquerysessionid/#", 32);
        uriMatcher.addURI("com.samsung.rcs.im", "cloudquerysessionchatid/*", 31);
        uriMatcher.addURI("com.samsung.rcs.im", "cloudinsertsession", 30);
        uriMatcher.addURI("com.samsung.rcs.im", "cloudinsertnotification", 39);
        uriMatcher.addURI("com.samsung.rcs.im", "cloudupdatenotification/*", 40);
        uriMatcher.addURI("com.samsung.rcs.im", "cloudupdatesession/*", 36);
        uriMatcher.addURI("com.samsung.rcs.im", "getreliableimage/*", 35);
        uriMatcher.addURI("com.samsung.rcs.im", "botsetting", 37);
        uriMatcher.addURI("com.samsung.rcs.im", "cloudmakenewsystemusermessage", 41);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        String str2 = LOG_TAG;
        IMSLog.s(str2, "delete " + uri);
        if (!this.mCache.isLoaded()) {
            Log.e(str2, "ImCache is not ready yet.");
            return 0;
        }
        int match = sUriMatcher.match(uri);
        if (match == 23) {
            IMSLog.s(str2, "CLOUD_DELETE_MESSAGE " + uri);
            return this.mCache.cloudDeleteMessage(uri.getLastPathSegment());
        }
        if (match != 26) {
            return 0;
        }
        IMSLog.s(str2, "CLOUD_DELETE_PARTICIPANT " + uri);
        return this.mCache.cloudDeleteParticipant(uri.getLastPathSegment());
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        String str = LOG_TAG;
        IMSLog.s(str, "insert " + uri);
        if (!this.mCache.isLoaded()) {
            Log.e(str, "ImCache is not ready yet.");
            return null;
        }
        int match = sUriMatcher.match(uri);
        if (match == 21) {
            IMSLog.s(str, "CLOUD_INSERT_MESSAGE " + uri);
            return this.mCache.cloudInsertMessage(uri, contentValues);
        }
        if (match == 24) {
            IMSLog.s(str, "CLOUD_INSERT_PARTICIPANT " + uri);
            return this.mCache.cloudInsertParticipant(uri, contentValues);
        }
        if (match == 39) {
            IMSLog.s(str, "BUFFERDB_INSERT_NOTIFICATION " + uri);
            return this.mCache.cloudInsertNotification(uri, contentValues);
        }
        if (match != 41) {
            return null;
        }
        IMSLog.s(str, "MAKE_NEW_SYSTEM_USER_MESSAGE " + uri);
        this.mCache.cloudMakeNewSystemUserMessage(contentValues);
        return null;
    }

    @Override // android.content.ContentProvider
    public int bulkInsert(Uri uri, ContentValues[] contentValuesArr) {
        String str = LOG_TAG;
        IMSLog.s(str, "bulkInsert " + uri);
        if (!this.mCache.isLoaded()) {
            Log.e(str, "ImCache is not ready yet.");
            return 0;
        }
        if (sUriMatcher.match(uri) != 30) {
            return 0;
        }
        IMSLog.s(str, "BUFFERDB_INSERT_SESSION " + uri);
        if (contentValuesArr == null || contentValuesArr.length < 1) {
            Log.i(str, "BUFFERDB_INSERT_SESSION: no values inserted");
            return 0;
        }
        return this.mCache.cloudsearchAndInsertSession(uri, contentValuesArr[0], (ContentValues[]) Arrays.copyOfRange(contentValuesArr, 1, contentValuesArr.length));
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        String str3 = LOG_TAG;
        IMSLog.s(str3, "query " + uri);
        if (!this.mCache.isLoaded() || RcsPolicyManager.getRcsStrategy(SimUtil.getSimSlotPriority()) == null) {
            Log.e(str3, "ImCache is not ready yet or NoSimCard");
            return null;
        }
        int match = sUriMatcher.match(uri);
        if (match == 1) {
            return buildMessageCursor(uri, MESSAGE_COLUMNS);
        }
        if (match == 10) {
            return buildMessageCursor(uri, FILE_TRANSFER_COLUMNS);
        }
        if (match == 12) {
            return buildAutoAcceptFtCursor(uri);
        }
        if (match == 15) {
            return buildMessageNotificationsCursor(uri);
        }
        if (match == 4) {
            return buildChatCursor(uri);
        }
        if (match == 5) {
            return buildParticipantCursor(uri);
        }
        if (match == 31) {
            IMSLog.s(str3, "BUFFERDB_QUERY_SESSION_CHATID " + uri);
            return buildSessionCursorForChatId(uri);
        }
        if (match == 32) {
            IMSLog.s(str3, "BUFFERDB_QUERY_SESSION_ID " + uri);
            return buildSessionCursorForSessionRowId(uri);
        }
        if (match == 37) {
            IMSLog.s(str3, "BOT_SETTING");
            return buildBotUserAgentCursor();
        }
        if (match != 38) {
            switch (match) {
                case 18:
                    IMSLog.s(str3, "all_session query " + uri);
                    return this.mCache.querySessions(strArr, str, strArr2, str2);
                case 19:
                    IMSLog.s(str3, "all_message query " + uri);
                    return this.mCache.queryMessages(strArr, str, strArr2, str2);
                case 20:
                    IMSLog.s(str3, "all_participant query " + uri);
                    return this.mCache.queryParticipants(strArr, str, strArr2, str2);
                default:
                    switch (match) {
                        case 27:
                            IMSLog.s(str3, "BUFFERDB_QUERY_MESSAGE_ROWID: " + uri);
                            return buildIMFTCursorForBufferDBRowId(uri);
                        case 28:
                            IMSLog.s(str3, "BUFFERDB_QUERY_MESSAGE_CHATID: " + uri);
                            return buildIMFTCursorForBufferDBChatId(uri);
                        case 29:
                            IMSLog.s(str3, "BUFFERDB_QUERY_PARTICIPANT: " + uri);
                            return buildParticipantCursorForBufferDB(uri);
                        default:
                            return null;
                    }
            }
        }
        IMSLog.s(str3, "BUFFERDB_QUERY_MESSAGE_IMDNID: " + uri);
        return buildIMFTCursorForBufferDBImdnId(uri);
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        String str2 = LOG_TAG;
        IMSLog.s(str2, "update " + uri);
        String lastPathSegment = uri.getLastPathSegment();
        if (!this.mCache.isLoaded()) {
            Log.e(str2, "ImCache is not ready yet.");
            return 0;
        }
        int match = sUriMatcher.match(uri);
        if (match == 22) {
            IMSLog.s(str2, "CLOUD_UPDATE_MESSAGE " + uri);
            return this.mCache.cloudUpdateMessage(lastPathSegment, contentValues);
        }
        if (match == 25) {
            IMSLog.s(str2, "CLOUD_UPDATE_PARTICIPANT " + uri);
            return this.mCache.cloudUpdateParticipant(lastPathSegment, contentValues);
        }
        if (match == 36) {
            IMSLog.s(str2, "CLOUD_UPDATE_SESSION " + uri);
            return this.mCache.cloudUpdateSession(lastPathSegment, contentValues);
        }
        if (match != 40) {
            return 0;
        }
        IMSLog.s(str2, "BUFFERDB_UPDATE_NOTIFICATION " + uri);
        return this.mCache.cloudupdateNotification(lastPathSegment, contentValues, str, strArr);
    }

    private Cursor buildMessageCursor(Uri uri, String[] strArr) {
        Cursor queryMessages = this.mCache.queryMessages(strArr, "imdn_message_id= ?", new String[]{uri.getLastPathSegment()}, null);
        if (queryMessages == null || queryMessages.getCount() != 0) {
            return queryMessages;
        }
        Log.e(LOG_TAG, "buildMessageCursor: Message not found.");
        queryMessages.close();
        return null;
    }

    private Cursor buildChatCursor(Uri uri) {
        MatrixCursor matrixCursor = new MatrixCursor(CHAT_COLUMNS);
        String lastPathSegment = uri.getLastPathSegment();
        synchronized (this.mCache) {
            ImSession imSession = this.mCache.getImSession(lastPathSegment);
            if (imSession == null) {
                Log.e(LOG_TAG, "buildChatCursor: Session not found " + lastPathSegment);
                return matrixCursor;
            }
            matrixCursor.newRow().add(Long.valueOf(imSession.getId())).add(imSession.getChatId()).add(imSession.getOwnImsi()).add(Long.valueOf(imSession.isGroupChat() ? 1L : 0L)).add(1L).add(Long.valueOf(imSession.getChatStateId())).add(imSession.getSubject()).add(Long.valueOf(imSession.isMuted() ? 1L : 0L)).add(Long.valueOf(imSession.getMaxParticipantsCount())).add(1L).add(imSession.getOwnPhoneNum()).add(Long.valueOf(imSession.isChatbotRole() ? 1L : 0L)).add(imSession.getConversationId()).add(imSession.getContributionId()).add(imSession.getSessionUri());
            return matrixCursor;
        }
    }

    private Cursor buildIMFTCursorForBufferDBChatId(Uri uri) {
        String str = LOG_TAG;
        IMSLog.s(str, "buildIMFTCursorForBufferDB: " + uri);
        Cursor queryMessages = this.mCache.queryMessages(null, "chat_id= ? ", new String[]{uri.getLastPathSegment()}, null);
        if (queryMessages != null && queryMessages.getCount() == 0) {
            Log.e(str, "buildMessageCursor: Message not found.");
        }
        return queryMessages;
    }

    private Cursor buildIMFTCursorForBufferDBRowId(Uri uri) {
        String str = LOG_TAG;
        IMSLog.s(str, "buildIMFTCursorForBufferDB: " + uri);
        Cursor queryMessages = this.mCache.queryMessages(null, "_id= ? ", new String[]{uri.getLastPathSegment()}, null);
        if (queryMessages != null && queryMessages.getCount() == 0) {
            Log.e(str, "buildMessageCursor: Message not found.");
        }
        return queryMessages;
    }

    private Cursor buildIMFTCursorForBufferDBImdnId(Uri uri) {
        String str = LOG_TAG;
        IMSLog.s(str, "buildIMFTCursorForBufferDBImdnId: " + uri.toString());
        Cursor queryMessages = this.mCache.queryMessages(null, "imdn_message_id=? ", new String[]{uri.getLastPathSegment()}, null);
        if (queryMessages != null && queryMessages.getCount() == 0) {
            Log.e(str, "buildMessageCursor: Message not found.");
        }
        return queryMessages;
    }

    private Cursor buildSessionCursorForSessionRowId(Uri uri) {
        String str = LOG_TAG;
        IMSLog.s(str, "buildSessionCursorForSessionRowId: " + uri);
        Cursor querySessions = this.mCache.querySessions(null, "_id= ? ", new String[]{uri.getLastPathSegment()}, null);
        if (querySessions != null && querySessions.getCount() == 0) {
            Log.e(str, "buildMessageCursor: Message not found.");
        }
        return querySessions;
    }

    private Cursor buildSessionCursorForChatId(Uri uri) {
        String str = LOG_TAG;
        IMSLog.s(str, "buildSessionCursorForchatId: " + uri);
        Cursor querySessions = this.mCache.querySessions(null, "chat_id= ? ", new String[]{uri.getLastPathSegment()}, null);
        if (querySessions != null && querySessions.getCount() == 0) {
            Log.e(str, "buildMessageCursor: Message not found.");
        }
        return querySessions;
    }

    private Cursor buildParticipantCursorForBufferDB(Uri uri) {
        String str = LOG_TAG;
        IMSLog.s(str, "buildParticipantCursorForBufferDB: " + uri);
        Cursor queryParticipants = this.mCache.queryParticipants(PARTICIPANT_COLUMNS, "chat_id= ? ", new String[]{uri.getLastPathSegment()}, null);
        if (queryParticipants != null && queryParticipants.getCount() == 0) {
            Log.e(str, "buildParticipantCursorForBufferDB: Message not found.");
        }
        return queryParticipants;
    }

    private Cursor buildParticipantCursor(Uri uri) {
        MatrixCursor matrixCursor = new MatrixCursor(PARTICIPANT_COLUMNS);
        try {
            Set<ImParticipant> participants = this.mCache.getParticipants(uri.getLastPathSegment());
            synchronized (this.mCache) {
                if (participants == null) {
                    Log.e(LOG_TAG, "buildParticipantCursor: Participant not found.");
                    return matrixCursor;
                }
                IMSLog.s(LOG_TAG, "buildParticipantCursor: build a cursor for " + participants);
                for (ImParticipant imParticipant : participants) {
                    matrixCursor.newRow().add(Long.valueOf(imParticipant.getId())).add(imParticipant.getChatId()).add(Long.valueOf(imParticipant.getStatus().getId())).add(Long.valueOf(imParticipant.getType().getId())).add(imParticipant.getUri().toString()).add(imParticipant.getUserAlias());
                }
                return matrixCursor;
            }
        } catch (Exception unused) {
            matrixCursor.close();
            return null;
        }
    }

    private Cursor buildMessageNotificationsCursor(Uri uri) {
        MatrixCursor matrixCursor = new MatrixCursor(MESSAGE_NOTIFICATIONS_COLUMNS);
        String lastPathSegment = uri.getLastPathSegment();
        String str = LOG_TAG;
        IMSLog.s(str, "imdn_id : " + lastPathSegment);
        Cursor queryMessageNotification = this.mCache.queryMessageNotification(null, "imdn_id= ? ", new String[]{lastPathSegment}, null);
        try {
            if (queryMessageNotification == null) {
                Log.e(str, "buildMessageNotificationsCursor: Message not found.");
                matrixCursor.close();
                if (queryMessageNotification != null) {
                    queryMessageNotification.close();
                }
                return null;
            }
            if (queryMessageNotification.getCount() == 0) {
                Log.e(str, "buildMessageNotificationsCursor: Message not found.");
                queryMessageNotification.close();
                return matrixCursor;
            }
            while (queryMessageNotification.moveToNext()) {
                matrixCursor.newRow().add(Long.valueOf(queryMessageNotification.getLong(queryMessageNotification.getColumnIndexOrThrow("id")))).add(queryMessageNotification.getString(queryMessageNotification.getColumnIndexOrThrow("imdn_id"))).add(queryMessageNotification.getString(queryMessageNotification.getColumnIndexOrThrow(ImContract.MessageNotification.SENDER_URI))).add(queryMessageNotification.getString(queryMessageNotification.getColumnIndexOrThrow("status"))).add(queryMessageNotification.getString(queryMessageNotification.getColumnIndexOrThrow("timestamp")));
            }
            queryMessageNotification.close();
            return matrixCursor;
        } catch (Throwable th) {
            if (queryMessageNotification != null) {
                try {
                    queryMessageNotification.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private Cursor buildAutoAcceptFtCursor(Uri uri) {
        int simSlotFromUri = UriUtil.getSimSlotFromUri(uri);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            long longValue = RcsConfigurationHelper.readLongParam(getContext(), ImsUtil.getPathWithPhoneId(ConfigConstants.ConfigTable.IM_FT_AUT_ACCEPT, simSlotFromUri), 0L).longValue();
            Binder.restoreCallingIdentity(clearCallingIdentity);
            String str = (String) Optional.ofNullable(SimManagerFactory.getSimManagerFromSimSlot(simSlotFromUri)).map(new SimUtil$$ExternalSyntheticLambda0()).orElse("");
            if (longValue > 0 && str.equals("GenericIR92_US:CSpire")) {
                longValue = 2;
            }
            if (!RcsUtils.DualRcs.isDualRcsSettings()) {
                simSlotFromUri = SimUtil.getSimSlotPriority();
            }
            int ftAutAccept = ImUserPreference.getInstance().getFtAutAccept(getContext(), simSlotFromUri);
            if (ftAutAccept >= 0) {
                Log.i(LOG_TAG, "buildAutoAcceptFtCursor: override with user setting - " + ftAutAccept);
                longValue = (long) ftAutAccept;
            }
            MatrixCursor matrixCursor = new MatrixCursor(AUTO_ACCEPT_FT);
            matrixCursor.newRow().add(0L).add(Long.valueOf(longValue));
            return matrixCursor;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    @Override // android.content.ContentProvider
    public void shutdown() {
        this.mCache.closeDB();
    }

    private Cursor buildBotUserAgentCursor() {
        String str = ConfigConstants.BUILD.TERMINAL_MODEL;
        String str2 = ConfigConstants.BUILD.TERMINAL_SW_VERSION;
        ISimManager simManager = SimManagerFactory.getSimManager();
        if (simManager == null) {
            Log.e(LOG_TAG, "getUserAgent: ISimManager is null, return");
            return null;
        }
        String string = ImsRegistry.getString(simManager.getSimSlotIndex(), GlobalSettingsConstants.RCS.RCS_CLIENT_VERSION, "6.0");
        Mno simMno = simManager.getSimMno();
        if (Mno.TMOBILE.equals(simMno) || Mno.SFR.equals(simMno) || Mno.TMOBILE_CZ.equals(simMno)) {
            if (str2.length() > 8) {
                str2 = str2.substring(str2.length() - 8);
            }
        } else if (str2.length() > 3) {
            str2 = str2.substring(str2.length() - 3);
        }
        if (!simMno.isEur()) {
            return null;
        }
        String format = String.format(ConfigConstants.TEMPLATE.USER_AGENT, str, str2, string);
        MatrixCursor matrixCursor = new MatrixCursor(BOT_USER_AGENT_SETTING);
        matrixCursor.newRow().add(format);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        List<String> pathSegments = uri.getPathSegments();
        if (sUriMatcher.match(uri) != 35 || pathSegments.size() < 1) {
            return null;
        }
        File file = new File(getContext().getFilesDir().getAbsolutePath() + "/rcsreliable_d/" + pathSegments.get(pathSegments.size() - 1));
        if (!file.exists()) {
            return null;
        }
        ParcelFileDescriptor open = ParcelFileDescriptor.open(file, LogClass.SIM_EVENT);
        file.setLastModified(System.currentTimeMillis());
        IMSLog.s(LOG_TAG, "get RELIABLE_IMAGE " + uri);
        return open;
    }
}
