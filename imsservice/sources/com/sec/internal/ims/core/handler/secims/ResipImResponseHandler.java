package com.sec.internal.ims.core.handler.secims;

import android.net.Uri;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.im.ChatbotXmlUtils;
import com.sec.internal.constants.ims.servicemodules.im.ImCpimNamespaces;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.ImImdnRecRoute;
import com.sec.internal.constants.ims.servicemodules.im.MessageRevokeResponse;
import com.sec.internal.constants.ims.servicemodules.im.SupportedFeature;
import com.sec.internal.constants.ims.servicemodules.im.event.ChatbotAnonymizeNotifyEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ChatbotAnonymizeRespEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.FtIncomingSessionEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.FtTransferProgressEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImComposingEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImIncomingGroupChatListEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImIncomingMessageEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImIncomingSessionEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionClosedEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ImSessionEstablishedEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.ReportChatbotAsSpamRespEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.SendImdnFailedEvent;
import com.sec.internal.constants.ims.servicemodules.im.event.SendMessageFailedEvent;
import com.sec.internal.constants.ims.servicemodules.im.params.RejectFtSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.params.RejectImSessionParams;
import com.sec.internal.constants.ims.servicemodules.im.reason.FtRejectReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionRejectReason;
import com.sec.internal.constants.ims.servicemodules.im.result.FtResult;
import com.sec.internal.constants.ims.servicemodules.im.result.RejectImSessionResult;
import com.sec.internal.constants.ims.servicemodules.im.result.Result;
import com.sec.internal.constants.ims.servicemodules.im.result.SendMessageResult;
import com.sec.internal.constants.ims.servicemodules.im.result.StartImSessionResult;
import com.sec.internal.constants.ims.servicemodules.im.result.StopImSessionResult;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.Iso8601;
import com.sec.internal.ims.core.handler.BaseHandler;
import com.sec.internal.ims.core.handler.secims.ResipImHandler;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.AllowHdr;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.BaseSessionData;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.CpimNamespace;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.CpimNamespace_.Pair;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.FtPayloadParam;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.GroupChatInfo;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ImComposingStatus;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ImFileAttr;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ImMessageParam;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ImSessionParam;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.ImdnRecRoute;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.FtIncomingSession;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.FtProgress;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.GroupChatListUpdated;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.ImComposingStatusReceived;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.ImMessageReceived;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.ImMessageReportReceived;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.ImSessionInvited;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.MessageRevokeResponseReceived;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.ReportChatbotAsSpamResponse;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.RequestChatbotAnonymizeResponse;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.RequestChatbotAnonymizeResponseReceived;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.SendMessageRevokeResponse;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.SessionClosed;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.SessionEstablished;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify_.SessionStarted;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Response_.CloseSessionResponse;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Response_.GeneralResponse;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Response_.SendImMessageResponse;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Response_.SendMessageRevokeInternalResponse;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Response_.StartSessionResponse;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Response_.UpdateParticipantsResponse;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.RetryHdr;
import com.sec.internal.ims.translate.ResipTranslatorCollection;
import com.sec.internal.log.IMSLog;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;

/* loaded from: classes.dex */
public class ResipImResponseHandler extends BaseHandler {
    private static final String GROUPCHAT_ROLE_ADMIN = "Administrator";
    private static final String GROUPCHAT_ROLE_CHAIRMAN = "chairman";
    ResipImHandler mResipImHandler;

    ResipImResponseHandler(Looper looper, ResipImHandler resipImHandler) {
        super(looper);
        this.mResipImHandler = resipImHandler;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        if (i == 12) {
            handleAddParticipantsResponse((UpdateParticipantsResponse) ((AsyncResult) message.obj).result);
            return;
        }
        if (i == 17) {
            handleRejectImSessionResponse((CloseSessionResponse) ((AsyncResult) message.obj).result);
            return;
        }
        if (i == 19) {
            handleChangeGroupChatLeaderResponse((UpdateParticipantsResponse) ((AsyncResult) message.obj).result);
            return;
        }
        if (i != 100) {
            switch (i) {
                case 1:
                    handleStartImSessionResponse((StartSessionResponse) ((AsyncResult) message.obj).result);
                    break;
                case 2:
                    handleAcceptImSessionResponse((StartSessionResponse) ((AsyncResult) message.obj).result);
                    break;
                case 3:
                    AsyncResult asyncResult = (AsyncResult) message.obj;
                    handleCloseImSessionResponse((CloseSessionResponse) asyncResult.result, (Message) asyncResult.userObj);
                    break;
                case 4:
                    handleSendMessageResponse((SendImMessageResponse) ((AsyncResult) message.obj).result);
                    break;
                case 5:
                    handleAcceptFtSessionResponse((StartSessionResponse) ((AsyncResult) message.obj).result);
                    break;
                case 6:
                    handleCancelFtSessionResponse((CloseSessionResponse) ((AsyncResult) message.obj).result);
                    break;
                case 7:
                    handleRejectFtSessionResponse((CloseSessionResponse) ((AsyncResult) message.obj).result);
                    break;
                case 8:
                    handleStartFtSessionResponse((StartSessionResponse) ((AsyncResult) message.obj).result);
                    break;
                default:
                    switch (i) {
                        case 21:
                            handleRemoveParticipantsResponse((UpdateParticipantsResponse) ((AsyncResult) message.obj).result);
                            break;
                        case 22:
                            handleChangeGroupChatSubjectResponse((UpdateParticipantsResponse) ((AsyncResult) message.obj).result);
                            break;
                        case 23:
                            handleChangeGroupChatAliasResponse((UpdateParticipantsResponse) ((AsyncResult) message.obj).result);
                            break;
                        case 24:
                            handleSubscribeGroupChatListResponse((GeneralResponse) ((AsyncResult) message.obj).result);
                            break;
                        case 25:
                            handleSubscribeGroupChatInfoResponse((GeneralResponse) ((AsyncResult) message.obj).result);
                            break;
                        default:
                            switch (i) {
                                case 28:
                                    AsyncResult asyncResult2 = (AsyncResult) message.obj;
                                    Log.i(this.LOG_TAG, "EVENT_SEND_MESSAGE_REVOKE_REQUEST: " + message);
                                    handleSendMessageRevokeInternalResponse((Message) asyncResult2.userObj, (SendMessageRevokeInternalResponse) asyncResult2.result);
                                    break;
                                case 29:
                                    handleSetMoreInfoToSipUAResponse((GeneralResponse) ((AsyncResult) message.obj).result);
                                    break;
                                case 30:
                                    handleChangeGroupChatIconResponse((UpdateParticipantsResponse) ((AsyncResult) message.obj).result);
                                    break;
                                default:
                                    Log.i(this.LOG_TAG, "mStackResponseHandler.handleMessage(): unhandled event - " + message);
                                    break;
                            }
                    }
            }
            return;
        }
        handleNotify((Notify) ((AsyncResult) message.obj).result);
    }

    private void handleStartImSessionResponse(StartSessionResponse startSessionResponse) {
        if (startSessionResponse == null) {
            Log.e(this.LOG_TAG, "response object is null!!");
            return;
        }
        int sessionHandle = (int) startSessionResponse.sessionHandle();
        String fwSessionId = startSessionResponse.fwSessionId();
        Result translateImResult = ResipTranslatorCollection.translateImResult(startSessionResponse.imError(), null);
        ImError imError = translateImResult.getImError();
        Log.i(this.LOG_TAG, "handleStartImSessionResponse(): sessionHandle = " + sessionHandle + ", fwSessionId = " + fwSessionId + ", error = " + imError);
        ResipImHandler.ImSession remove = this.mResipImHandler.mPendingSessions.remove(fwSessionId);
        if (remove == null) {
            Log.e(this.LOG_TAG, "handleStartImSessionResponse(): cannot find session!");
            return;
        }
        ImError imError2 = ImError.SUCCESS;
        if (imError == imError2) {
            remove.mSessionHandle = Integer.valueOf(sessionHandle);
            this.mResipImHandler.mSessions.put(Integer.valueOf(sessionHandle), remove);
            Log.i(this.LOG_TAG, "handleStartImSessionResponse(): sessionHandle = " + sessionHandle + ", fwSessionId = " + fwSessionId + ", error = " + imError);
            Message message = remove.mStartSyncCallback;
            if (message != null) {
                this.mResipImHandler.sendCallback(message, Integer.valueOf(sessionHandle));
                remove.mStartSyncCallback = null;
                return;
            }
            return;
        }
        Message message2 = remove.mStartSyncCallback;
        if (message2 != null) {
            this.mResipImHandler.sendCallback(message2, fwSessionId);
            remove.mStartSyncCallback = null;
        }
        remove.mStartProvisionalCallback = null;
        Message message3 = remove.mStartCallback;
        if (message3 != null) {
            this.mResipImHandler.sendCallback(message3, new StartImSessionResult(translateImResult, null, fwSessionId));
            remove.mStartCallback = null;
        }
        Message message4 = remove.mFirstMessageCallback;
        if (message4 != null) {
            if (imError == ImError.BUSY_HERE) {
                Log.i(this.LOG_TAG, "handle 486 response as SUCCESS for the message in INVITE.");
                this.mResipImHandler.sendCallback(remove.mFirstMessageCallback, new SendMessageResult(Integer.valueOf(sessionHandle), new Result(imError2, translateImResult)));
            } else {
                this.mResipImHandler.sendCallback(message4, new SendMessageResult(Integer.valueOf(sessionHandle), translateImResult));
            }
            remove.mFirstMessageCallback = null;
        }
    }

    private void handleAcceptImSessionResponse(StartSessionResponse startSessionResponse) {
        Log.e(this.LOG_TAG, "handleAcceptImSessionResponse() called!");
        if (startSessionResponse == null) {
            Log.e(this.LOG_TAG, "handleAcceptImSessionResponse(): response is null!!");
            return;
        }
        int sessionHandle = (int) startSessionResponse.sessionHandle();
        Result translateImResult = ResipTranslatorCollection.translateImResult(startSessionResponse.imError(), null);
        ImError imError = translateImResult.getImError();
        ResipImHandler.ImSession imSession = this.mResipImHandler.mSessions.get(Integer.valueOf(sessionHandle));
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleAcceptImSessionResponse(): no session found sessionHandle = " + sessionHandle + ", error = " + imError);
            return;
        }
        IMSLog.s(this.LOG_TAG, "handleAcceptImSessionResponse(): sessionHandle = " + sessionHandle + ", chat id = " + imSession.mChatId + ", error = " + imError);
        Message message = imSession.mAcceptCallback;
        if (message != null) {
            this.mResipImHandler.sendCallback(message, new StartImSessionResult(translateImResult, null, Integer.valueOf(sessionHandle)));
            imSession.mAcceptCallback = null;
        }
    }

    private void handleSendMessageResponse(SendImMessageResponse sendImMessageResponse) {
        Log.i(this.LOG_TAG, "handleSendMessageResponse()");
        Integer valueOf = Integer.valueOf((int) sendImMessageResponse.sessionId());
        ResipImHandler.ImSession imSession = this.mResipImHandler.mSessions.get(valueOf);
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleSendMessageResponse(): no session found sessionHandle=" + valueOf);
            return;
        }
        Message findAndRemoveCallback = imSession.findAndRemoveCallback(sendImMessageResponse.imdnMessageId());
        if (findAndRemoveCallback == null) {
            Log.e(this.LOG_TAG, "handleSendMessageResponse(): no response callback set. sessionHandle = " + valueOf + " imdnid = " + sendImMessageResponse.imdnMessageId());
            return;
        }
        this.mResipImHandler.sendCallback(findAndRemoveCallback, new SendMessageResult(valueOf, ResipTranslatorCollection.translateImResult(sendImMessageResponse.imError(), null)));
    }

    private void handleChangeGroupChatLeaderResponse(UpdateParticipantsResponse updateParticipantsResponse) {
        IMSLog.s(this.LOG_TAG, "handleChangeGroupChatLeaderResponse: " + updateParticipantsResponse);
        ResipImHandler.ImSession imSession = this.mResipImHandler.mSessions.get(Integer.valueOf((int) updateParticipantsResponse.sessionHandle()));
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleChangeGroupChatLeaderResponse(): no session found");
            return;
        }
        if (TextUtils.isEmpty(updateParticipantsResponse.reqKey())) {
            Log.e(this.LOG_TAG, "handleChangeGroupChatLeaderResponse(): response has no request key");
            return;
        }
        ImError imError = ResipTranslatorCollection.translateImResult(updateParticipantsResponse.imError(), null).getImError();
        Message remove = imSession.mChangeGCLeaderCallbacks.remove(updateParticipantsResponse.reqKey());
        if (remove != null) {
            this.mResipImHandler.sendCallback(remove, imError);
        } else {
            Log.e(this.LOG_TAG, "handleChangeGroupChatLeaderResponse(): no callback set");
        }
    }

    private void handleAddParticipantsResponse(UpdateParticipantsResponse updateParticipantsResponse) {
        IMSLog.s(this.LOG_TAG, "handleAddParticipantsResponse: " + updateParticipantsResponse);
        ResipImHandler.ImSession imSession = this.mResipImHandler.mSessions.get(Integer.valueOf((int) updateParticipantsResponse.sessionHandle()));
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleAddParticipantsResponse(): no session found");
            return;
        }
        if (TextUtils.isEmpty(updateParticipantsResponse.reqKey())) {
            Log.e(this.LOG_TAG, "handleAddParticipantsResponse(): response has no request key");
            return;
        }
        ImError imError = ResipTranslatorCollection.translateImResult(updateParticipantsResponse.imError(), updateParticipantsResponse.warningHdr()).getImError();
        Message remove = imSession.mAddParticipantsCallbacks.remove(updateParticipantsResponse.reqKey());
        if (remove != null) {
            this.mResipImHandler.sendCallback(remove, imError);
        } else {
            Log.e(this.LOG_TAG, "handleAddParticipantsResponse(): no callback set");
        }
    }

    private void handleRemoveParticipantsResponse(UpdateParticipantsResponse updateParticipantsResponse) {
        IMSLog.s(this.LOG_TAG, "handleRemoveParticipantsResponse: " + updateParticipantsResponse);
        ResipImHandler.ImSession imSession = this.mResipImHandler.mSessions.get(Integer.valueOf((int) updateParticipantsResponse.sessionHandle()));
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleRemoveParticipantsResponse(): no session found");
            return;
        }
        if (TextUtils.isEmpty(updateParticipantsResponse.reqKey())) {
            Log.e(this.LOG_TAG, "handleRemoveParticipantsResponse(): response has no request key");
            return;
        }
        ImError imError = ResipTranslatorCollection.translateImResult(updateParticipantsResponse.imError(), updateParticipantsResponse.warningHdr()).getImError();
        Message remove = imSession.mRemoveParticipantsCallbacks.remove(updateParticipantsResponse.reqKey());
        if (remove != null) {
            this.mResipImHandler.sendCallback(remove, imError);
        } else {
            Log.e(this.LOG_TAG, "handleRemoveParticipantsResponse(): no callback set");
        }
    }

    private void handleStartFtSessionResponse(StartSessionResponse startSessionResponse) {
        int sessionHandle = (int) startSessionResponse.sessionHandle();
        String fwSessionId = startSessionResponse.fwSessionId();
        Result translateFtResult = ResipTranslatorCollection.translateFtResult(startSessionResponse.imError(), null);
        Log.i(this.LOG_TAG, "handleStartFtSessionResponse(): sessionHandle = " + sessionHandle + ", FT id = " + fwSessionId + ", error = " + translateFtResult);
        ResipImHandler.FtSession remove = this.mResipImHandler.mPendingFtSessions.remove(fwSessionId);
        if (remove == null) {
            Log.e(this.LOG_TAG, "handleStartFtSessionResponse: cannot find session!");
            return;
        }
        if (translateFtResult.getImError() == ImError.SUCCESS) {
            remove.mHandle = sessionHandle;
            Message message = remove.mStartSessionHandleCallback;
            if (message != null) {
                this.mResipImHandler.sendCallback(message, new FtResult(translateFtResult, Integer.valueOf(sessionHandle)));
                remove.mStartSessionHandleCallback = null;
            }
            this.mResipImHandler.mFtSessions.put(Integer.valueOf(sessionHandle), remove);
            if (remove.mCancelParams != null) {
                Log.i(this.LOG_TAG, "handleStartFtSessionResponse(): send postponed cancel request");
                this.mResipImHandler.sendFtCancelRequestToStack(remove);
                return;
            }
            return;
        }
        Message message2 = remove.mStartCallback;
        if (message2 != null) {
            this.mResipImHandler.sendCallback(message2, new FtResult(translateFtResult, Integer.valueOf(sessionHandle)));
            remove.mStartCallback = null;
        }
    }

    private void handleAcceptFtSessionResponse(StartSessionResponse startSessionResponse) {
        Log.e(this.LOG_TAG, "handleAcceptFtSessionResponse() called!");
        int sessionHandle = (int) startSessionResponse.sessionHandle();
        Result translateFtResult = ResipTranslatorCollection.translateFtResult(startSessionResponse.imError(), null);
        ResipImHandler.FtSession ftSession = this.mResipImHandler.mFtSessions.get(Integer.valueOf(sessionHandle));
        if (ftSession == null) {
            Log.e(this.LOG_TAG, "handleAcceptFtSessionResponse(): no session found sessionHandle = " + sessionHandle + ", result = " + translateFtResult);
            return;
        }
        IMSLog.s(this.LOG_TAG, "handleAcceptFtSessionResponse(): sessionHandle = " + sessionHandle + ", result = " + translateFtResult);
        if (translateFtResult.getImError() == ImError.SUCCESS) {
            Log.i(this.LOG_TAG, "handleAcceptFtSessionResponse INVITE response sent");
            return;
        }
        Message message = ftSession.mAcceptCallback;
        if (message != null) {
            this.mResipImHandler.sendCallback(message, new FtResult(translateFtResult, Integer.valueOf(sessionHandle)));
            ftSession.mAcceptCallback = null;
        }
    }

    private void handleCancelFtSessionResponse(CloseSessionResponse closeSessionResponse) {
        Message message;
        int sessionHandle = (int) closeSessionResponse.sessionHandle();
        Result translateFtResult = ResipTranslatorCollection.translateFtResult(closeSessionResponse.imError(), null);
        ResipImHandler.FtSession remove = this.mResipImHandler.mFtSessions.remove(Integer.valueOf(sessionHandle));
        if (remove == null) {
            Log.e(this.LOG_TAG, "handleCancelFtSessionResponse(): cannot find ftsession sessionHandle = " + sessionHandle + ", result = " + translateFtResult);
            return;
        }
        Log.i(this.LOG_TAG, "handleCancelFtSessionResponse(): sessionHandle = " + sessionHandle + ", result = " + translateFtResult);
        RejectFtSessionParams rejectFtSessionParams = remove.mCancelParams;
        if (rejectFtSessionParams != null && (message = rejectFtSessionParams.mCallback) != null) {
            this.mResipImHandler.sendCallback(message, new FtResult(translateFtResult, Integer.valueOf(sessionHandle)));
            remove.mCancelParams.mCallback = null;
        }
        remove.mCancelParams = null;
    }

    private void handleRejectFtSessionResponse(CloseSessionResponse closeSessionResponse) {
        Message message;
        int sessionHandle = (int) closeSessionResponse.sessionHandle();
        Result translateFtResult = ResipTranslatorCollection.translateFtResult(closeSessionResponse.imError(), null);
        ResipImHandler.FtSession remove = this.mResipImHandler.mFtSessions.remove(Integer.valueOf(sessionHandle));
        if (remove == null) {
            Log.e(this.LOG_TAG, "handleRejectFtSessionResponse(): cannot find session sessionHandle = " + sessionHandle + ", result = " + translateFtResult);
            return;
        }
        Log.i(this.LOG_TAG, "handleRejectFtSessionResponse(): sessionHandle = " + sessionHandle + ", result = " + translateFtResult);
        RejectFtSessionParams rejectFtSessionParams = remove.mCancelParams;
        if (rejectFtSessionParams == null || (message = rejectFtSessionParams.mCallback) == null) {
            return;
        }
        this.mResipImHandler.sendCallback(message, new FtResult(translateFtResult, Integer.valueOf(sessionHandle)));
        remove.mCancelParams.mCallback = null;
    }

    private void handleRejectImSessionResponse(CloseSessionResponse closeSessionResponse) {
        int sessionHandle = (int) closeSessionResponse.sessionHandle();
        ImError imError = ResipTranslatorCollection.translateImResult(closeSessionResponse.imError(), null).getImError();
        ResipImHandler.ImSession remove = this.mResipImHandler.mSessions.remove(Integer.valueOf(sessionHandle));
        if (remove == null) {
            Log.e(this.LOG_TAG, "handleRejectImSessionResponse(): no session found sessionHandle = " + sessionHandle + ", error = " + imError);
            return;
        }
        Log.i(this.LOG_TAG, "handleRejectImSessionResponse(): sessionHandle = " + sessionHandle + ", chat id = " + remove.mChatId + ", error = " + imError);
        Message message = remove.mRejectCallback;
        if (message != null) {
            this.mResipImHandler.sendCallback(message, new RejectImSessionResult(Integer.valueOf(sessionHandle), imError));
            remove.mRejectCallback = null;
        }
    }

    private void handleCloseImSessionResponse(CloseSessionResponse closeSessionResponse, Message message) {
        Log.e(this.LOG_TAG, "handleCloseImSessionResponse() called!");
        int sessionHandle = (int) closeSessionResponse.sessionHandle();
        ImError imError = ResipTranslatorCollection.translateImResult(closeSessionResponse.imError(), null).getImError();
        ResipImHandler.ImSession imSession = this.mResipImHandler.mSessions.get(Integer.valueOf(sessionHandle));
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleCloseImSessionResponse(): no session found sessionHandle = " + sessionHandle + ", error = " + imError);
            return;
        }
        IMSLog.s(this.LOG_TAG, "handleCloseImSessionResponse(): sessionHandle = " + sessionHandle + ", chat id = " + imSession.mChatId + ", error = " + imError);
        if (message != null) {
            this.mResipImHandler.sendCallback(message, new StopImSessionResult(Integer.valueOf(sessionHandle), imError));
        }
    }

    private void handleChangeGroupChatSubjectResponse(UpdateParticipantsResponse updateParticipantsResponse) {
        IMSLog.s(this.LOG_TAG, "handleChangeGcSubjectResponse: " + updateParticipantsResponse);
        ResipImHandler.ImSession imSession = this.mResipImHandler.mSessions.get(Integer.valueOf((int) updateParticipantsResponse.sessionHandle()));
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleChangeGcSubjectResponse(): no session found");
            return;
        }
        if (TextUtils.isEmpty(updateParticipantsResponse.reqKey())) {
            Log.e(this.LOG_TAG, "handleChangeGcSubjectResponse(): response has no request key");
            return;
        }
        ImError imError = ResipTranslatorCollection.translateImResult(updateParticipantsResponse.imError(), null).getImError();
        Message remove = imSession.mChangeGCSubjectCallbacks.remove(updateParticipantsResponse.reqKey());
        if (remove != null) {
            this.mResipImHandler.sendCallback(remove, imError);
        } else {
            Log.e(this.LOG_TAG, "handleChangeGcSubjectResponse(): no callback set");
        }
    }

    private void handleChangeGroupChatIconResponse(UpdateParticipantsResponse updateParticipantsResponse) {
        IMSLog.s(this.LOG_TAG, "handleChangeGroupChatIconResponse: " + updateParticipantsResponse);
        ResipImHandler.ImSession imSession = this.mResipImHandler.mSessions.get(Integer.valueOf((int) updateParticipantsResponse.sessionHandle()));
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleChangeGroupChatIconResponse(): no session found");
            return;
        }
        ImError imError = ResipTranslatorCollection.translateImResult(updateParticipantsResponse.imError(), null).getImError();
        Message remove = imSession.mChangeGCIconCallbacks.remove(updateParticipantsResponse.reqKey());
        if (remove != null) {
            this.mResipImHandler.sendCallback(remove, imError);
        } else {
            Log.e(this.LOG_TAG, "handleChangeGroupChatIconResponse(): no callback set");
        }
    }

    private void handleChangeGroupChatAliasResponse(UpdateParticipantsResponse updateParticipantsResponse) {
        IMSLog.s(this.LOG_TAG, "handleChangeGcAliasResponse: " + updateParticipantsResponse);
        ResipImHandler.ImSession imSession = this.mResipImHandler.mSessions.get(Integer.valueOf((int) updateParticipantsResponse.sessionHandle()));
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleChangeGcAliasResponse(): no session found");
            return;
        }
        if (TextUtils.isEmpty(updateParticipantsResponse.reqKey())) {
            Log.e(this.LOG_TAG, "handleChangeGcAliasResponse(): response has no request key");
            return;
        }
        ImError imError = ResipTranslatorCollection.translateImResult(updateParticipantsResponse.imError(), null).getImError();
        Message remove = imSession.mChangeGCAliasCallbacks.remove(updateParticipantsResponse.reqKey());
        if (remove != null) {
            this.mResipImHandler.sendCallback(remove, imError);
        } else {
            Log.e(this.LOG_TAG, "handleChangeGcAliasResponse(): no callback set");
        }
    }

    private void handleSubscribeGroupChatListResponse(GeneralResponse generalResponse) {
        IMSLog.s(this.LOG_TAG, "handleSubscribeGroupChatListResponse: " + generalResponse);
    }

    private void handleSubscribeGroupChatInfoResponse(GeneralResponse generalResponse) {
        IMSLog.s(this.LOG_TAG, "handleSubscribeGroupChatInfoResponse: " + generalResponse);
    }

    private void handleSendMessageRevokeInternalResponse(Message message, SendMessageRevokeInternalResponse sendMessageRevokeInternalResponse) {
        Log.i(this.LOG_TAG, "handleSendMessageRevokeInternalResponse() msg : " + message + "response : " + sendMessageRevokeInternalResponse);
        if (sendMessageRevokeInternalResponse == null) {
            return;
        }
        ImError imError = ResipTranslatorCollection.translateImResult(sendMessageRevokeInternalResponse.imError(), null).getImError();
        if (message != null) {
            this.mResipImHandler.sendCallback(message, imError);
        }
    }

    private void handleSetMoreInfoToSipUAResponse(GeneralResponse generalResponse) {
        Log.i(this.LOG_TAG, "handleSetMoreInfoToSipUAResponse: " + generalResponse);
    }

    private void handleNotify(Notify notify) {
        int notifyid = notify.notifyid();
        if (notifyid != 19000) {
            switch (notifyid) {
                case Id.NOTIFY_IM_SESSION_STARTED /* 11001 */:
                    handleImSessionStartedNotify(notify);
                    break;
                case Id.NOTIFY_IM_SESSION_CLOSED /* 11002 */:
                    handleImSessionClosedNotify(notify);
                    break;
                case Id.NOTIFY_IM_SESSION_ESTABLISHED /* 11003 */:
                    handleImSessionEstablishedNotify(notify);
                    break;
                case Id.NOTIFY_IM_INCOMING_SESSION /* 11004 */:
                    handleIncomingSessionNotify(notify);
                    break;
                case Id.NOTIFY_IM_MESSAGE_RECEIVED /* 11005 */:
                    handleImMessageReceivedNotify(notify);
                    break;
                default:
                    switch (notifyid) {
                        case Id.NOTIFY_IM_COMPOSING_STATUS_RECEIVED /* 11007 */:
                            handleImComposingStatusReceivedNotify(notify);
                            break;
                        case Id.NOTIFY_IM_MESSAGE_REPORT_RECEIVED /* 11008 */:
                            handleImMessageReportReceivedNotify(notify);
                            break;
                        case Id.NOTIFY_GROUP_CHAT_SUBSCRIBE_STATUS /* 11009 */:
                            handleGroupChatSubscribeStatusNotify();
                            break;
                        case Id.NOTIFY_GROUP_LIST_UPDATED /* 11010 */:
                            handleGroupChatListNotify(notify);
                            break;
                        case Id.NOTIFY_GROUP_INFO_UPDATED /* 11011 */:
                            handleGroupChatInfoNotify(notify);
                            break;
                        case Id.NOTIFY_IM_SESSION_PROVISIONAL_RESPONSE /* 11012 */:
                            handleImSessionProvisionalResponseNotify(notify);
                            break;
                        case Id.NOTIFY_MESSAGE_REVOKE_RESPONSE_RECEIVED /* 11013 */:
                            handleMessageRevokeResponseReceivedNotify(notify);
                            break;
                        case Id.NOTIFY_SEND_MESSAGE_REVOKE_RESPONSE /* 11014 */:
                            handleSendMessageRevokeResponseNotify(notify);
                            break;
                        default:
                            switch (notifyid) {
                                case Id.NOTIFY_FT_SESSION_STARTED /* 12001 */:
                                    handleFtSessionStartedNotify(notify);
                                    break;
                                case Id.NOTIFY_FT_SESSION_CLOSED /* 12002 */:
                                    handleFtSessionClosedNotify(notify);
                                    break;
                                case Id.NOTIFY_FT_SESSION_ESTABLISHED /* 12003 */:
                                    handleFtSessionEstablishedNotify(notify);
                                    break;
                                case Id.NOTIFY_FT_PROGRESS /* 12004 */:
                                    handleFtProgressNotify(notify);
                                    break;
                                case Id.NOTIFY_FT_INCOMING_SESSION /* 12005 */:
                                    handleFtIncomingSessionNotify(notify);
                                    break;
                                default:
                                    switch (notifyid) {
                                        case Id.NOTIFY_REPORT_CHATBOT_AS_SPAM_RESPONSE /* 20011 */:
                                            handleReportChatbotAsSpamResponseNotify(notify);
                                            break;
                                        case Id.NOTIFY_REQUEST_CHATBOT_ANONYMIZE_RESPONSE /* 20012 */:
                                            handleRequestChatbotAnonymizeResp(notify);
                                            break;
                                        case Id.NOTIFY_REQUEST_CHATBOT_ANONYMIZE_RESPONSE_RECEIVED /* 20013 */:
                                            handleRequestChatbotAnonymizeNotify(notify);
                                            break;
                                        default:
                                            Log.w(this.LOG_TAG, "handleNotify(): unexpected id");
                                            break;
                                    }
                            }
                    }
            }
        }
        handleImConferenceInfoUpdateNotify(notify);
    }

    private void handleIncomingSessionNotify(Notify notify) {
        boolean z;
        Log.i(this.LOG_TAG, "handleIncomingSessionNotify()");
        if (notify.notiType() != 31) {
            Log.e(this.LOG_TAG, "handleIncomingSessionNotify(): invalid notify");
            return;
        }
        ImSessionInvited imSessionInvited = (ImSessionInvited) notify.noti(new ImSessionInvited());
        UserAgent userAgent = this.mResipImHandler.getUserAgent((int) imSessionInvited.userHandle());
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "handleIncomingSessionNotify(): UserAgent not found. UserHandle = " + ((int) imSessionInvited.userHandle()));
            return;
        }
        ImSessionParam session = imSessionInvited.session();
        if (session == null) {
            Log.e(this.LOG_TAG, "handleIncomingSessionNotify(): invalid notify data");
            return;
        }
        BaseSessionData baseSessionData = session.baseSessionData();
        ImMessageParam messageParam = imSessionInvited.messageParam();
        if (baseSessionData == null) {
            Log.e(this.LOG_TAG, "handleIncomingSessionNotify(): invalid notify data");
            return;
        }
        ImIncomingSessionEvent imIncomingSessionEvent = new ImIncomingSessionEvent();
        Integer valueOf = Integer.valueOf((int) baseSessionData.sessionHandle());
        imIncomingSessionEvent.mRawHandle = valueOf;
        imIncomingSessionEvent.mOwnImsi = this.mResipImHandler.getImsiByUserAgent(userAgent);
        imIncomingSessionEvent.mIsDeferred = imSessionInvited.isDeferred();
        imIncomingSessionEvent.mIsForStoredNoti = imSessionInvited.isForStoredNoti();
        this.mResipImHandler.mSessions.put(valueOf, new ResipImHandler.ImSession(valueOf.intValue(), imSessionInvited.isDeferred(), userAgent.getHandle()));
        imIncomingSessionEvent.mIsMsgRevokeSupported = session.isMsgRevokeSupported();
        imIncomingSessionEvent.mIsMsgFallbackSupported = session.isMsgFallbackSupported();
        imIncomingSessionEvent.mIsSendOnly = session.isSendOnly();
        imIncomingSessionEvent.mIsChatbotRole = baseSessionData.isChatbotParticipant();
        ImsUri parse = ImsUri.parse(session.sender());
        imIncomingSessionEvent.mInitiator = parse;
        if (!imIncomingSessionEvent.mIsChatbotRole || parse == null || parse.getParam("tk") == null) {
            z = false;
        } else {
            z = imIncomingSessionEvent.mInitiator.getParam("tk").equals("on");
            imIncomingSessionEvent.mInitiator.removeParam("tk");
        }
        imIncomingSessionEvent.mIsTokenUsed = z;
        if (imIncomingSessionEvent.mIsDeferred && !baseSessionData.isConference()) {
            ArrayList arrayList = new ArrayList();
            imIncomingSessionEvent.mRecipients = arrayList;
            arrayList.add(imIncomingSessionEvent.mInitiator);
        } else {
            imIncomingSessionEvent.mRecipients = new ArrayList();
            for (int i = 0; i < baseSessionData.receiversLength(); i++) {
                imIncomingSessionEvent.mRecipients.add(ImsUri.parse(baseSessionData.receivers(i)));
            }
        }
        if (baseSessionData.isConference()) {
            imIncomingSessionEvent.mSessionType = ImIncomingSessionEvent.ImSessionType.CONFERENCE;
            imIncomingSessionEvent.mIsClosedGroupChat = session.isClosedGroupchat();
            imIncomingSessionEvent.mSessionUri = ImsUri.parse(baseSessionData.sessionUri());
            if (imSessionInvited.createdBy() != null && !imSessionInvited.createdBy().isEmpty()) {
                imIncomingSessionEvent.mCreatedBy = ImsUri.parse(imSessionInvited.createdBy());
            }
            if (imSessionInvited.invitedBy() != null && !imSessionInvited.invitedBy().isEmpty()) {
                imIncomingSessionEvent.mInvitedBy = ImsUri.parse(imSessionInvited.invitedBy());
            }
            IMSLog.s(this.LOG_TAG, "handleIncomingSessionNotify(): session uri = " + imIncomingSessionEvent.mSessionUri);
        } else {
            imIncomingSessionEvent.mSessionType = ImIncomingSessionEvent.ImSessionType.SINGLE;
            imIncomingSessionEvent.mInitiatorAlias = baseSessionData.userAlias();
            imIncomingSessionEvent.mSessionUri = null;
        }
        if (baseSessionData.sdpContentType() != null && !baseSessionData.sdpContentType().isEmpty()) {
            imIncomingSessionEvent.mSdpContentType = baseSessionData.sdpContentType();
        }
        if (baseSessionData.serviceId() != null && !baseSessionData.serviceId().isEmpty()) {
            imIncomingSessionEvent.mServiceId = baseSessionData.serviceId();
        }
        if (messageParam != null && messageParam.imdn() != null) {
            imIncomingSessionEvent.mDeviceId = messageParam.imdn().deviceId();
        }
        imIncomingSessionEvent.mSubject = (session.subject() == null || session.subject().isEmpty()) ? null : session.subject();
        imIncomingSessionEvent.mServiceType = ImIncomingSessionEvent.ImServiceType.NORMAL;
        imIncomingSessionEvent.mIsParticipantNtfy = false;
        imIncomingSessionEvent.mConversationId = (baseSessionData.conversationId() == null || baseSessionData.conversationId().isEmpty()) ? null : baseSessionData.conversationId();
        imIncomingSessionEvent.mContributionId = (baseSessionData.contributionId() == null || baseSessionData.contributionId().isEmpty()) ? null : baseSessionData.contributionId();
        if (baseSessionData.sessionReplaces() != null && !baseSessionData.sessionReplaces().isEmpty()) {
            imIncomingSessionEvent.mPrevContributionId = baseSessionData.sessionReplaces();
        } else {
            imIncomingSessionEvent.mPrevContributionId = null;
        }
        imIncomingSessionEvent.mInReplyToContributionId = baseSessionData.inReplyToContributionId();
        imIncomingSessionEvent.mRemoteMsrpAddress = (imSessionInvited.remoteMsrpAddr() == null || imSessionInvited.remoteMsrpAddr().isEmpty()) ? null : imSessionInvited.remoteMsrpAddr();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < session.acceptTypesLength(); i2++) {
            String acceptTypes = session.acceptTypes(i2);
            if (acceptTypes != null) {
                arrayList2.addAll(Arrays.asList(acceptTypes.split(" ")));
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (int i3 = 0; i3 < session.acceptWrappedTypesLength(); i3++) {
            String acceptWrappedTypes = session.acceptWrappedTypes(i3);
            if (acceptWrappedTypes != null) {
                arrayList3.addAll(Arrays.asList(acceptWrappedTypes.split(" ")));
            }
        }
        imIncomingSessionEvent.mAcceptTypes = arrayList2;
        imIncomingSessionEvent.mAcceptWrappedTypes = arrayList3;
        if (imSessionInvited.messageParam() != null) {
            ImIncomingMessageEvent parseImMessageParam = parseImMessageParam(imSessionInvited.messageParam());
            if (parseImMessageParam != null) {
                parseImMessageParam.mRawHandle = valueOf;
                parseImMessageParam.mUserAlias = baseSessionData.userAlias();
                Log.i(this.LOG_TAG, "handleIncomingSessionNotify(): " + parseImMessageParam);
            }
            imIncomingSessionEvent.mReceivedMessage = parseImMessageParam;
        }
        AsyncResult asyncResult = new AsyncResult(null, imIncomingSessionEvent, null);
        if (this.mResipImHandler.mIncomingSessionRegistrants.size() != 0) {
            this.mResipImHandler.mIncomingSessionRegistrants.notifyRegistrants(asyncResult);
        } else {
            Log.i(this.LOG_TAG, "handleIncomingSessionNotify(): Empty registrants, reject handle=" + valueOf);
            this.mResipImHandler.handleRejectImSessionRequest(new RejectImSessionParams(null, valueOf, ImSessionRejectReason.FORBIDDEN, null));
        }
        Log.i(this.LOG_TAG, "handleIncomingSessionNotify(): " + imIncomingSessionEvent);
    }

    private void handleImSessionStartedNotify(Notify notify) {
        int i;
        Result result;
        ImError imError;
        Message message;
        ResipImHandler.ImSession imSession;
        ResipImResponseHandler resipImResponseHandler;
        ImError imError2;
        Message message2;
        if (notify.notiType() != 28) {
            Log.e(this.LOG_TAG, "handleImSessionStartedNotify(): invalid notify");
            return;
        }
        SessionStarted sessionStarted = (SessionStarted) notify.noti(new SessionStarted());
        int sessionHandle = (int) sessionStarted.sessionHandle();
        String sessionUri = sessionStarted.sessionUri();
        String displayName = sessionStarted.displayName();
        Result translateImResult = ResipTranslatorCollection.translateImResult(sessionStarted.imError(), sessionStarted.warningHdr());
        ImError imError3 = translateImResult.getImError();
        IMSLog.s(this.LOG_TAG, "handleImSessionStartedNotify(): sessionHandle = " + sessionHandle + ", error = " + imError3 + ", sessionUri = " + sessionUri + ", displayName = " + displayName);
        ResipImHandler.ImSession imSession2 = this.mResipImHandler.mSessions.get(Integer.valueOf(sessionHandle));
        if (imSession2 == null) {
            Log.e(this.LOG_TAG, "handleImSessionStartedNotify(): Unknown session handle: " + sessionHandle);
            return;
        }
        Message message3 = imSession2.mStartSyncCallback;
        if (message3 != null) {
            this.mResipImHandler.sendCallback(message3, Integer.valueOf(sessionHandle));
            imSession2.mStartSyncCallback = null;
        }
        if (imSession2.mStartCallback != null) {
            RetryHdr retryHdr = sessionStarted.retryHdr();
            AllowHdr allowHdr = sessionStarted.allowHdr();
            ResipImHandler resipImHandler = this.mResipImHandler;
            Message message4 = imSession2.mStartCallback;
            ImsUri parse = TextUtils.isEmpty(sessionUri) ? null : ImsUri.parse(sessionUri);
            Integer valueOf = Integer.valueOf(sessionHandle);
            int retryTimer = retryHdr != null ? retryHdr.retryTimer() : 0;
            String text = allowHdr != null ? allowHdr.text() : null;
            boolean isMsgRevokeSupported = sessionStarted.isMsgRevokeSupported();
            boolean isMsgFallbackSupported = sessionStarted.isMsgFallbackSupported();
            boolean isChatbotRole = sessionStarted.isChatbotRole();
            if (displayName == null) {
                displayName = "";
            }
            result = translateImResult;
            i = sessionHandle;
            message = null;
            imError = imError3;
            imSession = imSession2;
            resipImHandler.sendCallback(message4, new StartImSessionResult(translateImResult, parse, valueOf, retryTimer, text, isMsgRevokeSupported, isMsgFallbackSupported, isChatbotRole, displayName));
            imSession.mStartCallback = null;
        } else {
            i = sessionHandle;
            result = translateImResult;
            imError = imError3;
            message = null;
            imSession = imSession2;
        }
        Message message5 = imSession.mFirstMessageCallback;
        if (message5 != null) {
            imError2 = imError;
            if (imError2 == ImError.BUSY_HERE) {
                message2 = message;
                resipImResponseHandler = this;
                Log.i(resipImResponseHandler.LOG_TAG, "handle 486 response as SUCCESS for the message in INVITE.");
                resipImResponseHandler.mResipImHandler.sendCallback(imSession.mFirstMessageCallback, new SendMessageResult(Integer.valueOf(i), new Result(ImError.SUCCESS, result)));
            } else {
                message2 = message;
                resipImResponseHandler = this;
                resipImResponseHandler.mResipImHandler.sendCallback(message5, new SendMessageResult(Integer.valueOf(i), result));
            }
            imSession.mFirstMessageCallback = message2;
        } else {
            resipImResponseHandler = this;
            imError2 = imError;
        }
        if (imError2 != ImError.SUCCESS) {
            resipImResponseHandler.mResipImHandler.mSessions.remove(Integer.valueOf(i));
        }
    }

    private void handleImSessionClosedNotify(Notify notify) {
        ImsUri imsUri;
        if (notify.notiType() != 29) {
            Log.e(this.LOG_TAG, "handleImSessionClosedNotify(): invalid notify");
            return;
        }
        Log.i(this.LOG_TAG, "handleImSessionClosedNotify");
        SessionClosed sessionClosed = (SessionClosed) notify.noti(new SessionClosed());
        int sessionHandle = (int) sessionClosed.sessionHandle();
        Result translateImResult = ResipTranslatorCollection.translateImResult(sessionClosed.imError(), sessionClosed.reasonHdr());
        ImError imError = translateImResult.getImError();
        String referredBy = sessionClosed.referredBy();
        if (referredBy != null) {
            referredBy = referredBy.replaceAll("\\<|\\>", "");
            IMSLog.s(this.LOG_TAG, "handleImSessionClosedNotify() Referred By =" + IMSLog.numberChecker(referredBy));
            imsUri = ImsUri.parse(referredBy);
        } else {
            imsUri = null;
        }
        ResipImHandler.ImSession imSession = this.mResipImHandler.mSessions.get(Integer.valueOf(sessionHandle));
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleImSessionClosedNotify(): no session found sessionHandle = " + sessionHandle + ", error = " + imError);
            return;
        }
        IMSLog.s(this.LOG_TAG, "handleImSessionClosedNotify(): sessionHandle = " + sessionHandle + ", chat id = " + imSession.mChatId + ", error = " + imError + ", referredBy = " + referredBy);
        if (imError != ImError.NORMAL_RELEASE && imError != ImError.NORMAL_RELEASE_GONE && imError != ImError.CONFERENCE_PARTY_BOOTED && imError != ImError.CONFERENCE_CALL_COMPLETED) {
            Log.e(this.LOG_TAG, "handleImSessionClosedNotify(): abnormal close");
            Message message = imSession.mStartSyncCallback;
            if (message != null) {
                this.mResipImHandler.sendCallback(message, Integer.valueOf(sessionHandle));
                imSession.mStartSyncCallback = null;
            }
            Message message2 = imSession.mStartCallback;
            if (message2 != null) {
                this.mResipImHandler.sendCallback(message2, new StartImSessionResult(translateImResult, null, Integer.valueOf(sessionHandle)));
                imSession.mStartCallback = null;
            }
            Message message3 = imSession.mFirstMessageCallback;
            if (message3 != null && imError == ImError.DEVICE_UNREGISTERED) {
                this.mResipImHandler.sendCallback(message3, new SendMessageResult(Integer.valueOf(sessionHandle), translateImResult));
                imSession.mFirstMessageCallback = null;
            } else if (message3 != null) {
                this.mResipImHandler.sendCallback(message3, new SendMessageResult(Integer.valueOf(sessionHandle), new Result(ImError.SUCCESS, translateImResult)));
                imSession.mFirstMessageCallback = null;
            }
            Message message4 = imSession.mAcceptCallback;
            if (message4 != null) {
                this.mResipImHandler.sendCallback(message4, new StartImSessionResult(translateImResult, null, Integer.valueOf(sessionHandle)));
                imSession.mAcceptCallback = null;
            }
        }
        this.mResipImHandler.mSessionClosedRegistrants.notifyRegistrants(new AsyncResult(null, new ImSessionClosedEvent(Integer.valueOf(sessionHandle), imSession.mChatId, translateImResult, imsUri), null));
        ResipImHandler.ImSession remove = this.mResipImHandler.mSessions.remove(Integer.valueOf(sessionHandle));
        if (remove != null) {
            for (Message message5 : remove.mSendMessageCallbacks.values()) {
                if (message5 != null) {
                    this.mResipImHandler.sendCallback(message5, new SendMessageResult(Integer.valueOf(sessionHandle), new Result(ImError.NETWORK_ERROR, Result.Type.NETWORK_ERROR)));
                }
            }
            for (Message message6 : remove.mAddParticipantsCallbacks.values()) {
                if (message6 != null) {
                    this.mResipImHandler.sendCallback(message6, ImError.NETWORK_ERROR);
                }
            }
            for (Message message7 : remove.mRemoveParticipantsCallbacks.values()) {
                if (message7 != null) {
                    this.mResipImHandler.sendCallback(message7, ImError.NETWORK_ERROR);
                }
            }
            for (Message message8 : remove.mChangeGCAliasCallbacks.values()) {
                if (message8 != null) {
                    this.mResipImHandler.sendCallback(message8, ImError.NETWORK_ERROR);
                }
            }
            for (Message message9 : remove.mChangeGCLeaderCallbacks.values()) {
                if (message9 != null) {
                    this.mResipImHandler.sendCallback(message9, ImError.NETWORK_ERROR);
                }
            }
            for (Message message10 : remove.mChangeGCSubjectCallbacks.values()) {
                if (message10 != null) {
                    this.mResipImHandler.sendCallback(message10, ImError.NETWORK_ERROR);
                }
            }
            for (Message message11 : remove.mChangeGCIconCallbacks.values()) {
                if (message11 != null) {
                    this.mResipImHandler.sendCallback(message11, ImError.NETWORK_ERROR);
                }
            }
        }
    }

    private void handleImMessageReceivedNotify(Notify notify) {
        if (notify.notiType() != 32) {
            Log.e(this.LOG_TAG, "handleImMessageReceivedNotify(): invalid notify");
            return;
        }
        ImMessageReceived imMessageReceived = (ImMessageReceived) notify.noti(new ImMessageReceived());
        BaseSessionData sessionData = imMessageReceived.sessionData();
        ImMessageParam messageParam = imMessageReceived.messageParam();
        if (sessionData == null || messageParam == null) {
            Log.e(this.LOG_TAG, "handleImMessageReceivedNotify(): invalid message notify data");
            return;
        }
        int sessionHandle = (int) sessionData.sessionHandle();
        Log.i(this.LOG_TAG, "handleImMessageReceivedNotify(): sessionId = " + sessionHandle);
        ResipImHandler.ImSession imSession = this.mResipImHandler.mSessions.get(Integer.valueOf(sessionHandle));
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleImMessageReceivedNotify(): Unknown session handle - " + sessionHandle);
            return;
        }
        ImIncomingMessageEvent parseImMessageParam = parseImMessageParam(messageParam);
        if (parseImMessageParam != null) {
            parseImMessageParam.mRawHandle = Integer.valueOf(sessionHandle);
            parseImMessageParam.mChatId = imSession.mChatId;
            IMSLog.s(this.LOG_TAG, "handleImMessageReceivedNotify(): " + parseImMessageParam);
            this.mResipImHandler.mIncomingMessageRegistrants.notifyRegistrants(new AsyncResult(null, parseImMessageParam, null));
        }
    }

    private void handleImComposingStatusReceivedNotify(Notify notify) {
        String str;
        ImsUri parse;
        Log.i(this.LOG_TAG, "handleImComposingStatusReceivedNotify");
        if (notify.notiType() != 33) {
            Log.e(this.LOG_TAG, "handleImComposingStatusReceivedNotify(): invalid notify");
            return;
        }
        ImComposingStatusReceived imComposingStatusReceived = (ImComposingStatusReceived) notify.noti(new ImComposingStatusReceived());
        ResipImHandler.ImSession imSession = this.mResipImHandler.mSessions.get(Integer.valueOf((int) imComposingStatusReceived.sessionId()));
        if (imSession == null) {
            Log.e(this.LOG_TAG, "Unkown session id " + imComposingStatusReceived.sessionId());
            return;
        }
        ImComposingStatus status = imComposingStatusReceived.status();
        if (status == null) {
            Log.e(this.LOG_TAG, "handleImComposingStatusReceivedNotify(): invalid notify data");
            return;
        }
        String uri = imComposingStatusReceived.uri();
        if (imComposingStatusReceived.userAlias() == null || imComposingStatusReceived.userAlias().isEmpty()) {
            str = null;
        } else {
            Log.i(this.LOG_TAG, "handleImComposingStatusReceivedNotify: found userAlias");
            str = imComposingStatusReceived.userAlias();
        }
        if (!TextUtils.isEmpty(uri) && (parse = ImsUri.parse((uri = uri.replaceAll("\\<|\\>", "")))) != null && parse.getParam("tk") != null) {
            parse.removeParam("tk");
            uri = parse.toString();
        }
        ImComposingEvent imComposingEvent = new ImComposingEvent(imSession.mChatId, uri, str, status.isActive(), (int) status.interval());
        IMSLog.s(this.LOG_TAG, "handleImComposingStatusReceivedNotify: " + imComposingEvent);
        this.mResipImHandler.mComposingRegistrants.notifyRegistrants(new AsyncResult(null, imComposingEvent, null));
    }

    private void handleFtSessionStartedNotify(Notify notify) {
        if (notify.notiType() != 28) {
            Log.e(this.LOG_TAG, "handleFtSessionStartedNotify(): invalid notify");
            return;
        }
        SessionStarted sessionStarted = (SessionStarted) notify.noti(new SessionStarted());
        int sessionHandle = (int) sessionStarted.sessionHandle();
        Result translateFtResult = ResipTranslatorCollection.translateFtResult(sessionStarted.imError(), sessionStarted.warningHdr());
        IMSLog.s(this.LOG_TAG, "handleFtSessionStartedNotify(): sessionHandle = " + sessionHandle + ", error = " + translateFtResult);
        ResipImHandler.FtSession ftSession = this.mResipImHandler.mFtSessions.get(Integer.valueOf(sessionHandle));
        if (ftSession == null) {
            Log.e(this.LOG_TAG, "handleFtSessionStartedNotify(): Unknown session handle: " + sessionStarted.sessionHandle());
            return;
        }
        if (translateFtResult.getImError() == ImError.SUCCESS) {
            Log.i(this.LOG_TAG, "handleFtSessionStartedNotify(): SUCCESS");
            return;
        }
        if (ftSession.mStartCallback != null) {
            RetryHdr retryHdr = sessionStarted.retryHdr();
            this.mResipImHandler.sendCallback(ftSession.mStartCallback, new FtResult(translateFtResult, Integer.valueOf(sessionHandle), retryHdr != null ? retryHdr.retryTimer() : 0));
            ftSession.mStartCallback = null;
        }
        this.mResipImHandler.mFtSessions.remove(Integer.valueOf(sessionHandle));
    }

    private void handleFtProgressNotify(Notify notify) {
        if (notify.notiType() != 41) {
            Log.e(this.LOG_TAG, "handleFtProgressNotify(): invalid notify");
            return;
        }
        FtProgress ftProgress = (FtProgress) notify.noti(new FtProgress());
        int sessionHandle = (int) ftProgress.sessionHandle();
        ResipImHandler.FtSession ftSession = this.mResipImHandler.mFtSessions.get(Integer.valueOf(sessionHandle));
        if (ftSession == null) {
            Log.e(this.LOG_TAG, "Unkown session id " + ftProgress.sessionHandle());
            return;
        }
        FtTransferProgressEvent.State translateFtProgressState = ResipTranslatorCollection.translateFtProgressState((int) ftProgress.state());
        if (translateFtProgressState != FtTransferProgressEvent.State.TRANSFERRING) {
            this.mResipImHandler.mFtSessions.remove(Integer.valueOf(sessionHandle));
        }
        Result translateFtResult = ResipTranslatorCollection.translateFtResult(ftProgress.imError(), ftProgress.reasonHdr());
        IMSLog.s(this.LOG_TAG, "handleFtProgressNotify(): session handle = " + sessionHandle + ", state = " + ftProgress.state() + ", fail reason = " + translateFtResult + ", total = " + ftProgress.total() + ", transferred = " + ftProgress.transferred());
        if (this.mResipImHandler.mTransferProgressRegistrants.size() != 0) {
            this.mResipImHandler.mTransferProgressRegistrants.notifyRegistrants(new AsyncResult(null, new FtTransferProgressEvent(Integer.valueOf(sessionHandle), ftSession.mId, ftProgress.total(), ftProgress.transferred(), translateFtProgressState, translateFtResult), null));
            return;
        }
        Log.e(this.LOG_TAG, "No TransferProgressRegistrant for handle = " + ftSession.mHandle);
    }

    private void handleFtIncomingSessionNotify(Notify notify) {
        if (notify.notiType() != 42) {
            Log.e(this.LOG_TAG, "handleFtIncomingSessionNotify(): invalid notify");
            return;
        }
        FtIncomingSession ftIncomingSession = (FtIncomingSession) notify.noti(new FtIncomingSession());
        BaseSessionData session = ftIncomingSession.session();
        FtPayloadParam payload = ftIncomingSession.payload();
        if (payload == null || session == null) {
            Log.e(this.LOG_TAG, "handleFtIncomingSessionNotify(): invalid notify data");
            return;
        }
        int sessionHandle = (int) session.sessionHandle();
        Log.i(this.LOG_TAG, "handleFtIncomingSessionNotify(): session handle = " + sessionHandle);
        UserAgent userAgent = this.mResipImHandler.getUserAgent((int) ftIncomingSession.userHandle());
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "handleFtIncomingSessionNotify(): UserAgent not found. UserHandle = " + ((int) ftIncomingSession.userHandle()));
            return;
        }
        ResipImHandler.FtSession ftSession = new ResipImHandler.FtSession();
        ftSession.mHandle = sessionHandle;
        ftSession.mUaHandle = (int) ftIncomingSession.userHandle();
        this.mResipImHandler.mFtSessions.put(Integer.valueOf(sessionHandle), ftSession);
        FtIncomingSessionEvent ftIncomingSessionEvent = new FtIncomingSessionEvent();
        ftIncomingSessionEvent.mRawHandle = Integer.valueOf(sessionHandle);
        ftIncomingSessionEvent.mIsSlmSvcMsg = false;
        ftIncomingSessionEvent.mOwnImsi = this.mResipImHandler.getImsiByUserAgent(userAgent);
        ftIncomingSessionEvent.mSenderUri = ImsUri.parse(session.sessionUri());
        ftIncomingSessionEvent.mParticipants = new ArrayList();
        if (session.isConference()) {
            ftIncomingSessionEvent.mParticipants.add(ftIncomingSessionEvent.mSenderUri);
        } else {
            for (int i = 0; i < session.receiversLength(); i++) {
                ftIncomingSessionEvent.mParticipants.add(ImsUri.parse(session.receivers(i)));
            }
        }
        ftIncomingSessionEvent.mUserAlias = session.userAlias();
        ftIncomingSessionEvent.mSdpContentType = session.sdpContentType();
        ftIncomingSessionEvent.mIsConference = session.isConference();
        boolean silenceSupported = payload.silenceSupported();
        ftIncomingSessionEvent.mIsRoutingMsg = silenceSupported;
        if (silenceSupported) {
            Log.i(this.LOG_TAG, "handleFtIncomingSessionNotify -> routing message");
            ftIncomingSessionEvent.mRequestUri = ImsUri.parse(payload.requestUri());
            ftIncomingSessionEvent.mPAssertedId = ImsUri.parse(payload.pAssertedId());
            ftIncomingSessionEvent.mReceiver = ImsUri.parse(payload.receiver());
        }
        ImFileAttr fileAttr = payload.fileAttr();
        if (fileAttr != null) {
            ftIncomingSessionEvent.mContentType = fileAttr.contentType();
            ftIncomingSessionEvent.mFileName = (String) Optional.ofNullable(fileAttr.name()).map(new Function() { // from class: com.sec.internal.ims.core.handler.secims.ResipImResponseHandler$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    String lambda$handleFtIncomingSessionNotify$0;
                    lambda$handleFtIncomingSessionNotify$0 = ResipImResponseHandler.lambda$handleFtIncomingSessionNotify$0((String) obj);
                    return lambda$handleFtIncomingSessionNotify$0;
                }
            }).orElse(null);
            ftIncomingSessionEvent.mFilePath = fileAttr.path();
            ftIncomingSessionEvent.mFileSize = (int) fileAttr.size();
            ftIncomingSessionEvent.mStart = (int) fileAttr.start();
            ftIncomingSessionEvent.mEnd = (int) fileAttr.end();
            ftIncomingSessionEvent.mTimeDuration = (int) fileAttr.timeDuration();
        }
        ImFileAttr iconAttr = payload.iconAttr();
        if (iconAttr != null && iconAttr.path() != null && !iconAttr.path().isEmpty()) {
            ftIncomingSessionEvent.mThumbPath = iconAttr.path();
        } else {
            ftIncomingSessionEvent.mThumbPath = null;
        }
        ftIncomingSessionEvent.mContributionId = session.contributionId();
        if (session.conversationId() != null) {
            ftIncomingSessionEvent.mConversationId = session.conversationId();
        }
        if (session.inReplyToContributionId() != null) {
            ftIncomingSessionEvent.mInReplyToConversationId = session.inReplyToContributionId();
        }
        ftIncomingSessionEvent.mFileTransferId = session.id();
        ftIncomingSessionEvent.mPush = payload.isPush();
        if (payload.imdn() != null) {
            ftIncomingSessionEvent.mImdnId = payload.imdn().messageId();
            try {
                String datetime = payload.imdn().datetime();
                ftIncomingSessionEvent.mImdnTime = !TextUtils.isEmpty(datetime) ? Iso8601.parse(datetime) : new Date();
            } catch (ParseException e) {
                e.printStackTrace();
                ftIncomingSessionEvent.mImdnTime = new Date();
            }
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < payload.imdn().notiLength(); i2++) {
                arrayList.add(Integer.valueOf(payload.imdn().noti(i2)));
            }
            ftIncomingSessionEvent.mDisposition = ResipTranslatorCollection.translateStackImdnNoti(arrayList);
            ftIncomingSessionEvent.mDeviceId = payload.imdn().deviceId();
            ftIncomingSessionEvent.mOriginalToHdr = payload.imdn().originalToHdr();
            ftIncomingSessionEvent.mRecRouteList = new ArrayList();
            for (int i3 = 0; i3 < payload.imdn().recRouteLength(); i3++) {
                ImdnRecRoute recRoute = payload.imdn().recRoute(i3);
                if (recRoute != null) {
                    ftIncomingSessionEvent.mRecRouteList.add(new ImImdnRecRoute(ftIncomingSessionEvent.mImdnId, recRoute.uri(), recRoute.name()));
                }
            }
        }
        ftIncomingSessionEvent.mCpimNamespaces = new ImCpimNamespaces();
        for (int i4 = 0; i4 < payload.cpimNamespacesLength(); i4++) {
            CpimNamespace cpimNamespaces = payload.cpimNamespaces(i4);
            if (cpimNamespaces != null) {
                ftIncomingSessionEvent.mCpimNamespaces.addNamespace(cpimNamespaces.name(), cpimNamespaces.uri());
                for (int i5 = 0; i5 < cpimNamespaces.headersLength(); i5++) {
                    Pair headers = cpimNamespaces.headers(i5);
                    if (headers != null && !TextUtils.isEmpty(headers.key())) {
                        ftIncomingSessionEvent.mCpimNamespaces.getNamespace(cpimNamespaces.name()).addHeader(headers.key(), headers.value());
                    }
                }
            }
        }
        IMSLog.s(this.LOG_TAG, "handleFtIncomingSessionNotify(): " + ftIncomingSessionEvent);
        if (this.mResipImHandler.mIncomingFileTransferRegistrants.size() != 0) {
            this.mResipImHandler.mIncomingFileTransferRegistrants.notifyRegistrants(new AsyncResult(null, ftIncomingSessionEvent, null));
            return;
        }
        Log.i(this.LOG_TAG, "Empty registrants, reject handle=" + sessionHandle);
        this.mResipImHandler.handleRejectFtSessionRequest(new RejectFtSessionParams(Integer.valueOf(sessionHandle), null, FtRejectReason.FORBIDDEN_SERVICE_NOT_AUTHORIZED, ftIncomingSessionEvent.mFileTransferId));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$handleFtIncomingSessionNotify$0(String str) {
        try {
            return URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException | IllegalArgumentException e) {
            e.printStackTrace();
            return str;
        }
    }

    private void handleImSessionEstablishedNotify(Notify notify) {
        if (notify.notiType() != 30) {
            Log.e(this.LOG_TAG, "handleImSessionEstablishedNotify(): invalid notify");
            return;
        }
        SessionEstablished sessionEstablished = (SessionEstablished) notify.noti(new SessionEstablished());
        int sessionHandle = (int) sessionEstablished.sessionHandle();
        ImError imError = ResipTranslatorCollection.translateImResult(sessionEstablished.imError(), null).getImError();
        ResipImHandler.ImSession imSession = this.mResipImHandler.mSessions.get(Integer.valueOf(sessionHandle));
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleImSessionEstablishedNotify(): no session found sessionHandle = " + sessionHandle + ", error = " + imError);
            return;
        }
        IMSLog.s(this.LOG_TAG, "handleImSessionEstablishedNotify(): sessionHandle = " + sessionHandle + ", chat id = " + imSession.mChatId + ", error = " + imError);
        if (imError != ImError.SUCCESS) {
            Log.e(this.LOG_TAG, "handleImSessionEstablishedNotify(): failed");
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < sessionEstablished.acceptContentLength(); i++) {
            String acceptContent = sessionEstablished.acceptContent(i);
            if (acceptContent != null) {
                arrayList.addAll(Arrays.asList(acceptContent.split(" ")));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < sessionEstablished.acceptWrappedContentLength(); i2++) {
            String acceptWrappedContent = sessionEstablished.acceptWrappedContent(i2);
            if (acceptWrappedContent != null) {
                arrayList2.addAll(Arrays.asList(acceptWrappedContent.split(" ")));
            }
        }
        ArrayList arrayList3 = new ArrayList();
        arrayList3.addAll(arrayList);
        arrayList3.addAll(arrayList2);
        IMSLog.s(this.LOG_TAG, "handleStartImMediaResponse(): acceptContent = " + arrayList3);
        EnumSet<SupportedFeature> noneOf = EnumSet.noneOf(SupportedFeature.class);
        Iterator it = arrayList3.iterator();
        while (it.hasNext()) {
            SupportedFeature translateAcceptContent = ResipTranslatorCollection.translateAcceptContent((String) it.next());
            if (translateAcceptContent != null) {
                noneOf.add(translateAcceptContent);
            }
        }
        imSessionEstablished(sessionHandle, null, noneOf, arrayList, arrayList2);
    }

    private void imSessionEstablished(int i, String str, EnumSet<SupportedFeature> enumSet, List<String> list, List<String> list2) {
        IMSLog.s(this.LOG_TAG, "imSessionEstablished(): sessionHandle = " + i + ", session uri = " + str + ", features = " + enumSet);
        ResipImHandler.ImSession imSession = this.mResipImHandler.mSessions.get(Integer.valueOf(i));
        if (imSession == null) {
            return;
        }
        String str2 = imSession.mChatId;
        IMSLog.s(this.LOG_TAG, "imSessionEstablished(): chatid = " + str2);
        if (str2 == null) {
            Log.e(this.LOG_TAG, "imSessionEstablished(): Failed to find chat id.");
        } else {
            this.mResipImHandler.mSessionEstablishedRegistrants.notifyRegistrants(new AsyncResult(null, new ImSessionEstablishedEvent(Integer.valueOf(i), str2, str == null ? null : ImsUri.parse(str), enumSet, list, list2), null));
        }
    }

    private void handleFtSessionEstablishedNotify(Notify notify) {
        if (notify.notiType() != 30) {
            Log.e(this.LOG_TAG, "handleFtSessionEstablishedNotify(): invalid notify");
            return;
        }
        SessionEstablished sessionEstablished = (SessionEstablished) notify.noti(new SessionEstablished());
        int sessionHandle = (int) sessionEstablished.sessionHandle();
        Result translateFtResult = ResipTranslatorCollection.translateFtResult(sessionEstablished.imError(), null);
        ResipImHandler.FtSession ftSession = this.mResipImHandler.mFtSessions.get(Integer.valueOf(sessionHandle));
        if (ftSession == null) {
            Log.e(this.LOG_TAG, "handleFtSessionEstablishedNotify(): no session found sessionHandle = " + sessionHandle + ", result = " + translateFtResult);
            return;
        }
        IMSLog.s(this.LOG_TAG, "handleFtSessionEstablishedNotify(): sessionHandle = " + sessionHandle + ", result = " + translateFtResult);
        if (translateFtResult.getImError() != ImError.SUCCESS) {
            Log.e(this.LOG_TAG, "handleFtSessionEstablishedNotify(): failed");
            return;
        }
        Message message = ftSession.mStartCallback;
        if (message != null) {
            this.mResipImHandler.sendCallback(message, new FtResult(translateFtResult, Integer.valueOf(sessionHandle)));
            ftSession.mStartCallback = null;
            return;
        }
        Message message2 = ftSession.mAcceptCallback;
        if (message2 != null) {
            this.mResipImHandler.sendCallback(message2, new FtResult(translateFtResult, Integer.valueOf(sessionHandle)));
            ftSession.mAcceptCallback = null;
        }
    }

    private void handleFtSessionClosedNotify(Notify notify) {
        if (notify.notiType() != 29) {
            Log.e(this.LOG_TAG, "handleFtSessionClosedNotify(): invalid notify");
            return;
        }
        SessionClosed sessionClosed = (SessionClosed) notify.noti(new SessionClosed());
        int sessionHandle = (int) sessionClosed.sessionHandle();
        Result translateFtResult = ResipTranslatorCollection.translateFtResult(sessionClosed.imError(), null);
        ResipImHandler.FtSession ftSession = this.mResipImHandler.mFtSessions.get(Integer.valueOf(sessionHandle));
        if (ftSession == null) {
            Log.e(this.LOG_TAG, "handleFtSessionClosedNotify(): no session found sessionHandle = " + sessionHandle + ", error = " + translateFtResult);
            return;
        }
        IMSLog.s(this.LOG_TAG, "handleFtSessionClosedNotify(): sessionHandle = " + sessionHandle + ", error = " + translateFtResult);
        if (translateFtResult.getImError() != ImError.SUCCESS) {
            Log.e(this.LOG_TAG, "handleFtSessionClosedNotify(): abnormal close");
            Message message = ftSession.mStartCallback;
            if (message != null) {
                this.mResipImHandler.sendCallback(message, new FtResult(translateFtResult, Integer.valueOf(sessionHandle)));
                ftSession.mStartCallback = null;
            }
            Message message2 = ftSession.mAcceptCallback;
            if (message2 != null) {
                this.mResipImHandler.sendCallback(message2, new FtResult(translateFtResult, Integer.valueOf(sessionHandle)));
                ftSession.mAcceptCallback = null;
            } else if (this.mResipImHandler.mTransferProgressRegistrants.size() != 0) {
                IMSLog.s(this.LOG_TAG, "handleFtSessionClosedNotify(): post cancelled to progress registrants");
                this.mResipImHandler.mTransferProgressRegistrants.notifyRegistrants(new AsyncResult(null, new FtTransferProgressEvent(Integer.valueOf(sessionHandle), ftSession.mId, -1L, -1L, FtTransferProgressEvent.State.CANCELED, translateFtResult), null));
            } else {
                Log.e(this.LOG_TAG, "No TransferProgressRegistrant for handle = " + ftSession.mHandle);
            }
        } else {
            IMSLog.s(this.LOG_TAG, "handleFtSessionClosedNotify(): get unexpected SessionClosed notify");
        }
        this.mResipImHandler.mFtSessions.remove(Integer.valueOf(sessionHandle));
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x02e5  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x017b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02f1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void handleImConferenceInfoUpdateNotify(com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify r23) {
        /*
            Method dump skipped, instructions count: 899
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.handler.secims.ResipImResponseHandler.handleImConferenceInfoUpdateNotify(com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify):void");
    }

    private int parseReasonHeader(String str) {
        int i;
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            int indexOf = str.indexOf("cause=");
            if (indexOf == -1 || (i = indexOf + 9) > str.length()) {
                return 0;
            }
            String substring = str.substring(indexOf + 6, i);
            IMSLog.s(this.LOG_TAG, "parseReasonHeader : " + substring);
            return Integer.parseInt(substring);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return 0;
        }
    }

    private void handleImMessageReportReceivedNotify(Notify notify) {
        if (notify.notiType() != 36) {
            Log.e(this.LOG_TAG, "handleImMessageReportReceivedNotify(): invalid notify");
            return;
        }
        ImMessageReportReceived imMessageReportReceived = (ImMessageReportReceived) notify.noti(new ImMessageReportReceived());
        int sessionId = (int) imMessageReportReceived.sessionId();
        String str = this.mResipImHandler.mSessions.get(Integer.valueOf(sessionId)).mChatId;
        String imdnMessageId = imMessageReportReceived.imdnMessageId();
        Result translateImResult = ResipTranslatorCollection.translateImResult(imMessageReportReceived.imError(), null);
        boolean isChat = imMessageReportReceived.isChat();
        IMSLog.s(this.LOG_TAG, "handleImMessageReportReceivedNotify(): sessionId = " + sessionId + " chatId = " + str + " imdnId = " + imdnMessageId + " result = " + translateImResult + " isChat = " + isChat);
        if (translateImResult.getImError() != ImError.SUCCESS) {
            if (isChat) {
                this.mResipImHandler.mMessageFailedRegistrants.notifyRegistrants(new AsyncResult(null, new SendMessageFailedEvent(Integer.valueOf(sessionId), str, imdnMessageId, translateImResult), null));
            } else {
                this.mResipImHandler.mImdnFailedRegistrants.notifyRegistrants(new AsyncResult(null, new SendImdnFailedEvent(Integer.valueOf(sessionId), str, imdnMessageId, translateImResult), null));
            }
        }
    }

    private void handleGroupChatSubscribeStatusNotify() {
        IMSLog.s(this.LOG_TAG, "handleGroupChatSubscribeStatusNotify()");
    }

    private void handleGroupChatListNotify(Notify notify) {
        IMSLog.s(this.LOG_TAG, "handleGroupChatListNotify()");
        GroupChatListUpdated groupChatListUpdated = (GroupChatListUpdated) notify.noti(new GroupChatListUpdated());
        int version = (int) groupChatListUpdated.version();
        UserAgent userAgent = this.mResipImHandler.getUserAgent((int) groupChatListUpdated.uaHandle());
        if (userAgent == null) {
            Log.e(this.LOG_TAG, "handleGcListNotify(): User Agent not found!");
            return;
        }
        int groupChatsLength = groupChatListUpdated.groupChatsLength();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < groupChatsLength; i++) {
            GroupChatInfo groupChats = groupChatListUpdated.groupChats(i);
            if (groupChats != null) {
                arrayList.add(new ImIncomingGroupChatListEvent.Entry(Uri.parse(groupChats.uri()), groupChats.conversationId(), groupChats.subject()));
            }
        }
        this.mResipImHandler.mGroupChatListRegistrants.notifyRegistrants(new AsyncResult(null, new ImIncomingGroupChatListEvent(version, arrayList, this.mResipImHandler.getImsiByUserAgent(userAgent)), null));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:31|(1:33)(2:86|(9:88|35|36|(1:38)(1:83)|39|40|(3:42|(4:45|(6:47|(8:49|(1:51)|52|(1:54)|55|(2:59|60)|64|(2:68|69))|73|(1:75)|76|77)(1:79)|78|43)|80)|81|82)(1:89))|34|35|36|(0)(0)|39|40|(0)|81|82) */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x00fb, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x00fc, code lost:
    
        r0.printStackTrace();
        r0 = new java.util.Date();
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ec A[Catch: ParseException -> 0x00fb, TryCatch #2 {ParseException -> 0x00fb, blocks: (B:36:0x00e6, B:38:0x00ec, B:83:0x00f5), top: B:35:0x00e6 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00f5 A[Catch: ParseException -> 0x00fb, TRY_LEAVE, TryCatch #2 {ParseException -> 0x00fb, blocks: (B:36:0x00e6, B:38:0x00ec, B:83:0x00f5), top: B:35:0x00e6 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void handleGroupChatInfoNotify(com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify r20) {
        /*
            Method dump skipped, instructions count: 556
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.handler.secims.ResipImResponseHandler.handleGroupChatInfoNotify(com.sec.internal.ims.core.handler.secims.imsCommonStruc.Notify):void");
    }

    private void handleImSessionProvisionalResponseNotify(Notify notify) {
        if (notify.notiType() != 28) {
            Log.e(this.LOG_TAG, "handleImSessionProvisionalResponseNotify(): invalid notify");
            return;
        }
        SessionStarted sessionStarted = (SessionStarted) notify.noti(new SessionStarted());
        int sessionHandle = (int) sessionStarted.sessionHandle();
        Result translateImResult = ResipTranslatorCollection.translateImResult(sessionStarted.imError(), null);
        ImError imError = translateImResult.getImError();
        IMSLog.s(this.LOG_TAG, "handleImSessionProvisionalResponseNotify(): sessionHandle = " + sessionHandle + ", response = " + imError);
        ResipImHandler.ImSession imSession = this.mResipImHandler.mSessions.get(Integer.valueOf(sessionHandle));
        if (imSession == null) {
            Log.e(this.LOG_TAG, "handleImSessionProvisionalResponseNotify(): Unknown session handle: " + sessionHandle);
            return;
        }
        Message message = imSession.mStartSyncCallback;
        if (message != null) {
            this.mResipImHandler.sendCallback(message, Integer.valueOf(sessionHandle));
            imSession.mStartSyncCallback = null;
        }
        Message message2 = imSession.mStartProvisionalCallback;
        if (message2 != null) {
            this.mResipImHandler.sendCallback(Message.obtain(message2), new StartImSessionResult(translateImResult, null, Integer.valueOf(sessionHandle), true));
        }
        if (imSession.mFirstMessageCallback != null) {
            Log.i(this.LOG_TAG, "handleImSessionProvisionalResponseNotify(): handle provisional response as SUCCESS for the message in INVITE. sessionHandle = " + sessionHandle + ", response = " + imError);
            this.mResipImHandler.sendCallback(Message.obtain(imSession.mFirstMessageCallback), new SendMessageResult((Object) Integer.valueOf(sessionHandle), new Result(ImError.SUCCESS, translateImResult), true));
        }
    }

    private void handleMessageRevokeResponseReceivedNotify(Notify notify) {
        if (notify.notiType() != 46) {
            Log.e(this.LOG_TAG, "handleMessageRevokeResponseReceivedNotify(): invalid notify");
            return;
        }
        MessageRevokeResponseReceived messageRevokeResponseReceived = (MessageRevokeResponseReceived) notify.noti(new MessageRevokeResponseReceived());
        ImsUri parse = ImsUri.parse(messageRevokeResponseReceived.uri());
        if (parse == null) {
            Log.i(this.LOG_TAG, "Invalid remote uri, return. uri=" + messageRevokeResponseReceived.uri());
            return;
        }
        MessageRevokeResponse messageRevokeResponse = new MessageRevokeResponse(parse, messageRevokeResponseReceived.imdnMessageId(), messageRevokeResponseReceived.result());
        IMSLog.s(this.LOG_TAG, "handleMessageRevokeResponseReceivedNotify: " + messageRevokeResponse);
        this.mResipImHandler.mMessageRevokeResponseRegistransts.notifyRegistrants(new AsyncResult(null, messageRevokeResponse, null));
    }

    private void handleSendMessageRevokeResponseNotify(Notify notify) {
        if (notify.notiType() != 47) {
            Log.e(this.LOG_TAG, "handleSendMessageRevokeResponseNotify(): invalid notify");
            return;
        }
        SendMessageRevokeResponse sendMessageRevokeResponse = (SendMessageRevokeResponse) notify.noti(new SendMessageRevokeResponse());
        if (sendMessageRevokeResponse == null) {
            return;
        }
        MessageRevokeResponse messageRevokeResponse = new MessageRevokeResponse(null, sendMessageRevokeResponse.imdnMessageId(), ResipTranslatorCollection.translateImResult(sendMessageRevokeResponse.imError(), null).getImError() == ImError.SUCCESS);
        IMSLog.s(this.LOG_TAG, "handleSendMessageRevokeResponseNotify: " + messageRevokeResponse);
        this.mResipImHandler.mSendMessageRevokeResponseRegistransts.notifyRegistrants(new AsyncResult(null, messageRevokeResponse, null));
    }

    private void handleRequestChatbotAnonymizeResp(Notify notify) {
        if (notify.notiType() != 48) {
            Log.e(this.LOG_TAG, "handleRequestChatbotAnonymizeResp(): invalid notify");
            return;
        }
        RequestChatbotAnonymizeResponse requestChatbotAnonymizeResponse = (RequestChatbotAnonymizeResponse) notify.noti(new RequestChatbotAnonymizeResponse());
        if (requestChatbotAnonymizeResponse == null) {
            return;
        }
        ChatbotAnonymizeRespEvent chatbotAnonymizeRespEvent = new ChatbotAnonymizeRespEvent(requestChatbotAnonymizeResponse.uri(), ResipTranslatorCollection.translateImResult(requestChatbotAnonymizeResponse.imError(), null).getImError(), requestChatbotAnonymizeResponse.commandId(), requestChatbotAnonymizeResponse.retryAfter());
        IMSLog.s(this.LOG_TAG, "ChatbotAnonymizeRespEvent: " + chatbotAnonymizeRespEvent);
        this.mResipImHandler.mChatbotAnonymizeResponseRegistrants.notifyRegistrants(new AsyncResult(null, chatbotAnonymizeRespEvent, null));
    }

    private void handleRequestChatbotAnonymizeNotify(Notify notify) {
        String str;
        String str2;
        if (notify.notiType() != 49) {
            Log.e(this.LOG_TAG, "handleSetChatbotAnonymizeResponseNotify(): invalid notify");
            return;
        }
        RequestChatbotAnonymizeResponseReceived requestChatbotAnonymizeResponseReceived = (RequestChatbotAnonymizeResponseReceived) notify.noti(new RequestChatbotAnonymizeResponseReceived());
        String uri = requestChatbotAnonymizeResponseReceived.uri();
        String result = requestChatbotAnonymizeResponseReceived.result();
        ChatbotXmlUtils chatbotXmlUtils = ChatbotXmlUtils.getInstance();
        String str3 = "";
        if (result != null) {
            try {
                str = chatbotXmlUtils.parseXml(result, "AM/result");
                try {
                    str3 = chatbotXmlUtils.parseXml(result, "AM/Command-ID");
                } catch (Exception e) {
                    e = e;
                    e.printStackTrace();
                    str2 = str3;
                    str3 = str;
                    ChatbotAnonymizeNotifyEvent chatbotAnonymizeNotifyEvent = new ChatbotAnonymizeNotifyEvent(uri, str3, str2);
                    IMSLog.s(this.LOG_TAG, "ChatbotAnonymizeNotifyEvent: " + chatbotAnonymizeNotifyEvent);
                    this.mResipImHandler.mChatbotAnonymizeNotifyRegistrants.notifyRegistrants(new AsyncResult(null, chatbotAnonymizeNotifyEvent, null));
                }
            } catch (Exception e2) {
                e = e2;
                str = "";
            }
            str2 = str3;
            str3 = str;
        } else {
            str2 = "";
        }
        ChatbotAnonymizeNotifyEvent chatbotAnonymizeNotifyEvent2 = new ChatbotAnonymizeNotifyEvent(uri, str3, str2);
        IMSLog.s(this.LOG_TAG, "ChatbotAnonymizeNotifyEvent: " + chatbotAnonymizeNotifyEvent2);
        this.mResipImHandler.mChatbotAnonymizeNotifyRegistrants.notifyRegistrants(new AsyncResult(null, chatbotAnonymizeNotifyEvent2, null));
    }

    private void handleReportChatbotAsSpamResponseNotify(Notify notify) {
        if (notify.notiType() != 50) {
            Log.e(this.LOG_TAG, "handleChatbotAsSpamResp(): invalid notify");
            return;
        }
        ReportChatbotAsSpamResponse reportChatbotAsSpamResponse = (ReportChatbotAsSpamResponse) notify.noti(new ReportChatbotAsSpamResponse());
        if (reportChatbotAsSpamResponse == null) {
            return;
        }
        ReportChatbotAsSpamRespEvent reportChatbotAsSpamRespEvent = new ReportChatbotAsSpamRespEvent(reportChatbotAsSpamResponse.uri(), reportChatbotAsSpamResponse.requestId(), ResipTranslatorCollection.translateImResult(reportChatbotAsSpamResponse.imError(), null).getImError());
        IMSLog.s(this.LOG_TAG, "handleReportChatbotAsSpamResponseNotify: " + reportChatbotAsSpamRespEvent);
        this.mResipImHandler.mReportChatbotAsSpamRespRegistrants.notifyRegistrants(new AsyncResult(null, reportChatbotAsSpamRespEvent, null));
    }

    private ImIncomingMessageEvent parseImMessageParam(ImMessageParam imMessageParam) {
        ImIncomingMessageEvent imIncomingMessageEvent = new ImIncomingMessageEvent();
        if (imMessageParam == null) {
            return imIncomingMessageEvent;
        }
        ArrayList arrayList = new ArrayList();
        if (imMessageParam.imdn() != null) {
            imIncomingMessageEvent.mImdnMessageId = imMessageParam.imdn().messageId();
            for (int i = 0; i < imMessageParam.imdn().notiLength(); i++) {
                arrayList.add(Integer.valueOf(imMessageParam.imdn().noti(i)));
            }
            imIncomingMessageEvent.mDispositionNotification = ResipTranslatorCollection.translateStackImdnNoti(arrayList);
            try {
                if (!TextUtils.isEmpty(imIncomingMessageEvent.mImdnMessageId)) {
                    String datetime = imMessageParam.imdn().datetime();
                    imIncomingMessageEvent.mImdnTime = !TextUtils.isEmpty(datetime) ? Iso8601.parse(datetime) : new Date();
                }
            } catch (ParseException e) {
                e.printStackTrace();
                imIncomingMessageEvent.mImdnTime = new Date();
            }
            if (!TextUtils.isEmpty(imMessageParam.imdn().originalToHdr())) {
                imIncomingMessageEvent.mOriginalToHdr = imMessageParam.imdn().originalToHdr();
            }
            if (imMessageParam.imdn().recRouteLength() > 0) {
                imIncomingMessageEvent.mImdnRecRouteList = new ArrayList();
                for (int i2 = 0; i2 < imMessageParam.imdn().recRouteLength(); i2++) {
                    ImdnRecRoute recRoute = imMessageParam.imdn().recRoute(i2);
                    if (recRoute != null) {
                        IMSLog.s(this.LOG_TAG, "imdn route: " + recRoute.uri());
                        IMSLog.s(this.LOG_TAG, "mImdnMessageId: " + imIncomingMessageEvent.mImdnMessageId);
                        imIncomingMessageEvent.mImdnRecRouteList.add(new ImImdnRecRoute(imIncomingMessageEvent.mImdnMessageId, recRoute.uri(), recRoute.name()));
                    }
                }
            }
        }
        imIncomingMessageEvent.mContentType = imMessageParam.contentType();
        String adjustMessageBody = ResipTranslatorCollection.adjustMessageBody(imMessageParam.body(), imIncomingMessageEvent.mContentType);
        imIncomingMessageEvent.mBody = adjustMessageBody;
        if (adjustMessageBody == null) {
            return null;
        }
        String sender = imMessageParam.sender();
        if (sender != null) {
            String replaceAll = sender.replaceAll("\\<|\\>", "");
            IMSLog.s(this.LOG_TAG, "parseImMessageParam sender=" + replaceAll);
            imIncomingMessageEvent.mSender = ImsUri.parse(replaceAll);
        }
        boolean silenceSupported = imMessageParam.silenceSupported();
        imIncomingMessageEvent.mIsRoutingMsg = silenceSupported;
        if (silenceSupported) {
            Log.i(this.LOG_TAG, "parseImMessageParam -> routing message");
            imIncomingMessageEvent.mRequestUri = ImsUri.parse(imMessageParam.requestUri());
            imIncomingMessageEvent.mPAssertedId = ImsUri.parse(imMessageParam.pAssertedId());
            imIncomingMessageEvent.mReceiver = ImsUri.parse(imMessageParam.receiver());
        }
        imIncomingMessageEvent.mUserAlias = imMessageParam.userAlias();
        imIncomingMessageEvent.mCpimNamespaces = new ImCpimNamespaces();
        for (int i3 = 0; i3 < imMessageParam.cpimNamespacesLength(); i3++) {
            CpimNamespace cpimNamespaces = imMessageParam.cpimNamespaces(i3);
            if (cpimNamespaces != null) {
                imIncomingMessageEvent.mCpimNamespaces.addNamespace(cpimNamespaces.name(), cpimNamespaces.uri());
                for (int i4 = 0; i4 < cpimNamespaces.headersLength(); i4++) {
                    Pair headers = cpimNamespaces.headers(i4);
                    if (headers != null && !TextUtils.isEmpty(headers.key())) {
                        imIncomingMessageEvent.mCpimNamespaces.getNamespace(cpimNamespaces.name()).addHeader(headers.key(), headers.value());
                    }
                }
            }
        }
        if (imMessageParam.ccParticipantsLength() > 0) {
            imIncomingMessageEvent.mCcParticipants = new ArrayList();
            for (int i5 = 0; i5 < imMessageParam.ccParticipantsLength(); i5++) {
                imIncomingMessageEvent.mCcParticipants.add(ImsUri.parse(imMessageParam.ccParticipants(i5)));
            }
            IMSLog.s(this.LOG_TAG, "parseImMessageParam event.mCcParticipants=" + imIncomingMessageEvent.mCcParticipants);
        }
        return imIncomingMessageEvent;
    }
}
