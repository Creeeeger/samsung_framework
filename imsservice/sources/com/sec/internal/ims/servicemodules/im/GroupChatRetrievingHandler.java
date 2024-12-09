package com.sec.internal.ims.servicemodules.im;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ChatMode;
import com.sec.internal.constants.ims.servicemodules.im.ImConferenceParticipantInfo;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.event.ImIncomingGroupChatListEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionConferenceInfoUpdateEvent;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class GroupChatRetrievingHandler extends Handler {
    private static final int EVENT_GROUP_INFO_NOTIFICATION = 2;
    private static final int EVENT_GROUP_LIST_NOTIFICATION = 1;
    private static final int EVENT_SUBSCRIBE_NEXT_GROUP_CHAT_INFO = 3;
    private static final String LOG_TAG = ImModule.class.getSimpleName();
    private final Context mContext;
    private final HashMap<Uri, ImIncomingGroupChatListEvent.Entry> mGroupChatMap;
    private final ImCache mImCache;
    private final IImServiceInterface mImService;
    private final ImTranslation mImTranslation;
    private final String mOwnImsi;
    private final String mOwnPhoneNumber;
    private final ArrayList<Uri> mPendingGroupChatUri;

    public GroupChatRetrievingHandler(Looper looper, Context context, ImCache imCache, ImTranslation imTranslation, IImServiceInterface iImServiceInterface, String str, String str2) {
        super(looper);
        this.mGroupChatMap = new HashMap<>();
        this.mPendingGroupChatUri = new ArrayList<>();
        this.mContext = context;
        this.mImCache = imCache;
        this.mImTranslation = imTranslation;
        this.mImService = iImServiceInterface;
        this.mOwnPhoneNumber = str;
        this.mOwnImsi = str2;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        int i = message.what;
        if (i == 1) {
            handleGroupListNotification((ImIncomingGroupChatListEvent) ((AsyncResult) message.obj).result);
        } else if (i == 2) {
            handleGroupInfoNotification((ImSessionConferenceInfoUpdateEvent) ((AsyncResult) message.obj).result);
        } else {
            if (i != 3) {
                return;
            }
            subscribeNextGroupChatInfo();
        }
    }

    public void startToRetrieveGroupChatList() {
        if (this.mOwnPhoneNumber == null) {
            Log.e(LOG_TAG, " can not retrieve the group chat list because own number is null");
            return;
        }
        SharedPreferences sharedPreferences = this.mContext.getSharedPreferences("grouplist_setting_" + this.mOwnPhoneNumber, 0);
        int i = sharedPreferences.getInt("version", 0);
        boolean z = sharedPreferences.getBoolean("increaseMode", false);
        if (i != 0) {
            Log.e(LOG_TAG, " startToRetrieveGroupChatList() version:" + i);
            return;
        }
        this.mGroupChatMap.clear();
        this.mPendingGroupChatUri.clear();
        this.mImService.registerForGroupChatListUpdate(this, 1, null);
        this.mImService.registerForGroupChatInfoUpdate(this, 2, null);
        this.mImService.subscribeGroupChatList(i, z, this.mOwnImsi);
    }

    private void handleGroupListNotification(ImIncomingGroupChatListEvent imIncomingGroupChatListEvent) {
        if (this.mOwnImsi.equals(imIncomingGroupChatListEvent.mOwnImsi)) {
            int i = imIncomingGroupChatListEvent.version;
            List<ImIncomingGroupChatListEvent.Entry> list = imIncomingGroupChatListEvent.entryList;
            if (list != null) {
                for (ImIncomingGroupChatListEvent.Entry entry : list) {
                    Uri uri = entry.sessionUri;
                    if (uri != null) {
                        this.mPendingGroupChatUri.add(uri);
                        this.mGroupChatMap.put(entry.sessionUri, entry);
                    }
                }
                SharedPreferences.Editor edit = this.mContext.getSharedPreferences("grouplist_setting_" + this.mOwnPhoneNumber, 0).edit();
                edit.putInt("version", i);
                edit.apply();
                sendEmptyMessage(3);
            }
        }
    }

    private void handleGroupInfoNotification(ImSessionConferenceInfoUpdateEvent imSessionConferenceInfoUpdateEvent) {
        if (this.mOwnImsi.equals(imSessionConferenceInfoUpdateEvent.mOwnImsi)) {
            String str = LOG_TAG;
            Log.i(str, "handleGroupInfoNotification() start, uri:" + imSessionConferenceInfoUpdateEvent.mChatId);
            Uri parse = Uri.parse(imSessionConferenceInfoUpdateEvent.mChatId);
            if (!this.mPendingGroupChatUri.contains(parse)) {
                Log.e(str, "handleGroupInfoNotification() fail, can not find that group chat in pending list");
                return;
            }
            ImIncomingGroupChatListEvent.Entry entry = this.mGroupChatMap.get(parse);
            if (entry == null) {
                Log.e(str, "handleGroupInfoNotification() fail, can not find that group chat in map");
                return;
            }
            this.mImCache.removeImCacheActionListener(this.mImTranslation);
            ImSession imSessionByConversationId = this.mImCache.getImSessionByConversationId(this.mOwnImsi, entry.pConvID, true);
            if (imSessionByConversationId == null) {
                HashSet hashSet = new HashSet();
                Iterator<ImConferenceParticipantInfo> it = imSessionConferenceInfoUpdateEvent.mParticipantsInfo.iterator();
                while (it.hasNext()) {
                    hashSet.add(it.next().mUri);
                }
                imSessionByConversationId = this.mImCache.makeNewEmptySession(imSessionConferenceInfoUpdateEvent.mOwnImsi, hashSet, ChatData.ChatType.REGULAR_GROUP_CHAT, ImDirection.OUTGOING, ChatMode.OFF);
                ChatData chatData = imSessionByConversationId.getChatData();
                chatData.setConversationId(entry.pConvID);
                chatData.setSessionUri(ImsUri.parse(entry.sessionUri.toString()));
                chatData.updateSubject(entry.subject);
                chatData.updateSubjectData(imSessionConferenceInfoUpdateEvent.mSubjectData);
                chatData.updateState(ChatData.State.CLOSED_BY_USER);
            }
            imSessionByConversationId.onConferenceInfoUpdated(new ImSessionConferenceInfoUpdateEvent(imSessionByConversationId.getChatId(), imSessionConferenceInfoUpdateEvent.mConferenceInfoType, imSessionConferenceInfoUpdateEvent.mParticipantsInfo, imSessionConferenceInfoUpdateEvent.mMaxUserCount, imSessionConferenceInfoUpdateEvent.mSubjectData, imSessionConferenceInfoUpdateEvent.mRawHandle, imSessionConferenceInfoUpdateEvent.mOwnImsi, imSessionConferenceInfoUpdateEvent.mIconData, imSessionConferenceInfoUpdateEvent.mTimeStamp));
            this.mImCache.addImCacheActionListener(this.mImTranslation);
            this.mPendingGroupChatUri.remove(parse);
            sendEmptyMessage(3);
        }
    }

    private void subscribeNextGroupChatInfo() {
        if (this.mPendingGroupChatUri.isEmpty()) {
            Log.i(LOG_TAG, "subscribeNextGroupChatInfo() finish, list is empty");
            this.mPendingGroupChatUri.clear();
            this.mGroupChatMap.clear();
            this.mImService.unRegisterForGroupChatListUpdate(this);
            this.mImService.unRegisterForGroupChatInfoUpdate(this);
            return;
        }
        this.mImService.subscribeGroupChatInfo(this.mPendingGroupChatUri.get(0), this.mOwnImsi);
    }
}
