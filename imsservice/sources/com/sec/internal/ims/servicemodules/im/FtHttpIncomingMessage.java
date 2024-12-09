package com.sec.internal.ims.servicemodules.im;

import android.content.Context;
import android.database.Cursor;
import android.os.Environment;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.servicemodules.im.FtHttpFileInfo;
import com.sec.internal.constants.ims.servicemodules.im.ImCacheAction;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.constants.ims.servicemodules.im.reason.CancelReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.FtRejectReason;
import com.sec.internal.helper.BlockedNumberUtil;
import com.sec.internal.helper.FilePathGenerator;
import com.sec.internal.helper.IState;
import com.sec.internal.helper.PreciseAlarmManager;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.State;
import com.sec.internal.helper.translate.FileExtensionTranslator;
import com.sec.internal.helper.translate.MappingTranslator;
import com.sec.internal.helper.translate.TranslationException;
import com.sec.internal.ims.config.util.AKAEapAuthHelper;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.servicemodules.im.DownloadFileTask;
import com.sec.internal.ims.servicemodules.im.FtMessage;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.servicemodules.im.util.AsyncFileTask;
import com.sec.internal.ims.servicemodules.im.util.FtHttpXmlParser;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.log.IMSLog;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class FtHttpIncomingMessage extends FtMessage {
    private static final int EVENT_DOWNLOAD_CANCELED = 103;
    private static final int EVENT_DOWNLOAD_COMPLETED = 102;
    private static final int EVENT_DOWNLOAD_PROGRESS = 101;
    private static final int EVENT_DOWNLOAD_THUMBNAIL_CANCELED = 106;
    private static final int EVENT_DOWNLOAD_THUMBNAIL_COMPLETED = 104;
    private static final int EVENT_DOWNLOAD_THUMBNAIL_FAILED = 105;
    private static final int EVENT_RETRY_DOWNLOAD = 107;
    private static final int EVENT_RETRY_THUMBNAIL_DOWNLOAD = 108;
    private URL mDataUrl;
    private static final String LOG_TAG = FtHttpIncomingMessage.class.getSimpleName();
    private static final Pattern GSMA_FT_HTTP_URL_PATTERN = Pattern.compile("https://ftcontentserver\\.rcs\\.mnc\\d{3}\\.mcc\\d{3}\\.pub\\.3gppnetwork\\.org");

    @Override // com.sec.internal.ims.servicemodules.im.FtMessage
    public int getTransferMech() {
        return 1;
    }

    protected FtHttpIncomingMessage(Builder<?> builder) {
        super(builder);
        Log.i(LOG_TAG, "data url=" + IMSLog.checker(((Builder) builder).mDataUrl));
        try {
            if (((Builder) builder).mDataUrl != null) {
                this.mDataUrl = new URL(((Builder) builder).mDataUrl);
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
            throw new IllegalArgumentException("Malformed data url");
        }
    }

    public static Builder<?> builder() {
        return new Builder2();
    }

    public void receiveTransfer() {
        FtMessage.FtStateMachine ftStateMachine = this.mStateMachine;
        ftStateMachine.sendMessage(ftStateMachine.obtainMessage(10));
    }

    @Override // com.sec.internal.ims.servicemodules.im.FtMessage
    public boolean isAutoResumable() {
        return !getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.CANCEL_FOR_DEREGI_PROMPTLY);
    }

    public String getDataUrl() {
        URL url = this.mDataUrl;
        if (url != null) {
            return url.toString();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isFtHttpUrlTrusted(String str) {
        if (GSMA_FT_HTTP_URL_PATTERN.matcher(str).find()) {
            return true;
        }
        Iterator<String> it = getRcsStrategy().stringArraySetting(RcsPolicySettings.RcsPolicy.FTHTTP_NON_STANDARD_URLS).iterator();
        while (it.hasNext()) {
            if (str.startsWith(it.next())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sec.internal.ims.servicemodules.im.FtMessage
    protected FtMessage.FtStateMachine createFtStateMachine(String str, Looper looper) {
        return new FtHttpStateMachine("FtHttpIncomingMessage#" + str, looper);
    }

    public Map<String, String> getParamsforDl(String str) {
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(this.mConfig.getFtHttpDLUrl())) {
            hashMap.put(ImsConstants.FtDlParams.FT_DL_URL, str);
            if (!TextUtils.isEmpty(this.mImdnId)) {
                hashMap.put("id", this.mImdnId);
            }
            if (!TextUtils.isEmpty(this.mConversationId)) {
                hashMap.put(ImsConstants.FtDlParams.FT_DL_CONV_ID, this.mConversationId);
            }
            ImsUri imsUri = this.mRemoteUri;
            if (imsUri != null) {
                hashMap.put(ImsConstants.FtDlParams.FT_DL_OTHER_PARTY, imsUri.toString());
            }
        }
        if (this.mMnoStrategy.boolSetting(RcsPolicySettings.RcsPolicy.IS_EAP_SUPPORTED)) {
            hashMap.put("EAP_ID", AKAEapAuthHelper.composeRootNai(this.mConfig.getPhoneId()));
        }
        return hashMap;
    }

    public static abstract class Builder<T extends Builder<T>> extends FtMessage.Builder<T> {
        private String mDataUrl;

        public T dataUrl(String str) {
            this.mDataUrl = str;
            return (T) self();
        }

        @Override // com.sec.internal.ims.servicemodules.im.FtMessage.Builder
        public FtHttpIncomingMessage build() {
            return new FtHttpIncomingMessage(this);
        }
    }

    private static class Builder2 extends Builder<Builder2> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.sec.internal.ims.servicemodules.im.MessageBase.Builder
        public Builder2 self() {
            return this;
        }

        private Builder2() {
        }
    }

    private class FtHttpStateMachine extends FtMessage.FtStateMachine {
        private final AcceptingState mAcceptingState;
        private final CanceledState mCanceledState;
        private final CompletedState mCompletedState;
        protected final MappingTranslator<Integer, State> mDbStateTranslator;
        private final DefaultState mDefaultState;
        private final InProgressState mInProgressState;
        private final InitialState mInitialState;
        protected final MappingTranslator<IState, Integer> mStateTranslator;

        protected FtHttpStateMachine(String str, Looper looper) {
            super(str, looper);
            this.mDefaultState = new DefaultState();
            InitialState initialState = new InitialState();
            this.mInitialState = initialState;
            AcceptingState acceptingState = new AcceptingState();
            this.mAcceptingState = acceptingState;
            InProgressState inProgressState = new InProgressState();
            this.mInProgressState = inProgressState;
            CanceledState canceledState = new CanceledState();
            this.mCanceledState = canceledState;
            CompletedState completedState = new CompletedState();
            this.mCompletedState = completedState;
            this.mStateTranslator = new MappingTranslator.Builder().map(initialState, 0).map(acceptingState, 1).map(inProgressState, 2).map(canceledState, 4).map(completedState, 3).buildTranslator();
            this.mDbStateTranslator = new MappingTranslator.Builder().map(0, initialState).map(1, acceptingState).map(2, inProgressState).map(4, canceledState).map(3, completedState).buildTranslator();
        }

        @Override // com.sec.internal.ims.servicemodules.im.FtMessage.FtStateMachine
        protected void initState(State state) {
            addState(this.mDefaultState);
            addState(this.mInitialState, this.mDefaultState);
            addState(this.mAcceptingState, this.mDefaultState);
            addState(this.mInProgressState, this.mDefaultState);
            addState(this.mCanceledState, this.mDefaultState);
            addState(this.mCompletedState, this.mDefaultState);
            Log.i(FtHttpIncomingMessage.LOG_TAG, "setting current state as " + state.getName() + " for messageId : " + FtHttpIncomingMessage.this.mId);
            setInitialState(state);
            start();
        }

        @Override // com.sec.internal.ims.servicemodules.im.FtMessage.FtStateMachine
        protected State getState(Integer num) {
            return this.mDbStateTranslator.translate(num);
        }

        @Override // com.sec.internal.ims.servicemodules.im.FtMessage.FtStateMachine
        protected int getStateId() {
            Integer translate = this.mStateTranslator.translate(getCurrentState());
            if (translate == null) {
                return 0;
            }
            return translate.intValue();
        }

        private final class DefaultState extends State {
            private DefaultState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                if (message.what == 13) {
                    FtHttpIncomingMessage.this.onSendDeliveredNotificationDone();
                    return true;
                }
                if (FtHttpStateMachine.this.getCurrentState() != null) {
                    Log.e(FtHttpIncomingMessage.LOG_TAG, "Unexpected event, current state is " + FtHttpStateMachine.this.getCurrentState().getName() + " event: " + message.what);
                }
                return false;
            }
        }

        private final class InitialState extends State {
            DownloadFileTask thumbnailDownloadTask;

            private InitialState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                Log.i(FtHttpIncomingMessage.LOG_TAG, getName() + " enter msgId : " + FtHttpIncomingMessage.this.mId);
                FtHttpIncomingMessage.this.updateStatus(ImConstants.Status.UNREAD);
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                IState iState;
                int i = message.what;
                if (i == 4) {
                    FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                    ftHttpStateMachine.transitionTo(ftHttpStateMachine.mInProgressState);
                    return true;
                }
                if (i == 8) {
                    FtHttpStateMachine ftHttpStateMachine2 = FtHttpStateMachine.this;
                    FtHttpIncomingMessage.this.mCancelReason = CancelReason.CANCELED_BY_USER;
                    ftHttpStateMachine2.transitionTo(ftHttpStateMachine2.mCanceledState);
                    return true;
                }
                if (i == 10) {
                    FtHttpIncomingMessage ftHttpIncomingMessage = FtHttpIncomingMessage.this;
                    ftHttpIncomingMessage.mListener.onNotifyCloudMsgFtEvent(ftHttpIncomingMessage);
                    if (FtHttpIncomingMessage.this.needToAcquireNetworkForFT()) {
                        FtHttpIncomingMessage ftHttpIncomingMessage2 = FtHttpIncomingMessage.this;
                        ftHttpIncomingMessage2.acquireNetworkForFT(ftHttpIncomingMessage2.getRcsStrategy().intSetting(RcsPolicySettings.RcsPolicy.FT_NET_CAPABILITY));
                        return true;
                    }
                    handleReceiverTransferEvent();
                    return true;
                }
                if (i == 108) {
                    Log.i(FtHttpIncomingMessage.LOG_TAG, "EVENT_RETRY_THUMBNAIL_DOWNLOAD mId=" + FtHttpIncomingMessage.this.mId + ", Retry count=" + FtHttpIncomingMessage.this.getRetryCount());
                    FtHttpStateMachine.this.removeMessages(108);
                    if (FtHttpIncomingMessage.this.checkAvailableRetry() && FtHttpIncomingMessage.this.getRetryCount() < 3) {
                        FtHttpIncomingMessage ftHttpIncomingMessage3 = FtHttpIncomingMessage.this;
                        ftHttpIncomingMessage3.setRetryCount(ftHttpIncomingMessage3.getRetryCount() + 1);
                        tryThumbnailDownload();
                        return true;
                    }
                    FtHttpIncomingMessage.this.setRetryCount(0);
                    FtHttpStateMachine ftHttpStateMachine3 = FtHttpStateMachine.this;
                    FtHttpIncomingMessage.this.mThumbnailPath = null;
                    ftHttpStateMachine3.sendMessage(104);
                    return true;
                }
                if (i == 50) {
                    FtHttpStateMachine.this.removeMessages(51);
                    handleReceiverTransferEvent();
                    return true;
                }
                if (i != 51) {
                    switch (i) {
                        case 104:
                            long ftWarnSize = FtHttpIncomingMessage.this.mConfig.getFtWarnSize();
                            long maxSizeFileTrIncoming = FtHttpIncomingMessage.this.mConfig.getMaxSizeFileTrIncoming();
                            FtHttpIncomingMessage.this.mIsAutoDownload = false;
                            Log.i(FtHttpIncomingMessage.LOG_TAG, "EVENT_DOWNLOAD_THUMBNAIL_COMPLETED: maxSizeFileTrIncoming(" + maxSizeFileTrIncoming + "), warnSizeFileTr(" + ftWarnSize + ")");
                            if (FtHttpIncomingMessage.this.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.BLOCK_MSG) && BlockedNumberUtil.isBlockedNumber(FtHttpIncomingMessage.this.getContext(), FtHttpIncomingMessage.this.mRemoteUri.getMsisdn())) {
                                Log.i(FtHttpIncomingMessage.LOG_TAG, "from blocked number.. go to CanceledState.");
                                FtHttpStateMachine ftHttpStateMachine4 = FtHttpStateMachine.this;
                                FtHttpIncomingMessage.this.mCancelReason = CancelReason.CANCELED_BY_USER;
                                iState = ftHttpStateMachine4.mCanceledState;
                            } else {
                                FtHttpStateMachine ftHttpStateMachine5 = FtHttpStateMachine.this;
                                FtHttpIncomingMessage ftHttpIncomingMessage4 = FtHttpIncomingMessage.this;
                                if (ftHttpIncomingMessage4.mLastNotificationType == NotificationStatus.CANCELED) {
                                    ftHttpIncomingMessage4.mCancelReason = CancelReason.CANCELED_NOTIFICATION;
                                    iState = ftHttpStateMachine5.mCanceledState;
                                } else if (maxSizeFileTrIncoming != 0 && ftHttpIncomingMessage4.mFileSize > maxSizeFileTrIncoming) {
                                    Log.e(FtHttpIncomingMessage.LOG_TAG, "Auto cancel file transfer, max size exceeded");
                                    FtHttpStateMachine ftHttpStateMachine6 = FtHttpStateMachine.this;
                                    FtHttpIncomingMessage ftHttpIncomingMessage5 = FtHttpIncomingMessage.this;
                                    ftHttpIncomingMessage5.mRejectReason = FtRejectReason.FORBIDDEN_MAX_SIZE_EXCEEDED;
                                    ftHttpIncomingMessage5.mCancelReason = CancelReason.CANCELED_BY_SYSTEM;
                                    iState = ftHttpStateMachine6.mCanceledState;
                                } else {
                                    String path = Environment.getDataDirectory().getPath();
                                    FtHttpIncomingMessage ftHttpIncomingMessage6 = FtHttpIncomingMessage.this;
                                    if (!FtMessage.checkAvailableStorage(path, ftHttpIncomingMessage6.mFileSize - ftHttpIncomingMessage6.mTransferredBytes) && FtHttpIncomingMessage.this.mConfig.getFtCancelMemoryFull()) {
                                        Log.e(FtHttpIncomingMessage.LOG_TAG, "Auto cancel file transfer, disk space not available");
                                        FtHttpStateMachine ftHttpStateMachine7 = FtHttpStateMachine.this;
                                        FtHttpIncomingMessage ftHttpIncomingMessage7 = FtHttpIncomingMessage.this;
                                        ftHttpIncomingMessage7.mRejectReason = FtRejectReason.DECLINE;
                                        ftHttpIncomingMessage7.mCancelReason = CancelReason.LOW_MEMORY;
                                        iState = ftHttpStateMachine7.mCanceledState;
                                    } else {
                                        if ((FtHttpIncomingMessage.this.mConfig.isFtAutAccept() || ((FtHttpIncomingMessage.this.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.FTHTTP_FORCE_AUTO_ACCEPT_ON_WIFI) && FtHttpIncomingMessage.this.isWifiConnected()) || (FtHttpIncomingMessage.this.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.AUTO_ACCEPT_RRAM) && "audio/amr".equals(FtHttpIncomingMessage.this.mContentType) && FtHttpIncomingMessage.this.mPlayingLength > 0))) && !FtHttpIncomingMessage.this.getRcsStrategy().isBMode(false)) {
                                            IMnoStrategy rcsStrategy = FtHttpIncomingMessage.this.getRcsStrategy();
                                            FtHttpIncomingMessage ftHttpIncomingMessage8 = FtHttpIncomingMessage.this;
                                            if (!rcsStrategy.isWarnSizeFile(ftHttpIncomingMessage8.mNetwork, ftHttpIncomingMessage8.mFileSize, ftWarnSize, ftHttpIncomingMessage8.isWifiConnected()) && !isAutodownloadBlocked()) {
                                                Log.e(FtHttpIncomingMessage.LOG_TAG, "Enable auto download");
                                                FtHttpIncomingMessage.this.mIsAutoDownload = true;
                                            }
                                        }
                                        iState = FtHttpStateMachine.this.mAcceptingState;
                                    }
                                }
                            }
                            FtHttpIncomingMessage ftHttpIncomingMessage9 = FtHttpIncomingMessage.this;
                            ftHttpIncomingMessage9.mListener.onTransferReceived(ftHttpIncomingMessage9);
                            FtHttpIncomingMessage ftHttpIncomingMessage10 = FtHttpIncomingMessage.this;
                            NotificationStatus notificationStatus = ftHttpIncomingMessage10.mLastNotificationType;
                            if (notificationStatus == NotificationStatus.CANCELED) {
                                ftHttpIncomingMessage10.mListener.onImdnNotificationReceived(ftHttpIncomingMessage10, ftHttpIncomingMessage10.mRemoteUri, notificationStatus, ftHttpIncomingMessage10.mIsGroupChat);
                            }
                            FtHttpStateMachine.this.transitionTo(iState);
                            return true;
                        case 105:
                            int ftHttpRetryInterval = FtHttpIncomingMessage.this.getRcsStrategy().getFtHttpRetryInterval(message.arg1, FtHttpIncomingMessage.this.getRetryCount());
                            if (ftHttpRetryInterval >= 0) {
                                Log.e(FtHttpIncomingMessage.LOG_TAG, "EVENT_DOWNLOAD_THUMBNAIL_FAILED: " + FtHttpIncomingMessage.this.mId + " retry download after " + ftHttpRetryInterval + " secs");
                                FtHttpStateMachine ftHttpStateMachine8 = FtHttpStateMachine.this;
                                ftHttpStateMachine8.sendMessageDelayed(ftHttpStateMachine8.obtainMessage(108, 0, message.arg2), ((long) ftHttpRetryInterval) * 1000);
                                return true;
                            }
                            FtHttpStateMachine ftHttpStateMachine9 = FtHttpStateMachine.this;
                            FtHttpIncomingMessage.this.mThumbnailPath = null;
                            ftHttpStateMachine9.sendMessage(104);
                            return true;
                        case 106:
                            DownloadFileTask downloadFileTask = this.thumbnailDownloadTask;
                            if (downloadFileTask != null) {
                                downloadFileTask.cancel(true);
                                this.thumbnailDownloadTask = null;
                            }
                            FtHttpIncomingMessage ftHttpIncomingMessage11 = FtHttpIncomingMessage.this;
                            ftHttpIncomingMessage11.mThumbnailPath = null;
                            ftHttpIncomingMessage11.mIsAutoDownload = false;
                            ftHttpIncomingMessage11.mListener.onTransferReceived(ftHttpIncomingMessage11);
                            FtHttpStateMachine ftHttpStateMachine10 = FtHttpStateMachine.this;
                            FtHttpIncomingMessage ftHttpIncomingMessage12 = FtHttpIncomingMessage.this;
                            NotificationStatus notificationStatus2 = ftHttpIncomingMessage12.mLastNotificationType;
                            if (notificationStatus2 == NotificationStatus.CANCELED) {
                                ftHttpIncomingMessage12.mListener.onImdnNotificationReceived(ftHttpIncomingMessage12, ftHttpIncomingMessage12.mRemoteUri, notificationStatus2, ftHttpIncomingMessage12.mIsGroupChat);
                                FtHttpStateMachine ftHttpStateMachine11 = FtHttpStateMachine.this;
                                FtHttpIncomingMessage.this.mCancelReason = CancelReason.CANCELED_NOTIFICATION;
                                ftHttpStateMachine11.transitionTo(ftHttpStateMachine11.mCanceledState);
                                return true;
                            }
                            ftHttpStateMachine10.transitionTo(ftHttpStateMachine10.mAcceptingState);
                            return true;
                        default:
                            return false;
                    }
                }
                FtHttpStateMachine ftHttpStateMachine12 = FtHttpStateMachine.this;
                FtHttpIncomingMessage.this.mCancelReason = CancelReason.ERROR;
                ftHttpStateMachine12.transitionTo(ftHttpStateMachine12.mCanceledState);
                return true;
            }

            private boolean isAutodownloadBlocked() {
                Cursor query;
                String str;
                try {
                    query = FtHttpIncomingMessage.this.getContext().getContentResolver().query(ImsConstants.Uris.MMS_PREFERENCE_PROVIDER_DATASAVER_URI, null, null, null, null);
                    str = ConfigConstants.VALUE.INFO_COMPLETED;
                    if (query != null) {
                        try {
                            if (query.moveToNext()) {
                                str = query.getString(query.getColumnIndexOrThrow("pref_value"));
                            }
                        } finally {
                        }
                    }
                    Log.i(FtHttpIncomingMessage.LOG_TAG, " enable datasaver : " + str);
                } catch (IllegalStateException unused) {
                    Log.e(FtHttpIncomingMessage.LOG_TAG, "isAutodownloadBlocked: IllegalStateException");
                }
                if (CloudMessageProviderContract.JsonData.TRUE.equals(str)) {
                    if (query != null) {
                        query.close();
                    }
                    return true;
                }
                if (query != null) {
                    query.close();
                }
                FtHttpIncomingMessage ftHttpIncomingMessage = FtHttpIncomingMessage.this;
                if ((ftHttpIncomingMessage.mIsGroupChat && !ftHttpIncomingMessage.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.BLOCK_FT_AUTO_DOWNLOAD_FOR_GC)) || !BlockedNumberUtil.isBlockedNumber(FtHttpIncomingMessage.this.getContext(), FtHttpIncomingMessage.this.mRemoteUri.getMsisdn())) {
                    return false;
                }
                Log.i(FtHttpIncomingMessage.LOG_TAG, "It is blocked number.");
                return true;
            }

            private void handleReceiverTransferEvent() {
                IMSLog.s(FtHttpIncomingMessage.LOG_TAG, "handleReceiverTransferEvent: " + FtHttpIncomingMessage.this.mBody);
                FtHttpIncomingMessage.this.updateDeliveredTimestamp(System.currentTimeMillis());
                try {
                    FtHttpFileInfo parse = FtHttpXmlParser.parse(FtHttpIncomingMessage.this.mBody);
                    FtHttpIncomingMessage.this.mDataUrl = parse.getDataUrl();
                    if (FtHttpIncomingMessage.this.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.FTHTTP_IGNORE_WHEN_UNTRUSTED_URL)) {
                        boolean isThumbnailExist = parse.isThumbnailExist();
                        FtHttpIncomingMessage ftHttpIncomingMessage = FtHttpIncomingMessage.this;
                        if (!ftHttpIncomingMessage.isFtHttpUrlTrusted(ftHttpIncomingMessage.mDataUrl.toString()) || (isThumbnailExist && !FtHttpIncomingMessage.this.isFtHttpUrlTrusted(parse.getThumbnailDataUrl().toString()))) {
                            Log.i(FtHttpIncomingMessage.LOG_TAG, "FT[" + FtHttpIncomingMessage.this.mId + "] was silently cancelled due to untrusted file or thumbnail URL");
                            FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                            FtHttpIncomingMessage.this.mCancelReason = CancelReason.INVALID_URL_TEMPLATE;
                            ftHttpStateMachine.transitionTo(ftHttpStateMachine.mCanceledState);
                            FtHttpIncomingMessage.this.triggerObservers(ImCacheAction.UPDATED);
                            return;
                        }
                    }
                    FtHttpIncomingMessage.this.mFileName = parse.getFileName();
                    FtHttpIncomingMessage.this.mFileSize = parse.getFileSize();
                    FtHttpIncomingMessage.this.mContentType = parse.getContentType();
                    FtHttpIncomingMessage ftHttpIncomingMessage2 = FtHttpIncomingMessage.this;
                    ftHttpIncomingMessage2.mType = FtMessage.getType(ftHttpIncomingMessage2.mContentType);
                    FtHttpIncomingMessage.this.mFileExpire = parse.getDataUntil();
                    FtHttpIncomingMessage.this.mFileDisposition = parse.getFileDisposition();
                    FtHttpIncomingMessage.this.mPlayingLength = parse.getPlayingLength();
                    try {
                        if (TextUtils.isEmpty(FtHttpIncomingMessage.this.mFileName)) {
                            FtHttpIncomingMessage ftHttpIncomingMessage3 = FtHttpIncomingMessage.this;
                            ftHttpIncomingMessage3.mFileName = ftHttpIncomingMessage3.mDataUrl.toString().substring(FtHttpIncomingMessage.this.mDataUrl.toString().lastIndexOf("/") + 1);
                            if (!FtHttpIncomingMessage.this.mFileName.contains(".")) {
                                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyMMdd_HHmmss");
                                FtHttpIncomingMessage.this.mFileName = simpleDateFormat.format(new Date()) + "." + FileExtensionTranslator.translate(FtHttpIncomingMessage.this.mContentType);
                            }
                        } else {
                            FtHttpIncomingMessage.this.mFileName = URLDecoder.decode(parse.getFileName(), "UTF-8");
                        }
                    } catch (UnsupportedEncodingException | IllegalArgumentException e) {
                        e.printStackTrace();
                    }
                    tryThumbnailDownload();
                } catch (TranslationException | IOException | NullPointerException | XmlPullParserException e2) {
                    e2.printStackTrace();
                    FtHttpStateMachine ftHttpStateMachine2 = FtHttpStateMachine.this;
                    ftHttpStateMachine2.transitionTo(ftHttpStateMachine2.mCanceledState);
                }
                FtHttpIncomingMessage.this.triggerObservers(ImCacheAction.UPDATED);
            }

            private void tryThumbnailDownload() {
                try {
                    FtHttpFileInfo parse = FtHttpXmlParser.parse(FtHttpIncomingMessage.this.mBody);
                    long thumbnailSize = getThumbnailSize(parse);
                    if (thumbnailSize == 0) {
                        FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                        FtHttpIncomingMessage.this.mThumbnailPath = null;
                        ftHttpStateMachine.sendMessage(104);
                        return;
                    }
                    if (parse != null) {
                        FtHttpIncomingMessage ftHttpIncomingMessage = FtHttpIncomingMessage.this;
                        if (ftHttpIncomingMessage.mThumbnailContentType == null) {
                            ftHttpIncomingMessage.mThumbnailContentType = parse.getThumbnailContentType();
                        }
                    }
                    FtHttpIncomingMessage ftHttpIncomingMessage2 = FtHttpIncomingMessage.this;
                    if (ftHttpIncomingMessage2.mThumbnailPath == null) {
                        Context context = ftHttpIncomingMessage2.getContext();
                        FtHttpIncomingMessage ftHttpIncomingMessage3 = FtHttpIncomingMessage.this;
                        ftHttpIncomingMessage2.mThumbnailPath = FilePathGenerator.generateUniqueThumbnailPath(context, ftHttpIncomingMessage3.mFileName, ftHttpIncomingMessage3.mThumbnailContentType, ftHttpIncomingMessage3.mListener.onRequestIncomingFtTransferPath(), 128);
                    }
                    Log.i(FtHttpIncomingMessage.LOG_TAG, "tryThumbnailDownload: thumbnailContentType=" + FtHttpIncomingMessage.this.mThumbnailContentType + ", thumbnailPath=" + FtHttpIncomingMessage.this.mThumbnailPath);
                    downloadThumbnail(FtHttpIncomingMessage.this.mThumbnailPath, parse != null ? parse.getThumbnailDataUrl().toString() : "", thumbnailSize);
                } catch (Exception e) {
                    e.printStackTrace();
                    onThumbnailDownloadFailed();
                }
            }

            private void onThumbnailDownloadFailed() {
                FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                FtHttpIncomingMessage.this.mThumbnailPath = null;
                ftHttpStateMachine.sendMessage(104);
            }

            private long getThumbnailSize(FtHttpFileInfo ftHttpFileInfo) {
                if (ftHttpFileInfo == null || !ftHttpFileInfo.isThumbnailExist() || ftHttpFileInfo.getThumbnailFileSize() > FtHttpIncomingMessage.this.MAX_SIZE_DOWNLOAD_THUMBNAIL) {
                    return 0L;
                }
                return ftHttpFileInfo.getThumbnailFileSize();
            }

            private void downloadThumbnail(String str, String str2, final long j) {
                DownloadFileTask.DownloadRequest downloadRequest = new DownloadFileTask.DownloadRequest(str2, j, 0L, str, null, FtHttpIncomingMessage.this.getFtHttpUserAgent(), FtHttpIncomingMessage.this.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.FT_INTERNET_PDN) ? null : FtHttpIncomingMessage.this.mNetwork, FtHttpIncomingMessage.this.mConfig.isFtHttpTrustAllCerts(), FtHttpIncomingMessage.this.mConfig.getFtHttpDLUrl(), FtHttpIncomingMessage.this.getParamsforDl(str2), new DownloadFileTask.DownloadTaskCallback() { // from class: com.sec.internal.ims.servicemodules.im.FtHttpIncomingMessage.FtHttpStateMachine.InitialState.1
                    @Override // com.sec.internal.ims.servicemodules.im.DownloadFileTask.DownloadTaskCallback
                    public void onProgressUpdate(long j2) {
                        long j3 = j;
                        FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                        if (j2 > j3 + FtHttpIncomingMessage.this.FT_SIZE_MARGIN) {
                            ftHttpStateMachine.sendMessage(ftHttpStateMachine.obtainMessage(106));
                        }
                    }

                    @Override // com.sec.internal.ims.servicemodules.im.DownloadFileTask.DownloadTaskCallback
                    public void onCompleted(long j2) {
                        long j3 = j;
                        FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                        FtHttpIncomingMessage ftHttpIncomingMessage = FtHttpIncomingMessage.this;
                        long j4 = ftHttpIncomingMessage.FT_SIZE_MARGIN;
                        if (j2 >= j3 - j4 && j2 <= j3 + j4) {
                            String renameThumbnail = FilePathGenerator.renameThumbnail(ftHttpIncomingMessage.mThumbnailPath, ftHttpIncomingMessage.mThumbnailContentType, ftHttpIncomingMessage.mFileName, 128);
                            if (renameThumbnail != null) {
                                FtHttpIncomingMessage ftHttpIncomingMessage2 = FtHttpIncomingMessage.this;
                                ftHttpIncomingMessage2.mThumbnailPath = renameThumbnail;
                                ftHttpIncomingMessage2.triggerObservers(ImCacheAction.UPDATED);
                            }
                            FtHttpStateMachine.this.sendMessage(104, Long.valueOf(j2));
                            return;
                        }
                        ftHttpStateMachine.sendMessage(ftHttpStateMachine.obtainMessage(106));
                    }

                    @Override // com.sec.internal.ims.servicemodules.im.DownloadFileTask.DownloadTaskCallback
                    public void onCanceled(CancelReason cancelReason, int i, int i2) {
                        FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                        ftHttpStateMachine.sendMessage(ftHttpStateMachine.obtainMessage(105, i, i2, cancelReason));
                    }
                });
                if (downloadRequest.isValid()) {
                    DownloadFileTask downloadFileTask = new DownloadFileTask(FtHttpIncomingMessage.this.mConfig.getPhoneId(), FtHttpIncomingMessage.this.getContext(), FtHttpStateMachine.this.getHandler().getLooper(), downloadRequest);
                    this.thumbnailDownloadTask = downloadFileTask;
                    downloadFileTask.execute(AsyncFileTask.THREAD_THUMBNAIL_POOL_EXECUTOR);
                    return;
                }
                onThumbnailDownloadFailed();
            }
        }

        private final class AcceptingState extends State {
            private AcceptingState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                Log.i(FtHttpIncomingMessage.LOG_TAG, getName() + " enter msgId : " + FtHttpIncomingMessage.this.mId);
                FtHttpIncomingMessage.this.updateState();
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                int i = message.what;
                if (i == 4) {
                    FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                    ftHttpStateMachine.transitionTo(ftHttpStateMachine.mInProgressState);
                } else if (i == 6) {
                    FtHttpStateMachine ftHttpStateMachine2 = FtHttpStateMachine.this;
                    FtHttpIncomingMessage ftHttpIncomingMessage = FtHttpIncomingMessage.this;
                    ftHttpIncomingMessage.mRejectReason = FtRejectReason.DECLINE;
                    ftHttpIncomingMessage.mCancelReason = CancelReason.REJECTED_BY_USER;
                    ftHttpStateMachine2.transitionTo(ftHttpStateMachine2.mCanceledState);
                } else {
                    if (i != 8) {
                        return false;
                    }
                    FtHttpStateMachine ftHttpStateMachine3 = FtHttpStateMachine.this;
                    FtHttpIncomingMessage.this.mCancelReason = (CancelReason) message.obj;
                    ftHttpStateMachine3.transitionTo(ftHttpStateMachine3.mCanceledState);
                }
                return true;
            }
        }

        private final class InProgressState extends State {
            DownloadFileTask downloadTask;

            private InProgressState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                Log.i(FtHttpIncomingMessage.LOG_TAG, getName() + " enter msgId : " + FtHttpIncomingMessage.this.mId);
                if (FtHttpIncomingMessage.this.needToAcquireNetworkForFT()) {
                    FtHttpIncomingMessage ftHttpIncomingMessage = FtHttpIncomingMessage.this;
                    ftHttpIncomingMessage.acquireNetworkForFT(ftHttpIncomingMessage.getRcsStrategy().intSetting(RcsPolicySettings.RcsPolicy.FT_NET_CAPABILITY));
                    FtHttpIncomingMessage.this.acquireWakeLock();
                    return;
                }
                FtHttpStateMachine.this.removeMessages(107);
                FtHttpIncomingMessage.this.setRetryCount(0);
                FtHttpIncomingMessage.this.updateState();
                FtHttpIncomingMessage ftHttpIncomingMessage2 = FtHttpIncomingMessage.this;
                ftHttpIncomingMessage2.mListener.onTransferInProgress(ftHttpIncomingMessage2);
                FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                FtHttpIncomingMessage ftHttpIncomingMessage3 = FtHttpIncomingMessage.this;
                long j = ftHttpIncomingMessage3.mTransferredBytes;
                if (j < ftHttpIncomingMessage3.mFileSize) {
                    if (ftHttpIncomingMessage3.mIsBootup && (ftHttpIncomingMessage3.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.CANCEL_FOR_DEREGI_PROMPTLY) || FtHttpIncomingMessage.this.getRcsStrategy().intSetting(RcsPolicySettings.RcsPolicy.DELAY_TO_CANCEL_FOR_DEREGI) > 0)) {
                        Log.i(FtHttpIncomingMessage.LOG_TAG, "Do not auto resume message loaded from bootup");
                        FtHttpStateMachine ftHttpStateMachine2 = FtHttpStateMachine.this;
                        FtHttpIncomingMessage ftHttpIncomingMessage4 = FtHttpIncomingMessage.this;
                        ftHttpIncomingMessage4.mIsBootup = false;
                        ftHttpIncomingMessage4.mCancelReason = CancelReason.DEVICE_UNREGISTERED;
                        ftHttpStateMachine2.transitionTo(ftHttpStateMachine2.mCanceledState);
                    } else {
                        FtHttpStateMachine ftHttpStateMachine3 = FtHttpStateMachine.this;
                        ftHttpStateMachine3.sendMessage(101, Long.valueOf(FtHttpIncomingMessage.this.mTransferredBytes));
                        tryDownload();
                    }
                } else {
                    ftHttpStateMachine.sendMessage(102, Long.valueOf(j));
                }
                FtHttpIncomingMessage.this.acquireWakeLock();
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                int i = message.what;
                if (i == 6) {
                    Log.i(FtHttpIncomingMessage.LOG_TAG, getName() + " EVENT_REJECT_TRANSFER");
                    DownloadFileTask downloadFileTask = this.downloadTask;
                    if (downloadFileTask != null) {
                        downloadFileTask.cancel(true);
                        this.downloadTask = null;
                    }
                    FtHttpStateMachine.this.removeMessages(107);
                    FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                    ftHttpStateMachine.transitionTo(ftHttpStateMachine.mCanceledState);
                    return true;
                }
                if (i == 8) {
                    CancelReason cancelReason = (CancelReason) message.obj;
                    Log.i(FtHttpIncomingMessage.LOG_TAG, getName() + " EVENT_CANCEL_TRANSFER CancelReason " + cancelReason);
                    FtHttpStateMachine.this.removeMessages(107);
                    PreciseAlarmManager.getInstance(FtHttpIncomingMessage.this.getContext()).removeMessage(FtHttpStateMachine.this.obtainMessage(52));
                    DownloadFileTask downloadFileTask2 = this.downloadTask;
                    if (downloadFileTask2 != null) {
                        downloadFileTask2.cancel(true);
                        this.downloadTask = null;
                    }
                    if (cancelReason != CancelReason.DEVICE_UNREGISTERED || FtHttpIncomingMessage.this.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.CANCEL_FOR_DEREGI_PROMPTLY)) {
                        FtHttpStateMachine ftHttpStateMachine2 = FtHttpStateMachine.this;
                        FtHttpIncomingMessage.this.mCancelReason = cancelReason;
                        ftHttpStateMachine2.transitionTo(ftHttpStateMachine2.mCanceledState);
                        return true;
                    }
                    int intSetting = FtHttpIncomingMessage.this.getRcsStrategy().intSetting(RcsPolicySettings.RcsPolicy.DELAY_TO_CANCEL_FOR_DEREGI);
                    if (intSetting <= 0) {
                        return true;
                    }
                    PreciseAlarmManager.getInstance(FtHttpIncomingMessage.this.getContext()).sendMessageDelayed(FtHttpStateMachine.this.obtainMessage(52), intSetting * 1000);
                    return true;
                }
                if (i == 10) {
                    FtHttpStateMachine.this.removeMessages(107);
                    PreciseAlarmManager.getInstance(FtHttpIncomingMessage.this.getContext()).removeMessage(FtHttpStateMachine.this.obtainMessage(52));
                    FtHttpStateMachine ftHttpStateMachine3 = FtHttpStateMachine.this;
                    FtHttpIncomingMessage ftHttpIncomingMessage = FtHttpIncomingMessage.this;
                    long j = ftHttpIncomingMessage.mTransferredBytes;
                    if (j < ftHttpIncomingMessage.mFileSize) {
                        tryDownload();
                        return true;
                    }
                    ftHttpStateMachine3.sendMessage(102, Long.valueOf(j));
                    return true;
                }
                if (i == 107) {
                    Log.i(FtHttpIncomingMessage.LOG_TAG, "EVENT_RETRY_DOWNLOAD mId=" + FtHttpIncomingMessage.this.mId + "Retry count = " + FtHttpIncomingMessage.this.getRetryCount());
                    int i2 = message.arg2;
                    FtHttpStateMachine.this.removeMessages(107);
                    if (RcsUtils.DualRcs.isDualRcsSettings()) {
                        FtHttpIncomingMessage ftHttpIncomingMessage2 = FtHttpIncomingMessage.this;
                        if (((ImModule) ftHttpIncomingMessage2.mModule).getPhoneIdByChatId(ftHttpIncomingMessage2.mChatId) != SimUtil.getSimSlotPriority()) {
                            return true;
                        }
                    }
                    if (!FtHttpIncomingMessage.this.checkAvailableRetry()) {
                        if (!FtHttpIncomingMessage.this.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.CANCEL_FOR_DEREGI_PROMPTLY)) {
                            return true;
                        }
                        FtHttpStateMachine ftHttpStateMachine4 = FtHttpStateMachine.this;
                        FtHttpIncomingMessage.this.mCancelReason = CancelReason.CANCELED_BY_USER;
                        ftHttpStateMachine4.transitionTo(ftHttpStateMachine4.mCanceledState);
                        return true;
                    }
                    if (i2 == 503) {
                        tryDownload();
                        return true;
                    }
                    if (FtHttpIncomingMessage.this.getRetryCount() < 3) {
                        FtHttpIncomingMessage ftHttpIncomingMessage3 = FtHttpIncomingMessage.this;
                        ftHttpIncomingMessage3.setRetryCount(ftHttpIncomingMessage3.getRetryCount() + 1);
                        tryDownload();
                        return true;
                    }
                    FtHttpStateMachine ftHttpStateMachine5 = FtHttpStateMachine.this;
                    ftHttpStateMachine5.transitionTo(ftHttpStateMachine5.mCanceledState);
                    return true;
                }
                switch (i) {
                    case 50:
                        FtHttpStateMachine.this.removeMessages(51);
                        FtHttpStateMachine.this.removeMessages(107);
                        FtHttpIncomingMessage.this.setRetryCount(0);
                        FtHttpIncomingMessage.this.updateState();
                        FtHttpIncomingMessage ftHttpIncomingMessage4 = FtHttpIncomingMessage.this;
                        ftHttpIncomingMessage4.mListener.onTransferInProgress(ftHttpIncomingMessage4);
                        FtHttpStateMachine ftHttpStateMachine6 = FtHttpStateMachine.this;
                        FtHttpIncomingMessage ftHttpIncomingMessage5 = FtHttpIncomingMessage.this;
                        long j2 = ftHttpIncomingMessage5.mTransferredBytes;
                        if (j2 < ftHttpIncomingMessage5.mFileSize) {
                            ftHttpStateMachine6.sendMessage(101, Long.valueOf(j2));
                            tryDownload();
                            return true;
                        }
                        ftHttpStateMachine6.sendMessage(102, Long.valueOf(j2));
                        return true;
                    case 51:
                        FtHttpStateMachine ftHttpStateMachine7 = FtHttpStateMachine.this;
                        FtHttpIncomingMessage.this.mCancelReason = CancelReason.ERROR;
                        ftHttpStateMachine7.transitionTo(ftHttpStateMachine7.mCanceledState);
                        return true;
                    case 52:
                        Log.i(FtHttpIncomingMessage.LOG_TAG, "EVENT_DELAY_CANCEL_TRANSFER mId=" + FtHttpIncomingMessage.this.mId);
                        DownloadFileTask downloadFileTask3 = this.downloadTask;
                        if (downloadFileTask3 != null) {
                            downloadFileTask3.cancel(true);
                            this.downloadTask = null;
                        }
                        FtHttpStateMachine ftHttpStateMachine8 = FtHttpStateMachine.this;
                        FtHttpIncomingMessage.this.mCancelReason = CancelReason.CANCELED_BY_USER;
                        ftHttpStateMachine8.transitionTo(ftHttpStateMachine8.mCanceledState);
                        return true;
                    default:
                        switch (i) {
                            case 101:
                                FtHttpIncomingMessage.this.updateTransferredBytes(((Long) message.obj).longValue());
                                Log.i(FtHttpIncomingMessage.LOG_TAG, "EVENT_DOWNLOAD_PROGRESS " + FtHttpIncomingMessage.this.mTransferredBytes + "/" + FtHttpIncomingMessage.this.mFileSize);
                                FtHttpIncomingMessage ftHttpIncomingMessage6 = FtHttpIncomingMessage.this;
                                ftHttpIncomingMessage6.mListener.onTransferProgressReceived(ftHttpIncomingMessage6);
                                return true;
                            case 102:
                                FtHttpIncomingMessage.this.mTransferredBytes = ((Long) message.obj).longValue();
                                FtHttpStateMachine ftHttpStateMachine9 = FtHttpStateMachine.this;
                                ftHttpStateMachine9.transitionTo(ftHttpStateMachine9.mCompletedState);
                                return true;
                            case 103:
                                FtHttpIncomingMessage ftHttpIncomingMessage7 = FtHttpIncomingMessage.this;
                                ftHttpIncomingMessage7.mCancelReason = (CancelReason) message.obj;
                                this.downloadTask = null;
                                int ftHttpRetryInterval = ftHttpIncomingMessage7.getRcsStrategy().getFtHttpRetryInterval(message.arg1, FtHttpIncomingMessage.this.getRetryCount());
                                if (ftHttpRetryInterval >= 0) {
                                    Log.i(FtHttpIncomingMessage.LOG_TAG, "EVENT_RETRY_DOWNLOAD: " + FtHttpIncomingMessage.this.mId + " retry download after " + ftHttpRetryInterval + " secs");
                                    FtHttpStateMachine ftHttpStateMachine10 = FtHttpStateMachine.this;
                                    ftHttpStateMachine10.sendMessageDelayed(ftHttpStateMachine10.obtainMessage(107, 0, message.arg2), ((long) ftHttpRetryInterval) * 1000);
                                    return true;
                                }
                                FtHttpStateMachine ftHttpStateMachine11 = FtHttpStateMachine.this;
                                ftHttpStateMachine11.transitionTo(ftHttpStateMachine11.mCanceledState);
                                return true;
                            default:
                                return false;
                        }
                }
            }

            private void tryDownload() {
                FtHttpIncomingMessage ftHttpIncomingMessage = FtHttpIncomingMessage.this;
                ftHttpIncomingMessage.mIsWifiUsed = ftHttpIncomingMessage.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.CANCEL_FT_WIFI_DISCONNECTED) && FtHttpIncomingMessage.this.isWifiConnected();
                if (!FtHttpIncomingMessage.this.checkValidPeriod()) {
                    Log.e(FtHttpIncomingMessage.LOG_TAG, "Auto cancel file transfer, file has expired");
                    FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                    FtHttpIncomingMessage ftHttpIncomingMessage2 = FtHttpIncomingMessage.this;
                    ftHttpIncomingMessage2.mRejectReason = FtRejectReason.DECLINE;
                    ftHttpIncomingMessage2.mCancelReason = CancelReason.VALIDITY_EXPIRED;
                    ftHttpStateMachine.transitionTo(ftHttpStateMachine.mCanceledState);
                    return;
                }
                if (FtHttpIncomingMessage.this.mDataUrl == null) {
                    Log.e(FtHttpIncomingMessage.LOG_TAG, getName() + ": Data url is null, go to Canceled");
                    FtHttpStateMachine ftHttpStateMachine2 = FtHttpStateMachine.this;
                    ftHttpStateMachine2.transitionTo(ftHttpStateMachine2.mCanceledState);
                    return;
                }
                DownloadFileTask downloadFileTask = this.downloadTask;
                if (downloadFileTask == null || downloadFileTask.getState() == AsyncFileTask.State.FINISHED) {
                    if (FtHttpIncomingMessage.this.needToAcquireNetworkForFT()) {
                        FtHttpIncomingMessage ftHttpIncomingMessage3 = FtHttpIncomingMessage.this;
                        ftHttpIncomingMessage3.acquireNetworkForFT(ftHttpIncomingMessage3.getRcsStrategy().intSetting(RcsPolicySettings.RcsPolicy.FT_NET_CAPABILITY));
                        FtHttpIncomingMessage.this.acquireWakeLock();
                        return;
                    }
                    createDownloadTask(FtHttpIncomingMessage.this.mDataUrl.toString());
                    return;
                }
                Log.i(FtHttpIncomingMessage.LOG_TAG, "Task is already running or pending.");
            }

            private void createDownloadTask(String str) {
                boolean boolSetting = FtHttpIncomingMessage.this.getRcsStrategy().boolSetting(RcsPolicySettings.RcsPolicy.FT_INTERNET_PDN);
                FtHttpIncomingMessage ftHttpIncomingMessage = FtHttpIncomingMessage.this;
                DownloadFileTask.DownloadRequest downloadRequest = new DownloadFileTask.DownloadRequest(str, ftHttpIncomingMessage.mFileSize, ftHttpIncomingMessage.mTransferredBytes, null, ftHttpIncomingMessage.mContentUri, ftHttpIncomingMessage.getFtHttpUserAgent(), boolSetting ? null : FtHttpIncomingMessage.this.mNetwork, FtHttpIncomingMessage.this.mConfig.isFtHttpTrustAllCerts(), FtHttpIncomingMessage.this.mConfig.getFtHttpDLUrl(), FtHttpIncomingMessage.this.getParamsforDl(str), new DownloadFileTask.DownloadTaskCallback() { // from class: com.sec.internal.ims.servicemodules.im.FtHttpIncomingMessage.FtHttpStateMachine.InProgressState.1
                    @Override // com.sec.internal.ims.servicemodules.im.DownloadFileTask.DownloadTaskCallback
                    public void onProgressUpdate(long j) {
                        FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                        FtHttpIncomingMessage ftHttpIncomingMessage2 = FtHttpIncomingMessage.this;
                        if (j > ftHttpIncomingMessage2.mFileSize + ftHttpIncomingMessage2.FT_SIZE_MARGIN) {
                            ftHttpStateMachine.sendMessage(ftHttpStateMachine.obtainMessage(8, CancelReason.INVALID_FT_FILE_SIZE));
                        } else {
                            ftHttpStateMachine.sendMessage(101, Long.valueOf(j));
                        }
                    }

                    @Override // com.sec.internal.ims.servicemodules.im.DownloadFileTask.DownloadTaskCallback
                    public void onCompleted(long j) {
                        FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                        FtHttpIncomingMessage ftHttpIncomingMessage2 = FtHttpIncomingMessage.this;
                        long j2 = ftHttpIncomingMessage2.mFileSize;
                        long j3 = ftHttpIncomingMessage2.FT_SIZE_MARGIN;
                        if (j >= j2 - j3 && j <= j2 + j3) {
                            ftHttpStateMachine.sendMessage(102, Long.valueOf(j));
                            FtHttpIncomingMessage.this.listToDumpFormat(LogClass.FT_HTTP_DOWNLOAD_COMPLETE, 0, new ArrayList());
                            return;
                        }
                        ftHttpStateMachine.sendMessage(ftHttpStateMachine.obtainMessage(8, CancelReason.INVALID_FT_FILE_SIZE));
                    }

                    @Override // com.sec.internal.ims.servicemodules.im.DownloadFileTask.DownloadTaskCallback
                    public void onCanceled(CancelReason cancelReason, int i, int i2) {
                        FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                        ftHttpStateMachine.sendMessage(ftHttpStateMachine.obtainMessage(103, i, i2, cancelReason));
                        if (i2 != -1) {
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(String.valueOf(i2));
                            arrayList.add(String.valueOf(FtHttpIncomingMessage.this.getRetryCount()));
                            FtHttpIncomingMessage.this.listToDumpFormat(LogClass.FT_HTTP_DOWNLOAD_CANCEL, 0, arrayList);
                        }
                    }
                });
                if (downloadRequest.isValid()) {
                    DownloadFileTask downloadFileTask = new DownloadFileTask(FtHttpIncomingMessage.this.mConfig.getPhoneId(), FtHttpIncomingMessage.this.getContext(), FtHttpStateMachine.this.getHandler().getLooper(), downloadRequest);
                    this.downloadTask = downloadFileTask;
                    downloadFileTask.execute(AsyncFileTask.THREAD_POOL_EXECUTOR);
                } else {
                    Log.e(FtHttpIncomingMessage.LOG_TAG, "Download request param not valid");
                    FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                    ftHttpStateMachine.transitionTo(ftHttpStateMachine.mCanceledState);
                }
            }
        }

        private final class CanceledState extends State {
            private CanceledState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                Log.i(FtHttpIncomingMessage.LOG_TAG, getName() + " enter msgId : " + FtHttpIncomingMessage.this.mId);
                FtHttpIncomingMessage.this.updateState();
                FtHttpIncomingMessage ftHttpIncomingMessage = FtHttpIncomingMessage.this;
                if (ftHttpIncomingMessage.mIsNetworkRequested) {
                    ftHttpIncomingMessage.releaseNetworkAcquiredForFT();
                }
                FtHttpIncomingMessage ftHttpIncomingMessage2 = FtHttpIncomingMessage.this;
                if (ftHttpIncomingMessage2.mIsBootup) {
                    Log.i(FtHttpIncomingMessage.LOG_TAG, "Message is loaded from bootup, no need for notifications");
                    FtHttpIncomingMessage.this.mIsBootup = false;
                    return;
                }
                IMnoStrategy rcsStrategy = ftHttpIncomingMessage2.getRcsStrategy();
                FtHttpIncomingMessage ftHttpIncomingMessage3 = FtHttpIncomingMessage.this;
                ftHttpIncomingMessage2.mResumableOptionCode = rcsStrategy.getftResumableOption(ftHttpIncomingMessage3.mCancelReason, ftHttpIncomingMessage3.mIsGroupChat, ftHttpIncomingMessage3.mDirection, ftHttpIncomingMessage3.getTransferMech()).getId();
                Log.i(FtHttpIncomingMessage.LOG_TAG, "mResumableOptionCode : " + FtHttpIncomingMessage.this.mResumableOptionCode);
                FtHttpIncomingMessage.this.updateStatus(ImConstants.Status.FAILED);
                FtHttpIncomingMessage ftHttpIncomingMessage4 = FtHttpIncomingMessage.this;
                ftHttpIncomingMessage4.mListener.onTransferCanceled(ftHttpIncomingMessage4);
                FtHttpIncomingMessage.this.releaseWakeLock();
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                int i = message.what;
                if (i != 8) {
                    if (i != 10) {
                        return false;
                    }
                    FtHttpStateMachine ftHttpStateMachine = FtHttpStateMachine.this;
                    ftHttpStateMachine.transitionTo(ftHttpStateMachine.mInProgressState);
                } else if (message.obj != CancelReason.INVALID_FT_FILE_SIZE) {
                    FtHttpIncomingMessage ftHttpIncomingMessage = FtHttpIncomingMessage.this;
                    ftHttpIncomingMessage.mListener.onCancelRequestFailed(ftHttpIncomingMessage);
                }
                return true;
            }
        }

        private final class CompletedState extends State {
            private CompletedState() {
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public void enter() {
                Log.i(FtHttpIncomingMessage.LOG_TAG, getName() + " enter msgId : " + FtHttpIncomingMessage.this.mId);
                FtHttpIncomingMessage.this.updateState();
                FtHttpIncomingMessage ftHttpIncomingMessage = FtHttpIncomingMessage.this;
                if (ftHttpIncomingMessage.mIsNetworkRequested) {
                    ftHttpIncomingMessage.releaseNetworkAcquiredForFT();
                }
                FtHttpIncomingMessage ftHttpIncomingMessage2 = FtHttpIncomingMessage.this;
                if (ftHttpIncomingMessage2.mIsBootup) {
                    Log.i(FtHttpIncomingMessage.LOG_TAG, "Message is loaded from bootup, no need for notifications");
                    FtHttpIncomingMessage.this.mIsBootup = false;
                } else {
                    ftHttpIncomingMessage2.mListener.onTransferCompleted(ftHttpIncomingMessage2);
                    FtHttpIncomingMessage.this.releaseWakeLock();
                }
            }

            @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
            public boolean processMessage(Message message) {
                if (message.what != 8) {
                    return false;
                }
                if (message.obj != CancelReason.INVALID_FT_FILE_SIZE) {
                    FtHttpIncomingMessage ftHttpIncomingMessage = FtHttpIncomingMessage.this;
                    ftHttpIncomingMessage.mListener.onCancelRequestFailed(ftHttpIncomingMessage);
                }
                return true;
            }
        }
    }
}
