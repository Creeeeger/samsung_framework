package com.sec.internal.ims.core.handler.secims;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.google.flatbuffers.FlatBufferBuilder;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.MaapNamespace;
import com.sec.internal.constants.ims.servicemodules.im.RcsNamespace;
import com.sec.internal.constants.ims.servicemodules.im.params.AcceptFtSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.AcceptImSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.AddParticipantsParams;
import com.sec.internal.constants.ims.servicemodules.im.params.ChangeGroupAliasParams;
import com.sec.internal.constants.ims.servicemodules.im.params.ChangeGroupChatIconParams;
import com.sec.internal.constants.ims.servicemodules.im.params.ChangeGroupChatLeaderParams;
import com.sec.internal.constants.ims.servicemodules.im.params.ChangeGroupChatSubjectParams;
import com.sec.internal.constants.ims.servicemodules.im.params.ChatbotAnonymizeParams;
import com.sec.internal.constants.ims.servicemodules.im.params.GroupChatInfoParams;
import com.sec.internal.constants.ims.servicemodules.im.params.GroupChatListParams;
import com.sec.internal.constants.ims.servicemodules.im.params.ImSendComposingParams;
import com.sec.internal.constants.ims.servicemodules.im.params.RejectFtSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.RejectImSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.RemoveParticipantsParams;
import com.sec.internal.constants.ims.servicemodules.im.params.ReportChatbotAsSpamParams;
import com.sec.internal.constants.ims.servicemodules.im.params.SendFtSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.SendImdnParams;
import com.sec.internal.constants.ims.servicemodules.im.params.SendMessageParams;
import com.sec.internal.constants.ims.servicemodules.im.params.SendMessageRevokeParams;
import com.sec.internal.constants.ims.servicemodules.im.params.SendReportMsgParams;
import com.sec.internal.constants.ims.servicemodules.im.params.StartImSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.StopImSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.reason.FtRejectReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionStopReason;
import com.sec.internal.constants.ims.servicemodules.im.result.FtResult;
import com.sec.internal.constants.ims.servicemodules.im.result.RejectImSessionResult;
import com.sec.internal.constants.ims.servicemodules.im.result.Result;
import com.sec.internal.constants.ims.servicemodules.im.result.SendMessageResult;
import com.sec.internal.constants.ims.servicemodules.im.result.StartImSessionResult;
import com.sec.internal.constants.ims.servicemodules.im.result.StopImSessionResult;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.Iso8601;
import com.sec.internal.helper.Registrant;
import com.sec.internal.helper.RegistrantList;
import com.sec.internal.helper.translate.ContentTypeTranslator;
import com.sec.internal.ims.core.handler.ImHandler;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.BaseSessionData;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.CpimNamespace;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.CpimNamespace_.Pair;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.FtPayloadParam;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ImComposingStatus;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ImFileAttr;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ImMessageParam;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ImdnParams;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ReasonHdr;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ReportMessageHdr;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ReqMsg;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestAcceptFtSession;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestAcceptImSession;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestCancelFtSession;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestChatbotAnonymize;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestCloseImSession;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestGroupInfoSubscribe;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestGroupListSubscribe;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestImSetMoreInfoToSipUA;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestRejectImSession;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestReportChatbotAsSpam;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestSendImComposingStatus;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestSendImMessage;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestSendMessageRevokeRequest;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestStartFtSession;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestStartMedia;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateParticipants;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.WarningHdr;
import com.sec.internal.ims.settings.ServiceConstants;
import com.sec.internal.ims.translate.ResipTranslatorCollection;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.log.IMSLog;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

@SuppressLint({"UseSparseArrays"})
/* loaded from: classes.dex */
public class ResipImHandler extends ImHandler {
    protected final RegistrantList mChatbotAnonymizeNotifyRegistrants;
    protected final RegistrantList mChatbotAnonymizeResponseRegistrants;
    protected final RegistrantList mComposingRegistrants;
    protected final RegistrantList mConferenceInfoUpdateRegistrants;
    protected final Map<Integer, FtSession> mFtSessions;
    protected final RegistrantList mGroupChatInfoRegistrants;
    protected final RegistrantList mGroupChatListRegistrants;
    protected final RegistrantList mImdnFailedRegistrants;
    private ResipImdnHandler mImdnHandler;
    private IImsFramework mImsFramework;
    protected final RegistrantList mIncomingFileTransferRegistrants;
    protected final RegistrantList mIncomingMessageRegistrants;
    protected final RegistrantList mIncomingSessionRegistrants;
    protected final RegistrantList mMessageFailedRegistrants;
    protected final RegistrantList mMessageRevokeResponseRegistransts;
    protected final Map<String, FtSession> mPendingFtSessions;
    protected final Map<String, ImSession> mPendingSessions;
    protected final RegistrantList mReportChatbotAsSpamRespRegistrants;
    protected final RegistrantList mSendMessageRevokeResponseRegistransts;
    protected final RegistrantList mSessionClosedRegistrants;
    protected final RegistrantList mSessionEstablishedRegistrants;
    protected final Map<Integer, ImSession> mSessions;
    private ResipImResponseHandler mStackResponseHandler;
    protected final RegistrantList mTransferProgressRegistrants;

    private static String adjustFilePath(String str) {
        return str;
    }

    private String parseStr(String str) {
        return str != null ? str : "";
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void unregisterAllFileTransferProgress() {
    }

    protected static final class ImSession {
        protected Message mAcceptCallback;
        protected Map<String, Message> mAddParticipantsCallbacks;
        protected Map<String, Message> mChangeGCAliasCallbacks;
        protected Map<String, Message> mChangeGCIconCallbacks;
        protected Map<String, Message> mChangeGCLeaderCallbacks;
        protected Map<String, Message> mChangeGCSubjectCallbacks;
        protected String mChatId;
        protected Message mFirstMessageCallback;
        protected boolean mIsSnF;
        protected Message mRejectCallback;
        protected Map<String, Message> mRemoveParticipantsCallbacks;
        protected Map<String, Message> mSendMessageCallbacks;
        protected Integer mSessionHandle;
        protected Message mStartCallback;
        protected Message mStartProvisionalCallback;
        protected Message mStartSyncCallback;
        protected StopImSessionParams mStopParams;
        protected final int mUaHandle;

        protected ImSession(String str, Message message, Message message2, Message message3, boolean z, int i) {
            this.mChangeGCLeaderCallbacks = new HashMap();
            this.mChangeGCSubjectCallbacks = new HashMap();
            this.mChangeGCAliasCallbacks = new HashMap();
            this.mChangeGCIconCallbacks = new HashMap();
            this.mAddParticipantsCallbacks = new HashMap();
            this.mRemoveParticipantsCallbacks = new HashMap();
            this.mSendMessageCallbacks = new HashMap();
            this.mChatId = str;
            this.mStartCallback = message;
            this.mStartSyncCallback = message2;
            this.mStartProvisionalCallback = message3;
            this.mIsSnF = z;
            this.mUaHandle = i;
        }

        protected ImSession(int i, boolean z, int i2) {
            this(null, null, null, null, z, i2);
            this.mSessionHandle = Integer.valueOf(i);
        }

        protected Message findAndRemoveCallback(String str) {
            Message message = this.mSendMessageCallbacks.get(str);
            this.mSendMessageCallbacks.remove(str);
            return message;
        }
    }

    protected static final class FtSession {
        protected Message mAcceptCallback;
        protected RejectFtSessionParams mCancelParams;
        protected int mHandle;
        protected int mId = -1;
        protected Message mStartCallback;
        protected Message mStartSessionHandleCallback;
        protected int mUaHandle;

        protected FtSession() {
        }
    }

    public ResipImHandler(Looper looper, IImsFramework iImsFramework) {
        this(looper, iImsFramework, new ResipImdnHandler(looper, iImsFramework));
    }

    public ResipImHandler(Looper looper, IImsFramework iImsFramework, ResipImdnHandler resipImdnHandler) {
        super(looper);
        this.mFtSessions = new HashMap();
        this.mPendingFtSessions = new HashMap();
        this.mSessions = new HashMap();
        this.mPendingSessions = new HashMap();
        this.mSessionEstablishedRegistrants = new RegistrantList();
        this.mSessionClosedRegistrants = new RegistrantList();
        this.mIncomingSessionRegistrants = new RegistrantList();
        this.mIncomingFileTransferRegistrants = new RegistrantList();
        this.mIncomingMessageRegistrants = new RegistrantList();
        this.mComposingRegistrants = new RegistrantList();
        this.mConferenceInfoUpdateRegistrants = new RegistrantList();
        this.mMessageFailedRegistrants = new RegistrantList();
        this.mImdnFailedRegistrants = new RegistrantList();
        this.mTransferProgressRegistrants = new RegistrantList();
        this.mGroupChatListRegistrants = new RegistrantList();
        this.mGroupChatInfoRegistrants = new RegistrantList();
        this.mMessageRevokeResponseRegistransts = new RegistrantList();
        this.mSendMessageRevokeResponseRegistransts = new RegistrantList();
        this.mChatbotAnonymizeResponseRegistrants = new RegistrantList();
        this.mChatbotAnonymizeNotifyRegistrants = new RegistrantList();
        this.mReportChatbotAsSpamRespRegistrants = new RegistrantList();
        this.mImsFramework = iImsFramework;
        this.mStackResponseHandler = new ResipImResponseHandler(looper, this);
        this.mImdnHandler = resipImdnHandler;
        StackIF.getInstance().registerImHandler(this.mStackResponseHandler, 100, null);
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void startImSession(StartImSessionParams startImSessionParams) {
        sendMessage(obtainMessage(1, startImSessionParams));
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void acceptImSession(AcceptImSessionParams acceptImSessionParams) {
        sendMessage(obtainMessage(2, acceptImSessionParams));
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void stopImSession(StopImSessionParams stopImSessionParams) {
        sendMessage(obtainMessage(3, stopImSessionParams));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void rejectImSession(RejectImSessionParams rejectImSessionParams) {
        sendMessage(obtainMessage(17, rejectImSessionParams));
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void sendImMessage(SendMessageParams sendMessageParams) {
        sendMessage(obtainMessage(4, sendMessageParams));
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void acceptFtSession(AcceptFtSessionParams acceptFtSessionParams) {
        sendMessage(obtainMessage(5, acceptFtSessionParams));
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void rejectFtSession(RejectFtSessionParams rejectFtSessionParams) {
        sendMessage(obtainMessage(7, rejectFtSessionParams));
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void cancelFtSession(RejectFtSessionParams rejectFtSessionParams) {
        sendMessage(obtainMessage(6, rejectFtSessionParams));
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void sendFtSession(SendFtSessionParams sendFtSessionParams) {
        sendMessage(obtainMessage(8, sendFtSessionParams));
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void sendFtDeliveredNotification(SendImdnParams sendImdnParams) {
        sendMessage(obtainMessage(14, sendImdnParams));
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void sendFtDisplayedNotification(SendImdnParams sendImdnParams) {
        sendMessage(obtainMessage(14, sendImdnParams));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void removeImParticipants(RemoveParticipantsParams removeParticipantsParams) {
        sendMessage(obtainMessage(21, removeParticipantsParams));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void changeGroupChatLeader(ChangeGroupChatLeaderParams changeGroupChatLeaderParams) {
        sendMessage(obtainMessage(19, changeGroupChatLeaderParams));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void changeGroupChatSubject(ChangeGroupChatSubjectParams changeGroupChatSubjectParams) {
        sendMessage(obtainMessage(22, changeGroupChatSubjectParams));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void changeGroupChatIcon(ChangeGroupChatIconParams changeGroupChatIconParams) {
        sendMessage(obtainMessage(30, changeGroupChatIconParams));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void changeGroupAlias(ChangeGroupAliasParams changeGroupAliasParams) {
        sendMessage(obtainMessage(23, changeGroupAliasParams));
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void sendComposingNotification(ImSendComposingParams imSendComposingParams) {
        sendMessage(obtainMessage(9, imSendComposingParams));
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void sendDeliveredNotification(SendImdnParams sendImdnParams) {
        sendMessage(obtainMessage(10, sendImdnParams));
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void sendDisplayedNotification(SendImdnParams sendImdnParams) {
        sendMessage(obtainMessage(10, sendImdnParams));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void sendCanceledNotification(SendImdnParams sendImdnParams) {
        sendMessage(obtainMessage(10, sendImdnParams));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void sendMessageRevokeRequest(SendMessageRevokeParams sendMessageRevokeParams) {
        sendMessage(obtainMessage(28, sendMessageRevokeParams));
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void addImParticipants(AddParticipantsParams addParticipantsParams) {
        sendMessage(obtainMessage(12, addParticipantsParams));
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void extendToGroupChat(StartImSessionParams startImSessionParams) {
        sendMessage(obtainMessage(13, startImSessionParams));
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void registerForComposingNotification(Handler handler, int i, Object obj) {
        this.mComposingRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void unregisterForComposingNotification(Handler handler) {
        this.mComposingRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void registerForImdnNotification(Handler handler, int i, Object obj) {
        this.mImdnHandler.registerForImdnNotification(handler, i, obj);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void unregisterForImdnNotification(Handler handler) {
        this.mImdnHandler.unregisterForImdnNotification(handler);
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void registerForMessageFailed(Handler handler, int i, Object obj) {
        this.mMessageFailedRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void registerForImdnResponse(Handler handler, int i, Object obj) {
        this.mImdnHandler.registerForImdnResponse(handler, i, obj);
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void unregisterForImdnResponse(Handler handler) {
        this.mImdnHandler.unregisterForImdnResponse(handler);
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void unregisterForMessageFailed(Handler handler) {
        this.mMessageFailedRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void registerForImdnFailed(Handler handler, int i, Object obj) {
        this.mImdnFailedRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void unregisterForImdnFailed(Handler handler) {
        this.mImdnFailedRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void registerForConferenceInfoUpdate(Handler handler, int i, Object obj) {
        this.mConferenceInfoUpdateRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void unregisterForConferenceInfoUpdate(Handler handler) {
        this.mConferenceInfoUpdateRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void registerForImSessionEstablished(Handler handler, int i, Object obj) {
        this.mSessionEstablishedRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void unregisterForImSessionEstablished(Handler handler) {
        this.mSessionEstablishedRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void registerForImSessionClosed(Handler handler, int i, Object obj) {
        this.mSessionClosedRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void unregisterForImSessionClosed(Handler handler) {
        this.mSessionClosedRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void registerForImIncomingSession(Handler handler, int i, Object obj) {
        Log.i(this.LOG_TAG, "registerForImIncomingSession(): " + handler);
        this.mIncomingSessionRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void unregisterForImIncomingSession(Handler handler) {
        this.mIncomingSessionRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void registerForImIncomingFileTransfer(Handler handler, int i, Object obj) {
        this.mIncomingFileTransferRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void unregisterForImIncomingFileTransfer(Handler handler) {
        this.mIncomingFileTransferRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void registerForImIncomingMessage(Handler handler, int i, Object obj) {
        this.mIncomingMessageRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void unregisterForImIncomingMessage(Handler handler) {
        this.mIncomingMessageRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void registerForTransferProgress(Handler handler, int i, Object obj) {
        this.mTransferProgressRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void unregisterForTransferProgress(Handler handler) {
        this.mTransferProgressRegistrants.remove(handler);
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void setFtMessageId(Object obj, int i) {
        Integer num = (Integer) obj;
        Log.i(this.LOG_TAG, "setFtMessageId():  sessionHandle = " + num + ", msgId:" + i);
        FtSession ftSession = this.mFtSessions.get(num);
        if (ftSession == null) {
            Log.i(this.LOG_TAG, "setFtMessageId(): no session in map, id = " + num);
            return;
        }
        ftSession.mId = i;
    }

    @Override // com.sec.internal.ims.core.handler.ImHandler, android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                handleStartImSessionRequest((StartImSessionParams) message.obj);
                break;
            case 2:
                handleAcceptImSessionRequest((AcceptImSessionParams) message.obj);
                break;
            case 3:
                handleCloseImSessionRequest((StopImSessionParams) message.obj);
                break;
            case 4:
                handleSendMessageRequest((SendMessageParams) message.obj);
                break;
            case 5:
                handleAcceptFtSessionRequest((AcceptFtSessionParams) message.obj);
                break;
            case 6:
                handleCancelFtSessionRequest((RejectFtSessionParams) message.obj);
                break;
            case 7:
                handleRejectFtSessionRequest((RejectFtSessionParams) message.obj);
                break;
            case 8:
                handleStartFtSessionRequest((SendFtSessionParams) message.obj);
                break;
            case 9:
                handleSendComposingNotification((ImSendComposingParams) message.obj);
                break;
            case 10:
                handleSendDispositionNotification((SendImdnParams) message.obj);
                break;
            case 11:
            case 15:
            case 26:
            case 27:
            default:
                Log.e(this.LOG_TAG, "handleMessage: Undefined message.");
                break;
            case 12:
                handleAddParticipantsRequest((AddParticipantsParams) message.obj);
                break;
            case 13:
                handleStartImSessionRequest((StartImSessionParams) message.obj);
                break;
            case 14:
                handleSendFtDispositionNotification((SendImdnParams) message.obj);
                break;
            case 16:
                break;
            case 17:
                handleRejectImSessionRequest((RejectImSessionParams) message.obj);
                break;
            case 18:
                handleStartFtMediaRequest(((Integer) message.obj).intValue());
                break;
            case 19:
                handleChangeGroupChatLeaderRequest((ChangeGroupChatLeaderParams) message.obj);
                break;
            case 20:
                handleRejectImSessionRequest((RejectImSessionParams) message.obj);
                break;
            case 21:
                handleRemoveParticipantsRequest((RemoveParticipantsParams) message.obj);
                break;
            case 22:
                handleChangeGroupChatSubjectRequest((ChangeGroupChatSubjectParams) message.obj);
                break;
            case 23:
                handleChangeGroupChatAliasRequest((ChangeGroupAliasParams) message.obj);
                break;
            case 24:
                onSubscribeGroupChatList((GroupChatListParams) message.obj);
                break;
            case 25:
                onSubscribeGroupChatInfo((GroupChatInfoParams) message.obj);
                break;
            case 28:
                handleSendMessageRevokeRequest((SendMessageRevokeParams) message.obj);
                break;
            case 29:
                handleSetMoreInfoToSipUARequest((String) message.obj, message.arg1);
                break;
            case 30:
                handleChangeGroupChatIconRequest((ChangeGroupChatIconParams) message.obj);
                break;
            case 31:
                handleReportChatbotAsSpam((ReportChatbotAsSpamParams) message.obj);
                break;
            case 32:
                handleRequestChatbotAnonymize((ChatbotAnonymizeParams) message.obj);
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void handleStartImSessionRequest(com.sec.internal.constants.ims.servicemodules.im.params.StartImSessionParams r17) {
        /*
            Method dump skipped, instructions count: 1008
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.handler.secims.ResipImHandler.handleStartImSessionRequest(com.sec.internal.constants.ims.servicemodules.im.params.StartImSessionParams):void");
    }

    private void handleAcceptImSessionRequest(AcceptImSessionParams acceptImSessionParams) {
        IMSLog.s(this.LOG_TAG, "handleAcceptImSessionRequest(): params " + acceptImSessionParams);
        int intValue = ((Integer) acceptImSessionParams.mRawHandle).intValue();
        ImSession imSession = this.mSessions.get(Integer.valueOf(intValue));
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleAcceptImSessionRequest: no session in map, return accept failure");
            Message message = acceptImSessionParams.mCallback;
            if (message != null) {
                sendCallback(message, new StartImSessionResult(new Result(ImError.ENGINE_ERROR, Result.Type.ENGINE_ERROR), null, Integer.valueOf(intValue)));
                acceptImSessionParams.mCallback = null;
                return;
            }
            return;
        }
        imSession.mChatId = acceptImSessionParams.mChatId;
        imSession.mAcceptCallback = acceptImSessionParams.mCallback;
        imSession.mIsSnF = acceptImSessionParams.mIsSnF;
        UserAgent userAgent = getUserAgent(imSession.mUaHandle);
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "handleAcceptImSessionRequest(): UserAgent not found. UaHandle = " + imSession.mUaHandle);
            Message message2 = imSession.mAcceptCallback;
            if (message2 != null) {
                sendCallback(message2, new StartImSessionResult(new Result(ImError.ENGINE_ERROR, Result.Type.ENGINE_ERROR), null, Integer.valueOf(intValue)));
                imSession.mAcceptCallback = null;
                return;
            }
            return;
        }
        String parseStr = parseStr(acceptImSessionParams.mUserAlias);
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString(parseStr(parseStr));
        RequestAcceptImSession.startRequestAcceptImSession(flatBufferBuilder);
        RequestAcceptImSession.addSessionId(flatBufferBuilder, intValue);
        RequestAcceptImSession.addUserAlias(flatBufferBuilder, createString);
        int endRequestAcceptImSession = RequestAcceptImSession.endRequestAcceptImSession(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 502);
        Request.addReqType(flatBufferBuilder, (byte) 40);
        Request.addReq(flatBufferBuilder, endRequestAcceptImSession);
        sendRequestToStack(502, flatBufferBuilder, Request.endRequest(flatBufferBuilder), this.mStackResponseHandler.obtainMessage(2), userAgent);
    }

    protected void handleRejectImSessionRequest(RejectImSessionParams rejectImSessionParams) {
        Log.i(this.LOG_TAG, "handleRejectImSessionRequest: " + rejectImSessionParams);
        int intValue = ((Integer) rejectImSessionParams.mRawHandle).intValue();
        ImSession imSession = this.mSessions.get(Integer.valueOf(intValue));
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleRejectImSessionRequest: no session in map, return reject failure");
            Message message = rejectImSessionParams.mCallback;
            if (message != null) {
                sendCallback(message, new RejectImSessionResult(Integer.valueOf(intValue), ImError.ENGINE_ERROR));
                rejectImSessionParams.mCallback = null;
                return;
            }
            return;
        }
        imSession.mRejectCallback = rejectImSessionParams.mCallback;
        UserAgent userAgent = getUserAgent(imSession.mUaHandle);
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "handleRejectImSessionRequest: User Agent not found");
            Message message2 = rejectImSessionParams.mCallback;
            if (message2 != null) {
                sendCallback(message2, new RejectImSessionResult(Integer.valueOf(intValue), ImError.ENGINE_ERROR));
                rejectImSessionParams.mCallback = null;
                return;
            }
            return;
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString(parseStr(rejectImSessionParams.mSessionRejectReason.getWarningText()));
        WarningHdr.startWarningHdr(flatBufferBuilder);
        WarningHdr.addCode(flatBufferBuilder, rejectImSessionParams.mSessionRejectReason.getWarningCode());
        WarningHdr.addText(flatBufferBuilder, createString);
        int endWarningHdr = WarningHdr.endWarningHdr(flatBufferBuilder);
        RequestRejectImSession.startRequestRejectImSession(flatBufferBuilder);
        RequestRejectImSession.addSessionHandle(flatBufferBuilder, intValue);
        RequestRejectImSession.addSipCode(flatBufferBuilder, rejectImSessionParams.mSessionRejectReason.getSipCode());
        RequestRejectImSession.addWarningHdr(flatBufferBuilder, endWarningHdr);
        int endRequestRejectImSession = RequestRejectImSession.endRequestRejectImSession(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_REJECT_IM_SESSION);
        Request.addReqType(flatBufferBuilder, (byte) 51);
        Request.addReq(flatBufferBuilder, endRequestRejectImSession);
        sendRequestToStack(Id.REQUEST_REJECT_IM_SESSION, flatBufferBuilder, Request.endRequest(flatBufferBuilder), this.mStackResponseHandler.obtainMessage(17), userAgent);
    }

    private void handleCloseImSessionRequest(StopImSessionParams stopImSessionParams) {
        Log.i(this.LOG_TAG, "handleCloseImSessionRequest(): " + stopImSessionParams);
        ImSession imSession = this.mSessions.get(stopImSessionParams.mRawHandle);
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleCloseImSessionRequest(): unknown session!");
            Message message = stopImSessionParams.mCallback;
            if (message != null) {
                sendCallback(message, new StopImSessionResult(stopImSessionParams.mRawHandle, ImError.ENGINE_ERROR));
                stopImSessionParams.mCallback = null;
                return;
            }
            return;
        }
        imSession.mStopParams = stopImSessionParams;
        sendImCancelRequestToStack(imSession);
    }

    private void onSubscribeGroupChatList(GroupChatListParams groupChatListParams) {
        Log.i(this.LOG_TAG, "onSubscribeGroupChatList()");
        UserAgent userAgent = getUserAgent(groupChatListParams.getOwnImsi());
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "onSubscribeGroupChatList(): UserAgent not found.");
            return;
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString("SubscribeGroupChatList");
        RequestGroupListSubscribe.startRequestGroupListSubscribe(flatBufferBuilder);
        RequestGroupListSubscribe.addHandle(flatBufferBuilder, userAgent.getHandle());
        RequestGroupListSubscribe.addSubscriptionId(flatBufferBuilder, createString);
        RequestGroupListSubscribe.addVersion(flatBufferBuilder, groupChatListParams.getVersion());
        RequestGroupListSubscribe.addIsIncrease(flatBufferBuilder, groupChatListParams.getIncreaseMode());
        int endRequestGroupListSubscribe = RequestGroupListSubscribe.endRequestGroupListSubscribe(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_GROUP_LIST_SUBSCRIBE);
        Request.addReqType(flatBufferBuilder, (byte) 55);
        Request.addReq(flatBufferBuilder, endRequestGroupListSubscribe);
        sendRequestToStack(Id.REQUEST_GROUP_LIST_SUBSCRIBE, flatBufferBuilder, Request.endRequest(flatBufferBuilder), this.mStackResponseHandler.obtainMessage(24), userAgent);
    }

    private void onSubscribeGroupChatInfo(GroupChatInfoParams groupChatInfoParams) {
        Log.i(this.LOG_TAG, "onSubscribeGroupChatInfo() uri:" + groupChatInfoParams.getUri());
        UserAgent userAgent = getUserAgent(groupChatInfoParams.getOwnImsi());
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "onSubscribeGroupChatList(): UserAgent not found.");
            return;
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString("SubscribeGroupChatInfo" + groupChatInfoParams.getUri().toString());
        int createString2 = flatBufferBuilder.createString(parseStr(groupChatInfoParams.getUri().toString()));
        RequestGroupInfoSubscribe.startRequestGroupInfoSubscribe(flatBufferBuilder);
        RequestGroupInfoSubscribe.addHandle(flatBufferBuilder, (long) userAgent.getHandle());
        RequestGroupInfoSubscribe.addSubscriptionId(flatBufferBuilder, createString);
        RequestGroupInfoSubscribe.addUri(flatBufferBuilder, createString2);
        int endRequestGroupInfoSubscribe = RequestGroupInfoSubscribe.endRequestGroupInfoSubscribe(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_GROUP_INFO_SUBSCRIBE);
        Request.addReqType(flatBufferBuilder, (byte) 56);
        Request.addReq(flatBufferBuilder, endRequestGroupInfoSubscribe);
        sendRequestToStack(Id.REQUEST_GROUP_INFO_SUBSCRIBE, flatBufferBuilder, Request.endRequest(flatBufferBuilder), this.mStackResponseHandler.obtainMessage(25, null), userAgent);
    }

    private void sendImCancelRequestToStack(ImSession imSession) {
        StopImSessionParams stopImSessionParams = imSession.mStopParams;
        if (stopImSessionParams == null) {
            Log.e(this.LOG_TAG, "sendImCancelRequestToStack(): null stop params!");
            return;
        }
        UserAgent userAgent = getUserAgent(imSession.mUaHandle);
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "sendImCancelRequestToStack: UserAgent not found. UaHandle = " + imSession.mUaHandle);
            Message message = stopImSessionParams.mCallback;
            if (message != null) {
                sendCallback(message, new StopImSessionResult(stopImSessionParams.mRawHandle, ImError.ENGINE_ERROR));
                stopImSessionParams.mCallback = null;
                return;
            }
            return;
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        ImSessionStopReason imSessionStopReason = stopImSessionParams.mSessionStopReason;
        int createString = imSessionStopReason != null ? flatBufferBuilder.createString(parseStr(imSessionStopReason.getReasonText())) : -1;
        ReasonHdr.startReasonHdr(flatBufferBuilder);
        if (stopImSessionParams.mSessionStopReason != null) {
            ReasonHdr.addCode(flatBufferBuilder, r2.getCauseCode());
            ReasonHdr.addText(flatBufferBuilder, createString);
        }
        int endReasonHdr = ReasonHdr.endReasonHdr(flatBufferBuilder);
        RequestCloseImSession.startRequestCloseImSession(flatBufferBuilder);
        RequestCloseImSession.addSessionId(flatBufferBuilder, imSession.mSessionHandle.intValue());
        RequestCloseImSession.addReasonHdr(flatBufferBuilder, endReasonHdr);
        int endRequestCloseImSession = RequestCloseImSession.endRequestCloseImSession(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 503);
        Request.addReqType(flatBufferBuilder, (byte) 41);
        Request.addReq(flatBufferBuilder, endRequestCloseImSession);
        sendRequestToStack(503, flatBufferBuilder, Request.endRequest(flatBufferBuilder), this.mStackResponseHandler.obtainMessage(3, stopImSessionParams.mCallback), userAgent);
    }

    private void handleSendComposingNotification(ImSendComposingParams imSendComposingParams) {
        Log.i(this.LOG_TAG, "handleSendComposingNotification(): " + imSendComposingParams);
        ImSession imSession = this.mSessions.get(imSendComposingParams.mRawHandle);
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleSendComposingNotification(): invalid session handle!");
            return;
        }
        UserAgent userAgent = getUserAgent(imSession.mUaHandle);
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "handleSendComposingNotification(): user agent not found");
            return;
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString(MIMEContentType.PLAIN_TEXT);
        int createString2 = flatBufferBuilder.createString(parseStr(imSendComposingParams.mUserAlias));
        ImComposingStatus.startImComposingStatus(flatBufferBuilder);
        ImComposingStatus.addContentType(flatBufferBuilder, createString);
        ImComposingStatus.addInterval(flatBufferBuilder, imSendComposingParams.mInterval);
        ImComposingStatus.addIsActive(flatBufferBuilder, imSendComposingParams.mIsComposing);
        int endImComposingStatus = ImComposingStatus.endImComposingStatus(flatBufferBuilder);
        RequestSendImComposingStatus.startRequestSendImComposingStatus(flatBufferBuilder);
        RequestSendImComposingStatus.addSessionId(flatBufferBuilder, imSession.mSessionHandle.intValue());
        RequestSendImComposingStatus.addStatus(flatBufferBuilder, endImComposingStatus);
        RequestSendImComposingStatus.addUserAlias(flatBufferBuilder, createString2);
        int endRequestSendImComposingStatus = RequestSendImComposingStatus.endRequestSendImComposingStatus(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_IM_SEND_COMPOSING_STATUS);
        Request.addReqType(flatBufferBuilder, (byte) 44);
        Request.addReq(flatBufferBuilder, endRequestSendImComposingStatus);
        sendRequestToStack(Id.REQUEST_IM_SEND_COMPOSING_STATUS, flatBufferBuilder, Request.endRequest(flatBufferBuilder), this.mStackResponseHandler.obtainMessage(9), userAgent);
    }

    private void handleSendMessageRequest(SendMessageParams sendMessageParams) {
        int i;
        IMSLog.s(this.LOG_TAG, "handleSendMessageRequest(): " + sendMessageParams);
        ImSession imSession = this.mSessions.get(sendMessageParams.mRawHandle);
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleSendMessageRequest(): invalid session handle!");
            Message message = sendMessageParams.mCallback;
            if (message != null) {
                sendCallback(message, new SendMessageResult(sendMessageParams.mRawHandle, new Result(ImError.TRANSACTION_DOESNT_EXIST, Result.Type.ENGINE_ERROR)));
                return;
            }
            return;
        }
        imSession.mSendMessageCallbacks.put(sendMessageParams.mImdnMessageId, sendMessageParams.mCallback);
        UserAgent userAgent = getUserAgent(imSession.mUaHandle);
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "handleSendMessageRequest(): user agent not found");
            Message message2 = sendMessageParams.mCallback;
            if (message2 != null) {
                sendCallback(message2, new SendMessageResult(sendMessageParams.mRawHandle, new Result(ImError.ENGINE_ERROR, Result.Type.ENGINE_ERROR)));
                sendMessageParams.mCallback = null;
                return;
            }
            return;
        }
        if (!sendMessageParams.mContentType.toLowerCase(Locale.US).contains("charset=")) {
            Log.e(this.LOG_TAG, "handleSendMessageRequest(): missed charset, use utf8!");
            sendMessageParams.mContentType += ";charset=UTF-8";
        }
        int[] translateFwImdnNoti = ResipTranslatorCollection.translateFwImdnNoti(sendMessageParams.mDispositionNotification);
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createNotiVector = ImdnParams.createNotiVector(flatBufferBuilder, translateFwImdnNoti);
        int createString = flatBufferBuilder.createString(parseStr(sendMessageParams.mImdnMessageId));
        Date date = sendMessageParams.mImdnTime;
        int createString2 = flatBufferBuilder.createString(date != null ? Iso8601.formatMillis(date) : "");
        ImdnParams.startImdnParams(flatBufferBuilder);
        ImdnParams.addMessageId(flatBufferBuilder, createString);
        ImdnParams.addDatetime(flatBufferBuilder, createString2);
        ImdnParams.addNoti(flatBufferBuilder, createNotiVector);
        int endImdnParams = ImdnParams.endImdnParams(flatBufferBuilder);
        ArrayList arrayList = new ArrayList();
        if (sendMessageParams.mMaapTrafficType != null) {
            int createString3 = flatBufferBuilder.createString(MaapNamespace.NAME);
            int createString4 = flatBufferBuilder.createString(MaapNamespace.URI);
            int createString5 = flatBufferBuilder.createString("Traffic-Type");
            int createString6 = flatBufferBuilder.createString(sendMessageParams.mMaapTrafficType);
            Pair.startPair(flatBufferBuilder);
            Pair.addKey(flatBufferBuilder, createString5);
            Pair.addValue(flatBufferBuilder, createString6);
            int createHeadersVector = CpimNamespace.createHeadersVector(flatBufferBuilder, new int[]{Pair.endPair(flatBufferBuilder)});
            CpimNamespace.startCpimNamespace(flatBufferBuilder);
            CpimNamespace.addName(flatBufferBuilder, createString3);
            CpimNamespace.addUri(flatBufferBuilder, createString4);
            CpimNamespace.addHeaders(flatBufferBuilder, createHeadersVector);
            arrayList.add(Integer.valueOf(CpimNamespace.endCpimNamespace(flatBufferBuilder)));
        }
        if (sendMessageParams.mReferenceId != null || sendMessageParams.mReferenceType != null || sendMessageParams.mReferenceValue != null) {
            int createString7 = flatBufferBuilder.createString(RcsNamespace.KOR.NAME);
            int createString8 = flatBufferBuilder.createString(RcsNamespace.KOR.URI);
            int[] iArr = new int[0];
            if (sendMessageParams.mReferenceId != null) {
                int createString9 = flatBufferBuilder.createString(RcsNamespace.REFERENCE_ID_KEY);
                int createString10 = flatBufferBuilder.createString(sendMessageParams.mReferenceId);
                Pair.startPair(flatBufferBuilder);
                Pair.addKey(flatBufferBuilder, createString9);
                Pair.addValue(flatBufferBuilder, createString10);
                int endPair = Pair.endPair(flatBufferBuilder);
                iArr = Arrays.copyOf(iArr, 1);
                iArr[iArr.length - 1] = endPair;
            }
            if (sendMessageParams.mReferenceType != null) {
                int createString11 = flatBufferBuilder.createString(RcsNamespace.REFERENCE_TYPE_KEY);
                int createString12 = flatBufferBuilder.createString(sendMessageParams.mReferenceType);
                Pair.startPair(flatBufferBuilder);
                Pair.addKey(flatBufferBuilder, createString11);
                Pair.addValue(flatBufferBuilder, createString12);
                int endPair2 = Pair.endPair(flatBufferBuilder);
                iArr = Arrays.copyOf(iArr, iArr.length + 1);
                iArr[iArr.length - 1] = endPair2;
            }
            if (sendMessageParams.mReferenceValue != null) {
                int createString13 = flatBufferBuilder.createString(RcsNamespace.REFERENCE_VALUE_KEY);
                int createString14 = flatBufferBuilder.createString(sendMessageParams.mReferenceValue);
                Pair.startPair(flatBufferBuilder);
                Pair.addKey(flatBufferBuilder, createString13);
                Pair.addValue(flatBufferBuilder, createString14);
                int endPair3 = Pair.endPair(flatBufferBuilder);
                iArr = Arrays.copyOf(iArr, iArr.length + 1);
                iArr[iArr.length - 1] = endPair3;
            }
            int createHeadersVector2 = CpimNamespace.createHeadersVector(flatBufferBuilder, iArr);
            CpimNamespace.startCpimNamespace(flatBufferBuilder);
            CpimNamespace.addName(flatBufferBuilder, createString7);
            CpimNamespace.addUri(flatBufferBuilder, createString8);
            CpimNamespace.addHeaders(flatBufferBuilder, createHeadersVector2);
            arrayList.add(Integer.valueOf(CpimNamespace.endCpimNamespace(flatBufferBuilder)));
        }
        int i2 = -1;
        if (arrayList.size() > 0) {
            int size = arrayList.size();
            int[] iArr2 = new int[size];
            for (int i3 = 0; i3 < size; i3++) {
                iArr2[i3] = ((Integer) arrayList.get(i3)).intValue();
            }
            i = ImMessageParam.createCpimNamespacesVector(flatBufferBuilder, iArr2);
        } else {
            i = -1;
        }
        if (sendMessageParams.mGroupCcList != null) {
            Log.i(this.LOG_TAG, "handleSendMessageRequest, params.mGroupCcList=" + sendMessageParams.mGroupCcList);
            Set<ImsUri> set = sendMessageParams.mGroupCcList;
            i2 = ImMessageParam.createCcParticipantsVector(flatBufferBuilder, getImsUriOffsetArray(flatBufferBuilder, set, set.size()));
        }
        int createString15 = flatBufferBuilder.createString(parseStr(sendMessageParams.mBody));
        int createString16 = flatBufferBuilder.createString(parseStr(sendMessageParams.mContentType));
        int createString17 = flatBufferBuilder.createString(parseStr(sendMessageParams.mUserAlias));
        ImMessageParam.startImMessageParam(flatBufferBuilder);
        ImMessageParam.addBody(flatBufferBuilder, createString15);
        ImMessageParam.addUserAlias(flatBufferBuilder, createString17);
        ImMessageParam.addContentType(flatBufferBuilder, createString16);
        ImMessageParam.addImdn(flatBufferBuilder, endImdnParams);
        if (arrayList.size() > 0) {
            ImMessageParam.addCpimNamespaces(flatBufferBuilder, i);
        }
        if (sendMessageParams.mGroupCcList != null) {
            ImMessageParam.addCcParticipants(flatBufferBuilder, i2);
        }
        int endImMessageParam = ImMessageParam.endImMessageParam(flatBufferBuilder);
        BaseSessionData.startBaseSessionData(flatBufferBuilder);
        BaseSessionData.addSessionHandle(flatBufferBuilder, imSession.mSessionHandle.intValue());
        int endBaseSessionData = BaseSessionData.endBaseSessionData(flatBufferBuilder);
        RequestSendImMessage.startRequestSendImMessage(flatBufferBuilder);
        RequestSendImMessage.addSessionData(flatBufferBuilder, endBaseSessionData);
        RequestSendImMessage.addMessageParam(flatBufferBuilder, endImMessageParam);
        int endRequestSendImMessage = RequestSendImMessage.endRequestSendImMessage(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_IM_SENDMSG);
        Request.addReqType(flatBufferBuilder, (byte) 43);
        Request.addReq(flatBufferBuilder, endRequestSendImMessage);
        sendRequestToStack(Id.REQUEST_IM_SENDMSG, flatBufferBuilder, Request.endRequest(flatBufferBuilder), this.mStackResponseHandler.obtainMessage(4), userAgent);
    }

    private void handleSendDispositionNotification(SendImdnParams sendImdnParams) {
        Object obj = sendImdnParams.mRawHandle;
        ImSession imSession = obj != null ? this.mSessions.get(obj) : null;
        this.mImdnHandler.sendDispositionNotification(sendImdnParams, 1, imSession != null ? imSession.mSessionHandle.intValue() : -1);
    }

    private void handleSendFtDispositionNotification(SendImdnParams sendImdnParams) {
        this.mImdnHandler.sendDispositionNotification(sendImdnParams, 2, -1);
    }

    private void handleSendMessageRevokeRequest(SendMessageRevokeParams sendMessageRevokeParams) {
        IMSLog.s(this.LOG_TAG, "SendMessageRevokeRequest - " + sendMessageRevokeParams);
        if (sendMessageRevokeParams == null) {
            Log.e(this.LOG_TAG, "params are null, discarding");
            return;
        }
        if (TextUtils.isEmpty(sendMessageRevokeParams.mOwnImsi)) {
            Log.e(this.LOG_TAG, "mOwnImsi wrong value, discarding");
            return;
        }
        ImsUri imsUri = sendMessageRevokeParams.mUri;
        if (imsUri == null) {
            Log.e(this.LOG_TAG, "mUri is null, discarding");
            return;
        }
        String imsUri2 = imsUri.toString();
        if (TextUtils.isEmpty(imsUri2)) {
            Log.e(this.LOG_TAG, "uri is empty, discarding");
            return;
        }
        if (TextUtils.isEmpty(sendMessageRevokeParams.mConversationId)) {
            Log.e(this.LOG_TAG, "mConversationId wrong value, discarding");
            return;
        }
        if (TextUtils.isEmpty(sendMessageRevokeParams.mContributionId)) {
            Log.e(this.LOG_TAG, "mContributionId wrong value, discarding");
            return;
        }
        UserAgent userAgent = getUserAgent(sendMessageRevokeParams.mOwnImsi);
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "sendDispositionNotification(): UserAgent not found.");
            AsyncResult.forMessage(sendMessageRevokeParams.mCallback, ImError.ENGINE_ERROR, null);
            sendMessageRevokeParams.mCallback.sendToTarget();
            return;
        }
        int handle = userAgent.getHandle();
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString(sendMessageRevokeParams.mImdnId);
        int createString2 = flatBufferBuilder.createString(imsUri2);
        int createString3 = flatBufferBuilder.createString(sendMessageRevokeParams.mConversationId);
        int createString4 = flatBufferBuilder.createString(sendMessageRevokeParams.mContributionId);
        RequestSendMessageRevokeRequest.startRequestSendMessageRevokeRequest(flatBufferBuilder);
        RequestSendMessageRevokeRequest.addImdnMessageId(flatBufferBuilder, createString);
        RequestSendMessageRevokeRequest.addRegistrationHandle(flatBufferBuilder, handle);
        RequestSendMessageRevokeRequest.addService(flatBufferBuilder, 1);
        RequestSendMessageRevokeRequest.addUri(flatBufferBuilder, createString2);
        RequestSendMessageRevokeRequest.addConversationId(flatBufferBuilder, createString3);
        RequestSendMessageRevokeRequest.addContributionId(flatBufferBuilder, createString4);
        int endRequestSendMessageRevokeRequest = RequestSendMessageRevokeRequest.endRequestSendMessageRevokeRequest(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_SEND_MSG_REVOKE_REQUEST);
        Request.addReqType(flatBufferBuilder, ReqMsg.request_send_message_revoke_request);
        Request.addReq(flatBufferBuilder, endRequestSendMessageRevokeRequest);
        sendRequestToStack(Id.REQUEST_SEND_MSG_REVOKE_REQUEST, flatBufferBuilder, Request.endRequest(flatBufferBuilder), this.mStackResponseHandler.obtainMessage(28, sendMessageRevokeParams.mCallback), userAgent);
    }

    private void handleAddParticipantsRequest(AddParticipantsParams addParticipantsParams) {
        IMSLog.s(this.LOG_TAG, "handleAddParticipantsRequest: " + addParticipantsParams);
        ImSession imSession = this.mSessions.get(addParticipantsParams.mRawHandle);
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleAddParticipantsRequest: Session not exist.");
            Message message = addParticipantsParams.mCallback;
            if (message != null) {
                sendCallback(message, ImError.TRANSACTION_DOESNT_EXIST);
                return;
            }
            return;
        }
        Message message2 = addParticipantsParams.mCallback;
        if (message2 != null) {
            message2.obj = addParticipantsParams.mReceivers;
            imSession.mAddParticipantsCallbacks.put(addParticipantsParams.mReqKey, message2);
        }
        UserAgent userAgent = getUserAgent(imSession.mUaHandle);
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "handleAddParticipantsRequest: User agent not found.");
            Message message3 = addParticipantsParams.mCallback;
            if (message3 != null) {
                sendCallback(message3, ImError.ENGINE_ERROR);
                return;
            }
            return;
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int[] iArr = new int[addParticipantsParams.mReceivers.size()];
        Iterator<ImsUri> it = addParticipantsParams.mReceivers.iterator();
        int i = 0;
        while (it.hasNext()) {
            ImsUri next = it.next();
            int i2 = i + 1;
            iArr[i] = flatBufferBuilder.createString(next != null ? next.toString() : "");
            i = i2;
        }
        int createString = flatBufferBuilder.createString(parseStr(addParticipantsParams.mReqKey));
        int createString2 = flatBufferBuilder.createString(parseStr(addParticipantsParams.mSubject));
        int createReceiverVector = RequestUpdateParticipants.createReceiverVector(flatBufferBuilder, iArr);
        RequestUpdateParticipants.startRequestUpdateParticipants(flatBufferBuilder);
        RequestUpdateParticipants.addReceiver(flatBufferBuilder, createReceiverVector);
        RequestUpdateParticipants.addReqKey(flatBufferBuilder, createString);
        RequestUpdateParticipants.addSubject(flatBufferBuilder, createString2);
        RequestUpdateParticipants.addSessionHandle(flatBufferBuilder, imSession.mSessionHandle.intValue());
        RequestUpdateParticipants.addReqType(flatBufferBuilder, 0);
        int endRequestUpdateParticipants = RequestUpdateParticipants.endRequestUpdateParticipants(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_GC_UPDATE_PARTICIPANTS);
        Request.addReqType(flatBufferBuilder, (byte) 54);
        Request.addReq(flatBufferBuilder, endRequestUpdateParticipants);
        sendRequestToStack(Id.REQUEST_GC_UPDATE_PARTICIPANTS, flatBufferBuilder, Request.endRequest(flatBufferBuilder), this.mStackResponseHandler.obtainMessage(12), userAgent);
    }

    private void handleRemoveParticipantsRequest(RemoveParticipantsParams removeParticipantsParams) {
        IMSLog.s(this.LOG_TAG, "handleRemoveParticipantsRequest: " + removeParticipantsParams);
        ImSession imSession = this.mSessions.get(removeParticipantsParams.mRawHandle);
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleRemoveParticipantsRequest: Session not exist.");
            Message message = removeParticipantsParams.mCallback;
            if (message != null) {
                sendCallback(message, ImError.TRANSACTION_DOESNT_EXIST);
                return;
            }
            return;
        }
        Message message2 = removeParticipantsParams.mCallback;
        if (message2 != null) {
            message2.obj = removeParticipantsParams.mRemovedParticipants;
            imSession.mRemoveParticipantsCallbacks.put(removeParticipantsParams.mReqKey, message2);
        }
        UserAgent userAgent = getUserAgent(imSession.mUaHandle);
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "handleRemoveParticipantsRequest: User agent not found.");
            Message message3 = removeParticipantsParams.mCallback;
            if (message3 != null) {
                sendCallback(message3, ImError.ENGINE_ERROR);
                return;
            }
            return;
        }
        int i = 0;
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int[] iArr = new int[removeParticipantsParams.mRemovedParticipants.size()];
        Iterator<ImsUri> it = removeParticipantsParams.mRemovedParticipants.iterator();
        while (it.hasNext()) {
            ImsUri next = it.next();
            int i2 = i + 1;
            iArr[i] = flatBufferBuilder.createString(next != null ? next.toString() : "");
            i = i2;
        }
        String str = removeParticipantsParams.mReqKey;
        int createString = str != null ? flatBufferBuilder.createString(str) : -1;
        int createReceiverVector = RequestUpdateParticipants.createReceiverVector(flatBufferBuilder, iArr);
        RequestUpdateParticipants.startRequestUpdateParticipants(flatBufferBuilder);
        RequestUpdateParticipants.addReceiver(flatBufferBuilder, createReceiverVector);
        if (createString != -1) {
            RequestUpdateParticipants.addReqKey(flatBufferBuilder, createString);
        }
        RequestUpdateParticipants.addSessionHandle(flatBufferBuilder, imSession.mSessionHandle.intValue());
        RequestUpdateParticipants.addReqType(flatBufferBuilder, 1);
        int endRequestUpdateParticipants = RequestUpdateParticipants.endRequestUpdateParticipants(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_GC_UPDATE_PARTICIPANTS);
        Request.addReqType(flatBufferBuilder, (byte) 54);
        Request.addReq(flatBufferBuilder, endRequestUpdateParticipants);
        sendRequestToStack(Id.REQUEST_GC_UPDATE_PARTICIPANTS, flatBufferBuilder, Request.endRequest(flatBufferBuilder), this.mStackResponseHandler.obtainMessage(21), userAgent);
    }

    private void handleChangeGroupChatLeaderRequest(ChangeGroupChatLeaderParams changeGroupChatLeaderParams) {
        IMSLog.s(this.LOG_TAG, "handleChangeGroupChatLeaderRequest: " + changeGroupChatLeaderParams);
        ImSession imSession = this.mSessions.get(changeGroupChatLeaderParams.mRawHandle);
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleChangeGroupChatLeaderRequest: Session not exist.");
            Message message = changeGroupChatLeaderParams.mCallback;
            if (message != null) {
                sendCallback(message, ImError.TRANSACTION_DOESNT_EXIST);
                return;
            }
            return;
        }
        List<ImsUri> list = changeGroupChatLeaderParams.mLeader;
        if (list == null) {
            Log.e(this.LOG_TAG, "handleChangeGroupChatLeaderRequest: Leader info not exist.");
            Message message2 = changeGroupChatLeaderParams.mCallback;
            if (message2 != null) {
                sendCallback(message2, ImError.ENGINE_ERROR);
                return;
            }
            return;
        }
        Message message3 = changeGroupChatLeaderParams.mCallback;
        if (message3 != null) {
            message3.obj = list;
            imSession.mChangeGCLeaderCallbacks.put(changeGroupChatLeaderParams.mReqKey, message3);
        }
        UserAgent userAgent = getUserAgent(imSession.mUaHandle);
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "handleChangeGroupChatLeaderRequest: User agent not found.");
            Message message4 = changeGroupChatLeaderParams.mCallback;
            if (message4 != null) {
                sendCallback(message4, ImError.ENGINE_ERROR);
                return;
            }
            return;
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int[] iArr = new int[changeGroupChatLeaderParams.mLeader.size()];
        Iterator<ImsUri> it = changeGroupChatLeaderParams.mLeader.iterator();
        while (it.hasNext()) {
            ImsUri next = it.next();
            iArr[0] = flatBufferBuilder.createString(next != null ? next.toString() : "");
        }
        String str = changeGroupChatLeaderParams.mReqKey;
        int createString = str != null ? flatBufferBuilder.createString(str) : -1;
        int createReceiverVector = RequestUpdateParticipants.createReceiverVector(flatBufferBuilder, iArr);
        RequestUpdateParticipants.startRequestUpdateParticipants(flatBufferBuilder);
        RequestUpdateParticipants.addReceiver(flatBufferBuilder, createReceiverVector);
        if (createString != -1) {
            RequestUpdateParticipants.addReqKey(flatBufferBuilder, createString);
        }
        RequestUpdateParticipants.addSessionHandle(flatBufferBuilder, imSession.mSessionHandle.intValue());
        RequestUpdateParticipants.addReqType(flatBufferBuilder, 2);
        int endRequestUpdateParticipants = RequestUpdateParticipants.endRequestUpdateParticipants(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_GC_UPDATE_PARTICIPANTS);
        Request.addReqType(flatBufferBuilder, (byte) 54);
        Request.addReq(flatBufferBuilder, endRequestUpdateParticipants);
        sendRequestToStack(Id.REQUEST_GC_UPDATE_PARTICIPANTS, flatBufferBuilder, Request.endRequest(flatBufferBuilder), this.mStackResponseHandler.obtainMessage(19), userAgent);
    }

    private void handleChangeGroupChatSubjectRequest(ChangeGroupChatSubjectParams changeGroupChatSubjectParams) {
        IMSLog.s(this.LOG_TAG, "handleChangeGcSubjectRequest: " + changeGroupChatSubjectParams);
        ImSession imSession = this.mSessions.get(Integer.valueOf(((Integer) changeGroupChatSubjectParams.mRawHandle).intValue()));
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleChangeGcSubjectRequest: Session not exist.");
            Message message = changeGroupChatSubjectParams.mCallback;
            if (message != null) {
                sendCallback(message, ImError.TRANSACTION_DOESNT_EXIST);
                return;
            }
            return;
        }
        Message message2 = changeGroupChatSubjectParams.mCallback;
        if (message2 != null) {
            message2.obj = changeGroupChatSubjectParams.mSubject;
            imSession.mChangeGCSubjectCallbacks.put(changeGroupChatSubjectParams.mReqKey, message2);
        }
        UserAgent userAgent = getUserAgent(imSession.mUaHandle);
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "handleRemoveParticipantsRequest: User agent not found.");
            Message message3 = changeGroupChatSubjectParams.mCallback;
            if (message3 != null) {
                sendCallback(message3, ImError.ENGINE_ERROR);
                return;
            }
            return;
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString(parseStr(changeGroupChatSubjectParams.mSubject));
        String str = changeGroupChatSubjectParams.mReqKey;
        int createString2 = str != null ? flatBufferBuilder.createString(str) : -1;
        RequestUpdateParticipants.startRequestUpdateParticipants(flatBufferBuilder);
        if (createString2 != -1) {
            RequestUpdateParticipants.addReqKey(flatBufferBuilder, createString2);
        }
        RequestUpdateParticipants.addSessionHandle(flatBufferBuilder, imSession.mSessionHandle.intValue());
        RequestUpdateParticipants.addReqType(flatBufferBuilder, 4);
        RequestUpdateParticipants.addSubject(flatBufferBuilder, createString);
        int endRequestUpdateParticipants = RequestUpdateParticipants.endRequestUpdateParticipants(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_GC_UPDATE_PARTICIPANTS);
        Request.addReqType(flatBufferBuilder, (byte) 54);
        Request.addReq(flatBufferBuilder, endRequestUpdateParticipants);
        sendRequestToStack(Id.REQUEST_GC_UPDATE_PARTICIPANTS, flatBufferBuilder, Request.endRequest(flatBufferBuilder), this.mStackResponseHandler.obtainMessage(22), userAgent);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void handleChangeGroupChatIconRequest(com.sec.internal.constants.ims.servicemodules.im.params.ChangeGroupChatIconParams r8) {
        /*
            r7 = this;
            java.lang.String r0 = r7.LOG_TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "onChangeGroupChatIcon: "
            r1.append(r2)
            r1.append(r8)
            java.lang.String r1 = r1.toString()
            com.sec.internal.log.IMSLog.s(r0, r1)
            java.lang.Object r0 = r8.mRawHandle
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r0 = r0.intValue()
            java.util.Map<java.lang.Integer, com.sec.internal.ims.core.handler.secims.ResipImHandler$ImSession> r1 = r7.mSessions
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.lang.Object r0 = r1.get(r0)
            com.sec.internal.ims.core.handler.secims.ResipImHandler$ImSession r0 = (com.sec.internal.ims.core.handler.secims.ResipImHandler.ImSession) r0
            if (r0 != 0) goto L34
            java.lang.String r7 = r7.LOG_TAG
            java.lang.String r8 = "onChangeGroupChatIcon: Session does not exist."
            android.util.Log.e(r7, r8)
            return
        L34:
            android.os.Message r1 = r8.mCallback
            if (r1 == 0) goto L43
            java.lang.String r2 = r8.mIconPath
            r1.obj = r2
            java.util.Map<java.lang.String, android.os.Message> r2 = r0.mChangeGCIconCallbacks
            java.lang.String r3 = r8.mReqKey
            r2.put(r3, r1)
        L43:
            com.google.flatbuffers.FlatBufferBuilder r1 = new com.google.flatbuffers.FlatBufferBuilder
            r2 = 0
            r1.<init>(r2)
            java.lang.String r2 = r8.mIconPath
            r3 = -1
            if (r2 == 0) goto La1
            java.lang.String r4 = "."
            int r2 = r2.lastIndexOf(r4)
            if (r2 < 0) goto L6d
            java.lang.String r4 = r8.mIconPath
            int r2 = r2 + 1
            int r5 = r4.length()
            java.lang.String r2 = r4.substring(r2, r5)
            boolean r4 = com.sec.internal.helper.translate.ContentTypeTranslator.isTranslationDefined(r2)
            if (r4 == 0) goto L6d
            java.lang.String r2 = com.sec.internal.helper.translate.ContentTypeTranslator.translate(r2)
            goto L6f
        L6d:
            java.lang.String r2 = ""
        L6f:
            java.lang.String r4 = r8.mIconPath
            if (r4 == 0) goto L78
            int r4 = r1.createString(r4)
            goto L79
        L78:
            r4 = r3
        L79:
            if (r2 == 0) goto L80
            int r2 = r1.createString(r2)
            goto L81
        L80:
            r2 = r3
        L81:
            com.sec.internal.ims.core.handler.secims.imsCommonStruc.ImFileAttr.startImFileAttr(r1)
            if (r4 == r3) goto L89
            com.sec.internal.ims.core.handler.secims.imsCommonStruc.ImFileAttr.addPath(r1, r4)
        L89:
            if (r2 == r3) goto L8e
            com.sec.internal.ims.core.handler.secims.imsCommonStruc.ImFileAttr.addContentType(r1, r2)
        L8e:
            java.io.File r2 = new java.io.File
            java.lang.String r4 = r8.mIconPath
            r2.<init>(r4)
            long r4 = r2.length()
            com.sec.internal.ims.core.handler.secims.imsCommonStruc.ImFileAttr.addSize(r1, r4)
            int r2 = com.sec.internal.ims.core.handler.secims.imsCommonStruc.ImFileAttr.endImFileAttr(r1)
            goto La2
        La1:
            r2 = r3
        La2:
            java.lang.String r4 = r8.mReqKey
            if (r4 == 0) goto Lab
            int r4 = r1.createString(r4)
            goto Lac
        Lab:
            r4 = r3
        Lac:
            com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateParticipants.startRequestUpdateParticipants(r1)
            java.lang.String r8 = r8.mIconPath
            if (r8 == 0) goto Lb6
            com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateParticipants.addIconAttr(r1, r2)
        Lb6:
            java.lang.Integer r8 = r0.mSessionHandle
            int r8 = r8.intValue()
            long r5 = (long) r8
            com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateParticipants.addSessionHandle(r1, r5)
            r8 = 5
            com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateParticipants.addReqType(r1, r8)
            if (r4 == r3) goto Lc9
            com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateParticipants.addReqKey(r1, r4)
        Lc9:
            int r8 = com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request_.RequestUpdateParticipants.endRequestUpdateParticipants(r1)
            com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request.startRequest(r1)
            r0 = 510(0x1fe, float:7.15E-43)
            com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request.addReqid(r1, r0)
            r2 = 54
            com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request.addReqType(r1, r2)
            com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request.addReq(r1, r8)
            int r8 = com.sec.internal.ims.core.handler.secims.imsCommonStruc.Request.endRequest(r1)
            com.sec.internal.ims.core.handler.secims.ResipImResponseHandler r2 = r7.mStackResponseHandler
            r3 = 30
            android.os.Message r2 = r2.obtainMessage(r3)
            r7.sendRequestToStack(r0, r1, r8, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.handler.secims.ResipImHandler.handleChangeGroupChatIconRequest(com.sec.internal.constants.ims.servicemodules.im.params.ChangeGroupChatIconParams):void");
    }

    private void handleChangeGroupChatAliasRequest(ChangeGroupAliasParams changeGroupAliasParams) {
        IMSLog.s(this.LOG_TAG, "handleChangeGcAliasRequest: " + changeGroupAliasParams);
        ImSession imSession = this.mSessions.get(Integer.valueOf(((Integer) changeGroupAliasParams.mRawHandle).intValue()));
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleChangeGcAliasRequest: Session not exist.");
            Message message = changeGroupAliasParams.mCallback;
            if (message != null) {
                sendCallback(message, ImError.TRANSACTION_DOESNT_EXIST);
                return;
            }
            return;
        }
        Message message2 = changeGroupAliasParams.mCallback;
        if (message2 != null) {
            message2.obj = changeGroupAliasParams.mAlias;
            imSession.mChangeGCAliasCallbacks.put(changeGroupAliasParams.mReqKey, message2);
        }
        UserAgent userAgent = getUserAgent(imSession.mUaHandle);
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "handleChangeGcAliasRequest: User agent not found.");
            Message message3 = changeGroupAliasParams.mCallback;
            if (message3 != null) {
                sendCallback(message3, ImError.ENGINE_ERROR);
                return;
            }
            return;
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        String str = changeGroupAliasParams.mReqKey;
        int createString = str != null ? flatBufferBuilder.createString(str) : -1;
        int createString2 = flatBufferBuilder.createString(parseStr(changeGroupAliasParams.mAlias));
        RequestUpdateParticipants.startRequestUpdateParticipants(flatBufferBuilder);
        if (createString != -1) {
            RequestUpdateParticipants.addReqKey(flatBufferBuilder, createString);
        }
        RequestUpdateParticipants.addSessionHandle(flatBufferBuilder, imSession.mSessionHandle.intValue());
        RequestUpdateParticipants.addReqType(flatBufferBuilder, 3);
        RequestUpdateParticipants.addUserAlias(flatBufferBuilder, createString2);
        int endRequestUpdateParticipants = RequestUpdateParticipants.endRequestUpdateParticipants(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_GC_UPDATE_PARTICIPANTS);
        Request.addReqType(flatBufferBuilder, (byte) 54);
        Request.addReq(flatBufferBuilder, endRequestUpdateParticipants);
        sendRequestToStack(Id.REQUEST_GC_UPDATE_PARTICIPANTS, flatBufferBuilder, Request.endRequest(flatBufferBuilder), this.mStackResponseHandler.obtainMessage(23), userAgent);
    }

    private void handleStartFtSessionRequest(SendFtSessionParams sendFtSessionParams) {
        UserAgent userAgent;
        int createString;
        int createString2;
        String str;
        int i;
        int i2;
        int createReceiversVector;
        int i3;
        Iterator<ImsUri> it;
        String str2;
        String str3;
        IMSLog.s(this.LOG_TAG, "handleStartFtSessionRequest: " + sendFtSessionParams);
        UserAgent userAgent2 = getUserAgent("ft", sendFtSessionParams.mOwnImsi);
        if (userAgent2 == null) {
            Log.e(this.LOG_TAG, "handleStartFtSessionRequest(): UserAgent not found.");
            FtResult ftResult = new FtResult(ImError.ENGINE_ERROR, Result.Type.ENGINE_ERROR, (Object) null);
            Message message = sendFtSessionParams.mCallback;
            if (message != null) {
                sendCallback(message, ftResult);
                return;
            }
            return;
        }
        FtSession ftSession = new FtSession();
        ftSession.mId = sendFtSessionParams.mMessageId;
        ftSession.mStartCallback = sendFtSessionParams.mCallback;
        ftSession.mStartSessionHandleCallback = sendFtSessionParams.mSessionHandleCallback;
        ftSession.mUaHandle = userAgent2.getHandle();
        this.mPendingFtSessions.put(sendFtSessionParams.mFileTransferID, ftSession);
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString3 = flatBufferBuilder.createString(parseStr(sendFtSessionParams.mFileTransferID));
        int createString4 = flatBufferBuilder.createString(parseStr(sendFtSessionParams.mUserAlias));
        int createString5 = flatBufferBuilder.createString(parseStr(sendFtSessionParams.mContributionId));
        int createString6 = flatBufferBuilder.createString(parseStr(sendFtSessionParams.mConversationId));
        int createString7 = flatBufferBuilder.createString(parseStr(sendFtSessionParams.mInReplyToContributionId));
        int createString8 = flatBufferBuilder.createString(parseStr(sendFtSessionParams.mFileName));
        int createString9 = flatBufferBuilder.createString(parseStr(adjustFilePath(sendFtSessionParams.mFilePath)));
        int createString10 = flatBufferBuilder.createString(parseStr(sendFtSessionParams.mContentType));
        int createString11 = flatBufferBuilder.createString(parseStr(sendFtSessionParams.mFileFingerPrint));
        SendReportMsgParams sendReportMsgParams = sendFtSessionParams.mReportMsgParams;
        if (sendReportMsgParams != null) {
            int createString12 = flatBufferBuilder.createString(sendReportMsgParams.getSpamFrom() != null ? sendFtSessionParams.mReportMsgParams.getSpamFrom().toString() : "");
            int createString13 = flatBufferBuilder.createString(sendFtSessionParams.mReportMsgParams.getSpamTo() != null ? sendFtSessionParams.mReportMsgParams.getSpamTo().toString() : "");
            createString2 = flatBufferBuilder.createString(parseStr(sendFtSessionParams.mReportMsgParams.getSpamDate()));
            userAgent = userAgent2;
            i = createString12;
            createString = createString13;
            str = "";
        } else {
            int createString14 = flatBufferBuilder.createString("");
            userAgent = userAgent2;
            createString = flatBufferBuilder.createString("");
            createString2 = flatBufferBuilder.createString("");
            str = "";
            i = createString14;
        }
        int createString15 = flatBufferBuilder.createString(parseStr(sendFtSessionParams.mImdnId));
        int createNotiVector = ImdnParams.createNotiVector(flatBufferBuilder, ResipTranslatorCollection.translateFwImdnNoti(sendFtSessionParams.mDispositionNotification));
        int createString16 = flatBufferBuilder.createString(Iso8601.formatMillis(sendFtSessionParams.mImdnTime));
        ImsUri imsUri = sendFtSessionParams.mConfUri;
        int i4 = -1;
        if (imsUri != null) {
            i3 = flatBufferBuilder.createString(imsUri.toString());
            i2 = createString15;
            createReceiversVector = -1;
        } else {
            int[] iArr = new int[sendFtSessionParams.mRecipients.size()];
            i2 = createString15;
            Iterator<ImsUri> it2 = sendFtSessionParams.mRecipients.iterator();
            int i5 = 0;
            while (it2.hasNext()) {
                ImsUri next = it2.next();
                int i6 = i5 + 1;
                if (next != null) {
                    String imsUri2 = next.toString();
                    it = it2;
                    str2 = imsUri2;
                } else {
                    it = it2;
                    str2 = str;
                }
                iArr[i5] = flatBufferBuilder.createString(str2);
                it2 = it;
                i5 = i6;
            }
            createReceiversVector = BaseSessionData.createReceiversVector(flatBufferBuilder, iArr);
            i3 = -1;
        }
        BaseSessionData.startBaseSessionData(flatBufferBuilder);
        BaseSessionData.addId(flatBufferBuilder, createString3);
        BaseSessionData.addIsConference(flatBufferBuilder, sendFtSessionParams.mConfUri != null);
        if (sendFtSessionParams.mConfUri != null) {
            BaseSessionData.addSessionUri(flatBufferBuilder, i3);
        } else {
            BaseSessionData.addReceivers(flatBufferBuilder, createReceiversVector);
        }
        if (sendFtSessionParams.mUserAlias != null) {
            BaseSessionData.addUserAlias(flatBufferBuilder, createString4);
        }
        if (sendFtSessionParams.mContributionId != null) {
            BaseSessionData.addContributionId(flatBufferBuilder, createString5);
        }
        if (sendFtSessionParams.mConversationId != null) {
            BaseSessionData.addConversationId(flatBufferBuilder, createString6);
        }
        if (sendFtSessionParams.mInReplyToContributionId != null) {
            BaseSessionData.addInReplyToContributionId(flatBufferBuilder, createString7);
        }
        int endBaseSessionData = BaseSessionData.endBaseSessionData(flatBufferBuilder);
        ImFileAttr.startImFileAttr(flatBufferBuilder);
        ImFileAttr.addName(flatBufferBuilder, createString8);
        ImFileAttr.addPath(flatBufferBuilder, createString9);
        ImFileAttr.addContentType(flatBufferBuilder, createString10);
        ImFileAttr.addSize(flatBufferBuilder, (int) sendFtSessionParams.mFileSize);
        if (sendFtSessionParams.mIsResuming) {
            ImFileAttr.addStart(flatBufferBuilder, Math.min(sendFtSessionParams.mTransferredBytes + 1, sendFtSessionParams.mFileSize));
            ImFileAttr.addEnd(flatBufferBuilder, sendFtSessionParams.mFileSize);
        } else {
            ImFileAttr.addStart(flatBufferBuilder, 0L);
            ImFileAttr.addEnd(flatBufferBuilder, 0L);
        }
        ImFileAttr.addTimeDuration(flatBufferBuilder, sendFtSessionParams.mTimeDuration);
        int endImFileAttr = ImFileAttr.endImFileAttr(flatBufferBuilder);
        String str4 = sendFtSessionParams.mThumbPath;
        if (str4 != null && sendFtSessionParams.mDirection == ImDirection.OUTGOING) {
            int lastIndexOf = str4.lastIndexOf(".");
            if (lastIndexOf >= 0) {
                String str5 = sendFtSessionParams.mThumbPath;
                String substring = str5.substring(lastIndexOf + 1, str5.length());
                if (ContentTypeTranslator.isTranslationDefined(substring)) {
                    str3 = ContentTypeTranslator.translate(substring);
                    int createString17 = flatBufferBuilder.createString(parseStr(adjustFilePath(sendFtSessionParams.mThumbPath)));
                    int createString18 = flatBufferBuilder.createString(parseStr(str3));
                    ImFileAttr.startImFileAttr(flatBufferBuilder);
                    ImFileAttr.addPath(flatBufferBuilder, createString17);
                    ImFileAttr.addContentType(flatBufferBuilder, createString18);
                    ImFileAttr.addSize(flatBufferBuilder, new File(sendFtSessionParams.mThumbPath).length());
                    i4 = ImFileAttr.endImFileAttr(flatBufferBuilder);
                }
            }
            str3 = str;
            int createString172 = flatBufferBuilder.createString(parseStr(adjustFilePath(sendFtSessionParams.mThumbPath)));
            int createString182 = flatBufferBuilder.createString(parseStr(str3));
            ImFileAttr.startImFileAttr(flatBufferBuilder);
            ImFileAttr.addPath(flatBufferBuilder, createString172);
            ImFileAttr.addContentType(flatBufferBuilder, createString182);
            ImFileAttr.addSize(flatBufferBuilder, new File(sendFtSessionParams.mThumbPath).length());
            i4 = ImFileAttr.endImFileAttr(flatBufferBuilder);
        }
        int i7 = i4;
        ReportMessageHdr.startReportMessageHdr(flatBufferBuilder);
        ReportMessageHdr.addSpamFrom(flatBufferBuilder, i);
        ReportMessageHdr.addSpamTo(flatBufferBuilder, createString);
        ReportMessageHdr.addSpamDate(flatBufferBuilder, createString2);
        int endReportMessageHdr = ReportMessageHdr.endReportMessageHdr(flatBufferBuilder);
        if (sendFtSessionParams.mReportMsgParams != null) {
            Log.i(this.LOG_TAG, "andleStartFtSessionRequest, mReportMsgParams=" + sendFtSessionParams.mReportMsgParams);
        }
        ImdnParams.startImdnParams(flatBufferBuilder);
        if (sendFtSessionParams.mImdnId != null) {
            ImdnParams.addMessageId(flatBufferBuilder, i2);
        }
        ImdnParams.addNoti(flatBufferBuilder, createNotiVector);
        ImdnParams.addDatetime(flatBufferBuilder, createString16);
        int endImdnParams = ImdnParams.endImdnParams(flatBufferBuilder);
        FtPayloadParam.startFtPayloadParam(flatBufferBuilder);
        ImDirection imDirection = sendFtSessionParams.mDirection;
        ImDirection imDirection2 = ImDirection.OUTGOING;
        FtPayloadParam.addIsPush(flatBufferBuilder, imDirection == imDirection2);
        FtPayloadParam.addIsPublicAccountMsg(flatBufferBuilder, sendFtSessionParams.mIsPublicAccountMsg);
        FtPayloadParam.addFileFingerPrint(flatBufferBuilder, createString11);
        FtPayloadParam.addFileAttr(flatBufferBuilder, endImFileAttr);
        if (sendFtSessionParams.mThumbPath != null && sendFtSessionParams.mDirection == imDirection2) {
            FtPayloadParam.addIconAttr(flatBufferBuilder, i7);
        }
        FtPayloadParam.addImdn(flatBufferBuilder, endImdnParams);
        int endFtPayloadParam = FtPayloadParam.endFtPayloadParam(flatBufferBuilder);
        RequestStartFtSession.startRequestStartFtSession(flatBufferBuilder);
        RequestStartFtSession.addRegistrationHandle(flatBufferBuilder, userAgent.getHandle());
        RequestStartFtSession.addSessionData(flatBufferBuilder, endBaseSessionData);
        RequestStartFtSession.addReportData(flatBufferBuilder, endReportMessageHdr);
        RequestStartFtSession.addPayload(flatBufferBuilder, endFtPayloadParam);
        int endRequestStartFtSession = RequestStartFtSession.endRequestStartFtSession(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_FT_START_SESSION);
        Request.addReqType(flatBufferBuilder, (byte) 46);
        Request.addReq(flatBufferBuilder, endRequestStartFtSession);
        sendRequestToStack(Id.REQUEST_FT_START_SESSION, flatBufferBuilder, Request.endRequest(flatBufferBuilder), this.mStackResponseHandler.obtainMessage(8), userAgent);
    }

    private void handleStartFtMediaRequest(int i) {
        IMSLog.s(this.LOG_TAG, "handleStartFtMediaRequest(): file transdfer session handle = " + i);
        FtSession ftSession = this.mFtSessions.get(Integer.valueOf(i));
        UserAgent userAgent = getUserAgent(ftSession.mUaHandle);
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "handleStartFtMediaRequest(): UserAgent not found. UaHandle = " + ftSession.mUaHandle);
            FtResult ftResult = new FtResult(ImError.ENGINE_ERROR, Result.Type.ENGINE_ERROR, (Object) null);
            Message message = ftSession.mStartCallback;
            if (message != null) {
                sendCallback(message, ftResult);
                return;
            }
            return;
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        RequestStartMedia.startRequestStartMedia(flatBufferBuilder);
        RequestStartMedia.addSessionId(flatBufferBuilder, i);
        int endRequestStartMedia = RequestStartMedia.endRequestStartMedia(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_FT_START_MEDIA);
        Request.addReqType(flatBufferBuilder, (byte) 42);
        Request.addReq(flatBufferBuilder, endRequestStartMedia);
        sendRequestToStack(Id.REQUEST_FT_START_MEDIA, flatBufferBuilder, Request.endRequest(flatBufferBuilder), this.mStackResponseHandler.obtainMessage(18), userAgent);
    }

    private void handleAcceptFtSessionRequest(AcceptFtSessionParams acceptFtSessionParams) {
        IMSLog.s(this.LOG_TAG, "handleAcceptFtSessionRequest(): " + acceptFtSessionParams);
        Integer num = (Integer) acceptFtSessionParams.mRawHandle;
        FtSession ftSession = this.mFtSessions.get(num);
        if (ftSession == null) {
            Log.e(this.LOG_TAG, "handleAcceptFtSessionRequest(): no session in map, return accept failure, id = " + num);
            Message message = acceptFtSessionParams.mCallback;
            if (message != null) {
                sendCallback(message, new FtResult(ImError.ENGINE_ERROR, Result.Type.ENGINE_ERROR, (Object) null));
                acceptFtSessionParams.mCallback = null;
                return;
            }
            return;
        }
        ftSession.mAcceptCallback = acceptFtSessionParams.mCallback;
        ftSession.mId = acceptFtSessionParams.mMessageId;
        UserAgent userAgent = getUserAgent(ftSession.mUaHandle);
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "handleAcceptFtSessionRequest(): User agent not found!");
            Message message2 = acceptFtSessionParams.mCallback;
            if (message2 != null) {
                sendCallback(message2, new FtResult(ImError.ENGINE_ERROR, Result.Type.ENGINE_ERROR, (Object) null));
                acceptFtSessionParams.mCallback = null;
                return;
            }
            return;
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString(parseStr(adjustFilePath(acceptFtSessionParams.mFilePath)));
        int createString2 = flatBufferBuilder.createString(parseStr(acceptFtSessionParams.mUserAlias));
        RequestAcceptFtSession.startRequestAcceptFtSession(flatBufferBuilder);
        RequestAcceptFtSession.addSessionHandle(flatBufferBuilder, ftSession.mHandle);
        RequestAcceptFtSession.addStart(flatBufferBuilder, acceptFtSessionParams.mStart);
        RequestAcceptFtSession.addEnd(flatBufferBuilder, acceptFtSessionParams.mEnd);
        RequestAcceptFtSession.addFilePath(flatBufferBuilder, createString);
        RequestAcceptFtSession.addUserAlias(flatBufferBuilder, createString2);
        int endRequestAcceptFtSession = RequestAcceptFtSession.endRequestAcceptFtSession(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_FT_ACCEPT_SESSION);
        Request.addReqType(flatBufferBuilder, (byte) 48);
        Request.addReq(flatBufferBuilder, endRequestAcceptFtSession);
        sendRequestToStack(Id.REQUEST_FT_ACCEPT_SESSION, flatBufferBuilder, Request.endRequest(flatBufferBuilder), this.mStackResponseHandler.obtainMessage(5), userAgent);
    }

    private void handleCancelFtSessionRequest(RejectFtSessionParams rejectFtSessionParams) {
        Log.i(this.LOG_TAG, "handleCancelFtSessionRequest: " + rejectFtSessionParams);
        FtSession ftSession = this.mPendingFtSessions.get(rejectFtSessionParams.mFileTransferId);
        if (ftSession != null) {
            Log.i(this.LOG_TAG, "handleCancelFtSessionRequest(): pending session - postpone");
            ftSession.mCancelParams = rejectFtSessionParams;
            return;
        }
        Integer num = (Integer) rejectFtSessionParams.mRawHandle;
        FtSession ftSession2 = this.mFtSessions.get(num);
        if (ftSession2 == null) {
            Log.i(this.LOG_TAG, "handleCancelFtSessionRequest(): unknown session!");
            Message message = rejectFtSessionParams.mCallback;
            if (message != null) {
                sendCallback(message, new FtResult(ImError.ENGINE_ERROR, Result.Type.ENGINE_ERROR, num));
                rejectFtSessionParams.mCallback = null;
                return;
            }
            return;
        }
        if (ftSession2.mCancelParams != null) {
            Log.i(this.LOG_TAG, "handleCancelFtSessionRequest(): there is a ongoing cancel request, ignore further cancel request");
        } else {
            ftSession2.mCancelParams = rejectFtSessionParams;
            sendFtCancelRequestToStack(ftSession2);
        }
    }

    protected void sendFtCancelRequestToStack(FtSession ftSession) {
        RejectFtSessionParams rejectFtSessionParams = ftSession.mCancelParams;
        if (rejectFtSessionParams == null) {
            Log.e(this.LOG_TAG, "sendFtCancelRequestToStack(): null reject params!");
            return;
        }
        UserAgent userAgent = getUserAgent(ftSession.mUaHandle);
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "sendFtCancelRequestToStack(): User agent not found!");
            Message message = ftSession.mCancelParams.mCallback;
            if (message != null) {
                sendCallback(message, new FtResult(ImError.ENGINE_ERROR, Result.Type.ENGINE_ERROR, (Object) null));
                ftSession.mCancelParams.mCallback = null;
                return;
            }
            return;
        }
        FtRejectReason ftRejectReason = rejectFtSessionParams.mRejectReason;
        if (ftRejectReason == null) {
            ftRejectReason = FtRejectReason.DECLINE;
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString(parseStr(ftRejectReason.getWarningText()));
        WarningHdr.startWarningHdr(flatBufferBuilder);
        WarningHdr.addCode(flatBufferBuilder, ftRejectReason.getWarningCode());
        WarningHdr.addText(flatBufferBuilder, createString);
        int endWarningHdr = WarningHdr.endWarningHdr(flatBufferBuilder);
        RequestCancelFtSession.startRequestCancelFtSession(flatBufferBuilder);
        RequestCancelFtSession.addSessionHandle(flatBufferBuilder, ftSession.mHandle);
        RequestCancelFtSession.addSipCode(flatBufferBuilder, ftRejectReason.getSipCode());
        RequestCancelFtSession.addWarningHdr(flatBufferBuilder, endWarningHdr);
        int endRequestCancelFtSession = RequestCancelFtSession.endRequestCancelFtSession(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_FT_CANCEL_SESSION);
        Request.addReqType(flatBufferBuilder, (byte) 47);
        Request.addReq(flatBufferBuilder, endRequestCancelFtSession);
        sendRequestToStack(Id.REQUEST_FT_CANCEL_SESSION, flatBufferBuilder, Request.endRequest(flatBufferBuilder), this.mStackResponseHandler.obtainMessage(6), userAgent);
    }

    protected void handleRejectFtSessionRequest(RejectFtSessionParams rejectFtSessionParams) {
        IMSLog.s(this.LOG_TAG, "handleRejectFtSessionRequest: " + rejectFtSessionParams);
        Integer num = (Integer) rejectFtSessionParams.mRawHandle;
        FtSession ftSession = this.mFtSessions.get(num);
        if (ftSession == null) {
            Log.e(this.LOG_TAG, "handleRejectFtSessionRequest: no session in map, return reject failure id=" + num);
            Message message = rejectFtSessionParams.mCallback;
            if (message != null) {
                sendCallback(message, new FtResult(ImError.ENGINE_ERROR, Result.Type.ENGINE_ERROR, (Object) null));
                return;
            }
            return;
        }
        ftSession.mCancelParams = rejectFtSessionParams;
        FtRejectReason ftRejectReason = rejectFtSessionParams.mRejectReason;
        if (ftRejectReason == null) {
            ftRejectReason = FtRejectReason.DECLINE;
        }
        UserAgent userAgent = getUserAgent(ftSession.mUaHandle);
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "handleRejectFtSessionRequest(): User Agent not found!");
            Message message2 = rejectFtSessionParams.mCallback;
            if (message2 != null) {
                sendCallback(message2, new FtResult(ImError.ENGINE_ERROR, Result.Type.ENGINE_ERROR, (Object) null));
                rejectFtSessionParams.mCallback = null;
                return;
            }
            return;
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString(parseStr(ftRejectReason.getWarningText()));
        WarningHdr.startWarningHdr(flatBufferBuilder);
        WarningHdr.addCode(flatBufferBuilder, ftRejectReason.getWarningCode());
        WarningHdr.addText(flatBufferBuilder, createString);
        int endWarningHdr = WarningHdr.endWarningHdr(flatBufferBuilder);
        RequestCancelFtSession.startRequestCancelFtSession(flatBufferBuilder);
        RequestCancelFtSession.addSessionHandle(flatBufferBuilder, ftSession.mHandle);
        RequestCancelFtSession.addSipCode(flatBufferBuilder, ftRejectReason.getSipCode());
        RequestCancelFtSession.addWarningHdr(flatBufferBuilder, endWarningHdr);
        int endRequestCancelFtSession = RequestCancelFtSession.endRequestCancelFtSession(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_FT_CANCEL_SESSION);
        Request.addReqType(flatBufferBuilder, (byte) 47);
        Request.addReq(flatBufferBuilder, endRequestCancelFtSession);
        sendRequestToStack(Id.REQUEST_FT_CANCEL_SESSION, flatBufferBuilder, Request.endRequest(flatBufferBuilder), this.mStackResponseHandler.obtainMessage(7), userAgent);
    }

    private void handleSetMoreInfoToSipUARequest(String str, int i) {
        Log.i(this.LOG_TAG, "handleSetMoreInfoToSipUARequest: " + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        UserAgent userAgent = getUserAgent(i);
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "handleSetMoreInfoToSipUARequest(): User Agent not found!");
            return;
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString(str);
        RequestImSetMoreInfoToSipUA.startRequestImSetMoreInfoToSipUA(flatBufferBuilder);
        RequestImSetMoreInfoToSipUA.addValue(flatBufferBuilder, createString);
        int endRequestImSetMoreInfoToSipUA = RequestImSetMoreInfoToSipUA.endRequestImSetMoreInfoToSipUA(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_IM_SET_MORE_INFO_TO_SIP_UA);
        Request.addReqType(flatBufferBuilder, (byte) 59);
        Request.addReq(flatBufferBuilder, endRequestImSetMoreInfoToSipUA);
        sendRequestToStack(Id.REQUEST_IM_SET_MORE_INFO_TO_SIP_UA, flatBufferBuilder, Request.endRequest(flatBufferBuilder), this.mStackResponseHandler.obtainMessage(29), userAgent);
    }

    private void handleReportChatbotAsSpam(ReportChatbotAsSpamParams reportChatbotAsSpamParams) {
        Log.i(this.LOG_TAG, "handleReportChatbotAsSpam");
        ImsUri imsUri = reportChatbotAsSpamParams.mChatbotUri;
        String str = reportChatbotAsSpamParams.mSpamInfo;
        String str2 = reportChatbotAsSpamParams.mRequestId;
        if (imsUri == null || TextUtils.isEmpty(imsUri.toString())) {
            Log.e(this.LOG_TAG, "handleReportChatbotAsSpam - Invalid ChatBotUrl");
            return;
        }
        UserAgent userAgent = getUserAgent(ServiceConstants.SERVICE_CHATBOT_COMMUNICATION, reportChatbotAsSpamParams.mPhoneId);
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "handleReportChatbotAsSpam(): User Agent not found!");
            return;
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString(imsUri.toString());
        int createString2 = flatBufferBuilder.createString(parseStr(str));
        int createString3 = flatBufferBuilder.createString(parseStr(str2));
        RequestReportChatbotAsSpam.startRequestReportChatbotAsSpam(flatBufferBuilder);
        RequestReportChatbotAsSpam.addRegistrationHandle(flatBufferBuilder, userAgent.getHandle());
        RequestReportChatbotAsSpam.addChatbotUri(flatBufferBuilder, createString);
        RequestReportChatbotAsSpam.addSpamInfo(flatBufferBuilder, createString2);
        RequestReportChatbotAsSpam.addRequestId(flatBufferBuilder, createString3);
        int endRequestReportChatbotAsSpam = RequestReportChatbotAsSpam.endRequestReportChatbotAsSpam(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, 1400);
        Request.addReqType(flatBufferBuilder, (byte) 53);
        Request.addReq(flatBufferBuilder, endRequestReportChatbotAsSpam);
        sendRequestToStack(1400, flatBufferBuilder, Request.endRequest(flatBufferBuilder), this.mStackResponseHandler.obtainMessage(31), userAgent);
    }

    private void handleRequestChatbotAnonymize(ChatbotAnonymizeParams chatbotAnonymizeParams) {
        Log.i(this.LOG_TAG, "handleRequestChatbotAnonymize");
        ImsUri imsUri = chatbotAnonymizeParams.mChatbotUri;
        String str = chatbotAnonymizeParams.mAliasXml;
        String str2 = chatbotAnonymizeParams.mCommandId;
        if (imsUri == null || TextUtils.isEmpty(imsUri.toString())) {
            Log.e(this.LOG_TAG, "handleRequestChatbotAnonymize - Invalid ChatBotUrl");
            return;
        }
        UserAgent userAgent = getUserAgent(ServiceConstants.SERVICE_CHATBOT_COMMUNICATION, chatbotAnonymizeParams.mPhoneId);
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "handleRequestChatbotAnonymize(): User Agent not found!");
            return;
        }
        FlatBufferBuilder flatBufferBuilder = new FlatBufferBuilder(0);
        int createString = flatBufferBuilder.createString(imsUri.toString());
        int createString2 = flatBufferBuilder.createString(parseStr(str));
        int createString3 = flatBufferBuilder.createString(parseStr(str2));
        RequestChatbotAnonymize.startRequestChatbotAnonymize(flatBufferBuilder);
        RequestChatbotAnonymize.addRegistrationHandle(flatBufferBuilder, userAgent.getHandle());
        RequestChatbotAnonymize.addChatbotUri(flatBufferBuilder, createString);
        RequestChatbotAnonymize.addAnonymizeInfo(flatBufferBuilder, createString2);
        RequestChatbotAnonymize.addCommandId(flatBufferBuilder, createString3);
        int endRequestChatbotAnonymize = RequestChatbotAnonymize.endRequestChatbotAnonymize(flatBufferBuilder);
        Request.startRequest(flatBufferBuilder);
        Request.addReqid(flatBufferBuilder, Id.REQUEST_CHATBOT_ANONYMIZE);
        Request.addReqType(flatBufferBuilder, (byte) 52);
        Request.addReq(flatBufferBuilder, endRequestChatbotAnonymize);
        sendRequestToStack(Id.REQUEST_CHATBOT_ANONYMIZE, flatBufferBuilder, Request.endRequest(flatBufferBuilder), this.mStackResponseHandler.obtainMessage(32), userAgent);
    }

    private void sendRequestToStack(int i, FlatBufferBuilder flatBufferBuilder, int i2, Message message) {
        UserAgent userAgent = getUserAgent();
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "sendRequestToStack(): UserAgent not found.");
        } else {
            sendRequestToStack(i, flatBufferBuilder, i2, message, userAgent);
        }
    }

    private void sendRequestToStack(int i, FlatBufferBuilder flatBufferBuilder, int i2, Message message, UserAgent userAgent) {
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "sendRequestToStack(): UserAgent not found.");
        } else {
            userAgent.sendRequestToStack(new ResipStackRequest(i, flatBufferBuilder, i2, message));
        }
    }

    protected void sendCallback(Message message, Object obj) {
        AsyncResult.forMessage(message, obj, null);
        message.sendToTarget();
    }

    private int[] getStringOffsetArray(FlatBufferBuilder flatBufferBuilder, Iterable<String> iterable, int i) {
        int[] iArr = new int[i];
        int i2 = 0;
        for (String str : iterable) {
            if (str != null && !str.isEmpty()) {
                iArr[i2] = flatBufferBuilder.createString(str);
                i2++;
            }
        }
        return iArr;
    }

    private int[] getImsUriOffsetArray(FlatBufferBuilder flatBufferBuilder, Iterable<ImsUri> iterable, int i) {
        int[] iArr = new int[i];
        int i2 = 0;
        for (ImsUri imsUri : iterable) {
            if (imsUri != null && !imsUri.toString().isEmpty()) {
                iArr[i2] = flatBufferBuilder.createString(imsUri.toString());
                i2++;
            }
        }
        return iArr;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void subscribeGroupChatList(int i, boolean z, String str) {
        Log.i(this.LOG_TAG, "subscribeGroupChatList()");
        sendMessage(obtainMessage(24, new GroupChatListParams(i, z, str)));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void subscribeGroupChatInfo(Uri uri, String str) {
        Log.i(this.LOG_TAG, "subscribeGroupChatInfo() uri:" + uri.toString());
        sendMessage(obtainMessage(25, new GroupChatInfoParams(uri, str)));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void registerForGroupChatListUpdate(Handler handler, int i, Object obj) {
        this.mGroupChatListRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void unRegisterForGroupChatListUpdate(Handler handler) {
        this.mGroupChatListRegistrants.remove(handler);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void registerForGroupChatInfoUpdate(Handler handler, int i, Object obj) {
        this.mGroupChatInfoRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void unRegisterForGroupChatInfoUpdate(Handler handler) {
        this.mGroupChatInfoRegistrants.remove(handler);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void registerForMessageRevokeResponse(Handler handler, int i, Object obj) {
        this.mMessageRevokeResponseRegistransts.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void unregisterForMessageRevokeResponse(Handler handler) {
        this.mMessageRevokeResponseRegistransts.remove(handler);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void registerForSendMessageRevokeDone(Handler handler, int i, Object obj) {
        this.mSendMessageRevokeResponseRegistransts.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void unregisterForSendMessageRevokeDone(Handler handler) {
        this.mSendMessageRevokeResponseRegistransts.remove(handler);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void setMoreInfoToSipUserAgent(String str, int i) {
        sendMessage(obtainMessage(29, i, 0, str));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void requestChatbotAnonymize(ChatbotAnonymizeParams chatbotAnonymizeParams) {
        sendMessage(obtainMessage(32, chatbotAnonymizeParams));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void registerForChatbotAnonymizeResp(Handler handler, int i, Object obj) {
        this.mChatbotAnonymizeResponseRegistrants.add(handler, i, obj);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void unregisterForChatbotAnonymizeResp(Handler handler) {
        this.mChatbotAnonymizeResponseRegistrants.remove(handler);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void registerForChatbotAnonymizeNotify(Handler handler, int i, Object obj) {
        this.mChatbotAnonymizeNotifyRegistrants.add(handler, i, obj);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void unregisterForChatbotAnonymizeNotify(Handler handler) {
        this.mChatbotAnonymizeNotifyRegistrants.remove(handler);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void reportChatbotAsSpam(ReportChatbotAsSpamParams reportChatbotAsSpamParams) {
        sendMessage(obtainMessage(31, reportChatbotAsSpamParams));
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void registerForChatbotAsSpamNotify(Handler handler, int i, Object obj) {
        this.mReportChatbotAsSpamRespRegistrants.add(handler, i, obj);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface
    public void unregisterForChatbotAsSpamNotify(Handler handler) {
        this.mReportChatbotAsSpamRespRegistrants.remove(handler);
    }

    public UserAgent getUserAgent(String str, String str2) {
        return (UserAgent) this.mImsFramework.getRegistrationManager().getUserAgentByImsi(str, str2);
    }

    protected UserAgent getUserAgent(String str) {
        return (UserAgent) this.mImsFramework.getRegistrationManager().getUserAgentByImsi("im", str);
    }

    protected UserAgent getUserAgent(String str, int i) {
        return (UserAgent) this.mImsFramework.getRegistrationManager().getUserAgent(str, i);
    }

    protected UserAgent getUserAgent(int i) {
        return (UserAgent) this.mImsFramework.getRegistrationManager().getUserAgent(i);
    }

    protected UserAgent getUserAgent() {
        return (UserAgent) this.mImsFramework.getRegistrationManager().getUserAgent("im");
    }

    protected String getImsiByUserAgent(UserAgent userAgent) {
        return this.mImsFramework.getRegistrationManager().getImsiByUserAgent(userAgent);
    }
}
