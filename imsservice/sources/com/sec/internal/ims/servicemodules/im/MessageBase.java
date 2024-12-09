package com.sec.internal.ims.servicemodules.im;

import android.content.Context;
import android.net.Network;
import android.os.Message;
import android.util.Log;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.servicemodules.im.ImCacheAction;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImImdnRecRoute;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.constants.ims.servicemodules.im.RoutingType;
import com.sec.internal.constants.ims.servicemodules.im.event.ImdnNotificationEvent;
import com.sec.internal.constants.ims.servicemodules.im.params.SendImdnParams;
import com.sec.internal.constants.ims.servicemodules.im.params.SendMessageRevokeParams;
import com.sec.internal.constants.ims.servicemodules.im.params.SendReportMsgParams;
import com.sec.internal.constants.ims.servicemodules.im.result.Result;
import com.sec.internal.helper.ImExtensionMNOHeadersHelper;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.interfaces.IModuleInterface;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.util.ThumbnailTool;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.interfaces.ims.servicemodules.im.IImServiceInterface;
import com.sec.internal.interfaces.ims.servicemodules.im.ISlmServiceInterface;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Observable;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class MessageBase extends Observable {
    public static final int FLAG_FT_SMS = 1;
    public static final int FLAG_TEMPORARY = 2;
    protected static final String LOG_TAG = MessageBase.class.getSimpleName();
    protected String mBody;
    protected final String mChatId;
    private ImConstants.ChatbotMessagingTech mChatbotMessagingTech;
    protected final ImConfig mConfig;
    protected String mContentType;
    protected String mContributionId;
    protected String mConversationId;
    protected int mCurrentRetryCount;
    protected long mDeliveredTimestamp;
    protected NotificationStatus mDesiredNotificationStatus;
    protected String mDeviceId;
    protected final ImDirection mDirection;
    protected Set<NotificationStatus> mDispNotification;
    protected long mDisplayedTimestamp;
    protected String mExtInfo;
    protected int mFlagMask;
    protected int mId;
    protected final String mImdnId;
    protected String mImdnOriginalTo;
    protected List<ImImdnRecRoute> mImdnRecRouteList;
    protected final IImServiceInterface mImsService;
    protected final long mInsertedTimestamp;
    protected boolean mIsBroadcastMsg;
    protected boolean mIsRoutingMsg;
    protected boolean mIsSlmSvcMsg;
    protected boolean mIsVM2TextMsg;
    protected long mLastDisplayedTimestamp;
    protected NotificationStatus mLastNotificationType;
    protected String mMaapTrafficType;
    protected String mMessageCreator;
    protected ImConstants.MessagingTech mMessagingTech;
    protected IMnoStrategy mMnoStrategy;
    protected final IModuleInterface mModule;
    protected Network mNetwork;
    protected int mNotDisplayedCounter;
    protected ImsUri mNotificationParticipant;
    protected NotificationStatus mNotificationStatus;
    protected String mRcsTrafficType;
    protected String mReferenceImdnId;
    protected String mReferenceType;
    protected String mReferenceValue;
    protected ImsUri mRemoteUri;
    protected SendReportMsgParams mReportMsgParams;
    protected String mRequestMessageId;
    protected ImConstants.RevocationStatus mRevocationStatus;
    protected RoutingType mRoutingType;
    protected long mSentTimestamp;
    protected String mSimIMSI;
    protected final ISlmServiceInterface mSlmService;
    protected ImConstants.Status mStatus;
    protected String mSuggestion;
    protected final ThumbnailTool mThumbnailTool;
    protected ImConstants.Type mType;
    protected UriGenerator mUriGenerator;
    protected String mUserAlias;

    public abstract String getServiceTag();

    public void onSendMessageDone(Result result, IMnoStrategy.StrategyResponse strategyResponse) {
    }

    protected MessageBase(Builder<?> builder) {
        NotificationStatus notificationStatus = NotificationStatus.NONE;
        this.mNotificationStatus = notificationStatus;
        this.mDesiredNotificationStatus = notificationStatus;
        this.mLastNotificationType = notificationStatus;
        this.mRoutingType = RoutingType.NONE;
        this.mRevocationStatus = ImConstants.RevocationStatus.NONE;
        this.mChatbotMessagingTech = ImConstants.ChatbotMessagingTech.UNKNOWN;
        Preconditions.checkNotNull(((Builder) builder).mModule);
        Preconditions.checkNotNull(((Builder) builder).mModule.getContext());
        Preconditions.checkNotNull(((Builder) builder).mImsService);
        Preconditions.checkNotNull(((Builder) builder).mSlmService);
        Preconditions.checkNotNull(((Builder) builder).mConfig);
        Preconditions.checkNotNull(((Builder) builder).mUriGenerator);
        this.mModule = ((Builder) builder).mModule;
        this.mImsService = ((Builder) builder).mImsService;
        this.mSlmService = ((Builder) builder).mSlmService;
        this.mConfig = ((Builder) builder).mConfig;
        this.mThumbnailTool = ((Builder) builder).mThumbnailTool;
        this.mUriGenerator = ((Builder) builder).mUriGenerator;
        this.mId = ((Builder) builder).mId;
        this.mChatId = ((Builder) builder).mChatId;
        this.mImdnId = ((Builder) builder).mImdnId;
        this.mImdnOriginalTo = ((Builder) builder).mImdnOriginalTo;
        this.mImdnRecRouteList = ((Builder) builder).mImdnRecRouteList;
        this.mType = ((Builder) builder).mType;
        this.mIsSlmSvcMsg = ((Builder) builder).mIsSlmSvcMsg;
        this.mBody = ((Builder) builder).mBody;
        this.mSuggestion = ((Builder) builder).mSuggestion;
        this.mContentType = ((Builder) builder).mContentType;
        this.mStatus = ((Builder) builder).mStatus;
        this.mDirection = ((Builder) builder).mDirection;
        this.mInsertedTimestamp = ((Builder) builder).mInsertedTimestamp;
        this.mSentTimestamp = ((Builder) builder).mSentTimestamp;
        this.mDeliveredTimestamp = ((Builder) builder).mDeliveredTimestamp;
        this.mDisplayedTimestamp = ((Builder) builder).mDisplayedTimestamp;
        this.mRemoteUri = ((Builder) builder).mRemoteUri;
        this.mUserAlias = ((Builder) builder).mUserAlias;
        this.mDispNotification = ((Builder) builder).mDispNotification;
        this.mNotificationStatus = ((Builder) builder).mNotificationStatus;
        this.mDesiredNotificationStatus = ((Builder) builder).mDesiredNotificationStatus;
        this.mNotDisplayedCounter = ((Builder) builder).mNotDisplayedCounter;
        this.mRequestMessageId = ((Builder) builder).mRequestMessageId;
        this.mIsBroadcastMsg = ((Builder) builder).mIsBroadcastMsg;
        this.mIsVM2TextMsg = ((Builder) builder).mIsVM2TextMsg;
        this.mIsRoutingMsg = ((Builder) builder).mIsRoutingMsg;
        this.mRoutingType = ((Builder) builder).mRoutingType;
        this.mMnoStrategy = ((Builder) builder).mMnoStrategy;
        this.mNetwork = ((Builder) builder).mNetwork;
        this.mExtInfo = ((Builder) builder).mExtInfo;
        this.mConversationId = ((Builder) builder).mConversationId;
        this.mContributionId = ((Builder) builder).mContributionId;
        this.mDeviceId = ((Builder) builder).mDeviceId;
        this.mSimIMSI = ((Builder) builder).mSimIMSI;
        this.mFlagMask = ((Builder) builder).mFlagMask;
        this.mRevocationStatus = ((Builder) builder).mRevocationStatus;
        this.mMaapTrafficType = ((Builder) builder).mMaapTraficType;
        this.mMessagingTech = ((Builder) builder).mMessagingTech;
        this.mReferenceImdnId = ((Builder) builder).mReferenceImdnId;
        this.mReferenceType = ((Builder) builder).mReferenceType;
        this.mReferenceValue = ((Builder) builder).mReferenceValue;
        this.mRcsTrafficType = ((Builder) builder).mRcsTrafficType;
    }

    public static ImConstants.Type getType(String str) {
        if (str != null && (str.contains(MIMEContentType.LOCATION_PUSH) || str.contains(MIMEContentType.LOCATION_PULL))) {
            return ImConstants.Type.LOCATION;
        }
        return ImConstants.Type.TEXT;
    }

    protected Context getContext() {
        return this.mModule.getContext();
    }

    protected boolean isWifiConnected() {
        return this.mModule.isWifiConnected();
    }

    public int getId() {
        return this.mId;
    }

    public void setId(int i) {
        this.mId = i;
    }

    public String getBody() {
        return this.mBody;
    }

    public String getSuggestion() {
        return this.mSuggestion;
    }

    public String getContentType() {
        return this.mContentType;
    }

    public ImConstants.Type getType() {
        return this.mType;
    }

    public boolean getIsSlmSvcMsg() {
        return this.mIsSlmSvcMsg;
    }

    public String getChatId() {
        return this.mChatId;
    }

    public String getImdnId() {
        return this.mImdnId;
    }

    public String getImdnOriginalTo() {
        return this.mImdnOriginalTo;
    }

    public List<ImImdnRecRoute> getImdnRecRouteList() {
        return this.mImdnRecRouteList;
    }

    public void setImdnRecRouteList(List<ImImdnRecRoute> list) {
        this.mImdnRecRouteList = list;
    }

    public long getInsertedTimestamp() {
        return this.mInsertedTimestamp;
    }

    public long getSentTimestamp() {
        return this.mSentTimestamp;
    }

    public void setSentTimestamp(long j) {
        this.mSentTimestamp = j;
    }

    public long getDeliveredTimestamp() {
        return this.mDeliveredTimestamp;
    }

    public void setDeliveredTimestamp(long j) {
        this.mDeliveredTimestamp = j;
    }

    public Long getDisplayedTimestamp() {
        return Long.valueOf(this.mDisplayedTimestamp);
    }

    public void setDisplayedTimestamp(long j) {
        this.mDisplayedTimestamp = j;
    }

    public Long getLastDisplayedTimestamp() {
        return Long.valueOf(this.mLastDisplayedTimestamp);
    }

    public ImsUri getRemoteUri() {
        return this.mRemoteUri;
    }

    public void setUserAlias(String str) {
        this.mUserAlias = str;
    }

    public String getUserAlias() {
        return this.mUserAlias;
    }

    public ImDirection getDirection() {
        return this.mDirection;
    }

    public ImConstants.Status getStatus() {
        return this.mStatus;
    }

    public void setStatus(ImConstants.Status status) {
        this.mStatus = status;
    }

    public Set<NotificationStatus> getDispositionNotification() {
        return this.mDispNotification;
    }

    public NotificationStatus getNotificationStatus() {
        return this.mNotificationStatus;
    }

    public NotificationStatus getDesiredNotificationStatus() {
        return this.mDesiredNotificationStatus;
    }

    public void setDesiredNotificationStatus(NotificationStatus notificationStatus) {
        this.mDesiredNotificationStatus = notificationStatus;
    }

    public NotificationStatus getLastNotificationType() {
        return this.mLastNotificationType;
    }

    public int getNotDisplayedCounter() {
        return this.mNotDisplayedCounter;
    }

    public String getExtInfo() {
        return this.mExtInfo;
    }

    public ImsUri getNotificationParticipant() {
        return this.mNotificationParticipant;
    }

    public void setNetwork(Network network) {
        this.mNetwork = network;
    }

    public void updateStatus(ImConstants.Status status) {
        if (status.equals(this.mStatus)) {
            return;
        }
        this.mStatus = status;
        triggerObservers(ImCacheAction.UPDATED);
    }

    public void updateExtInfo(String str) {
        this.mExtInfo = str;
        triggerObservers(ImCacheAction.UPDATED);
    }

    public void updateDeliveredTimestamp(long j) {
        this.mDeliveredTimestamp = j;
        triggerObservers(ImCacheAction.UPDATED);
    }

    public void updateDisplayedTimestamp(long j) {
        this.mDisplayedTimestamp = j;
        triggerObservers(ImCacheAction.UPDATED);
    }

    public void updateDesiredNotificationStatus(NotificationStatus notificationStatus) {
        if (notificationStatus.equals(this.mDesiredNotificationStatus)) {
            return;
        }
        this.mDesiredNotificationStatus = notificationStatus;
        triggerObservers(ImCacheAction.UPDATED);
    }

    public String getRequestMessageId() {
        return this.mRequestMessageId;
    }

    public void updateNotificationStatus(NotificationStatus notificationStatus) {
        if (notificationStatus.equals(this.mNotificationStatus)) {
            return;
        }
        this.mNotificationStatus = notificationStatus;
        triggerObservers(ImCacheAction.UPDATED);
    }

    public void updateRevocationStatus(ImConstants.RevocationStatus revocationStatus) {
        if (revocationStatus.equals(this.mRevocationStatus)) {
            return;
        }
        this.mRevocationStatus = revocationStatus;
        triggerObservers(ImCacheAction.UPDATED);
    }

    public boolean isDeliveredNotificationRequired() {
        return this.mDirection == ImDirection.INCOMING && this.mDispNotification.contains(NotificationStatus.DELIVERED);
    }

    public boolean isDisplayedNotificationRequired() {
        return this.mDirection == ImDirection.INCOMING && this.mDispNotification.contains(NotificationStatus.DISPLAYED);
    }

    public List<MessageBase> toList() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this);
        return arrayList;
    }

    public SendImdnParams.ImdnData getNewImdnData(NotificationStatus notificationStatus) {
        return new SendImdnParams.ImdnData(notificationStatus, this.mImdnId, getNewDate(this.mSentTimestamp), this.mImdnRecRouteList, this.mImdnOriginalTo);
    }

    public boolean isBroadcastMsg() {
        return this.mIsBroadcastMsg;
    }

    public boolean isVM2TextMsg() {
        return this.mIsVM2TextMsg;
    }

    public boolean isRoutingMsg() {
        return this.mIsRoutingMsg;
    }

    public RoutingType getRoutingType() {
        return this.mRoutingType;
    }

    public boolean isFtSms() {
        return (this.mFlagMask & 1) == 1;
    }

    public void setFtSms(boolean z) {
        this.mFlagMask = z ? this.mFlagMask | 1 : this.mFlagMask & (-2);
    }

    public boolean isTemporary() {
        return (this.mFlagMask & 2) == 2;
    }

    public void setTemporary(boolean z) {
        this.mFlagMask = z ? this.mFlagMask | 2 : this.mFlagMask & (-3);
    }

    public void setSlmSvcMsg(boolean z) {
        this.mIsSlmSvcMsg = z;
    }

    public ImConstants.MessagingTech getMessagingTech() {
        return this.mMessagingTech;
    }

    public void setMessagingTech(ImConstants.MessagingTech messagingTech) {
        this.mMessagingTech = messagingTech;
    }

    public ImConstants.ChatbotMessagingTech getChatbotMessagingTech() {
        return this.mChatbotMessagingTech;
    }

    public void setChatbotMessagingTech(ImConstants.ChatbotMessagingTech chatbotMessagingTech) {
        this.mChatbotMessagingTech = chatbotMessagingTech;
    }

    public int getFlagMask() {
        return this.mFlagMask;
    }

    public ImConstants.RevocationStatus getRevocationStatus() {
        return this.mRevocationStatus;
    }

    public void setRevocationStatus(ImConstants.RevocationStatus revocationStatus) {
        this.mRevocationStatus = revocationStatus;
    }

    public boolean isOutgoing() {
        return this.mDirection == ImDirection.OUTGOING;
    }

    public boolean isIncoming() {
        return this.mDirection == ImDirection.INCOMING;
    }

    public void setSpamInfo(ImsUri imsUri, ImsUri imsUri2, String str, String str2) {
        this.mReportMsgParams = new SendReportMsgParams(imsUri, imsUri2, str, str2);
    }

    public SendReportMsgParams getReportMsgParams() {
        return this.mReportMsgParams;
    }

    public String getConversationId() {
        return this.mConversationId;
    }

    public String getContributionId() {
        return this.mContributionId;
    }

    public String getDeviceId() {
        return this.mDeviceId;
    }

    public String getOwnIMSI() {
        return this.mSimIMSI;
    }

    public void updateOwnIMSI(String str) {
        if (str == null || "".equals(str) || str.equals(this.mSimIMSI)) {
            return;
        }
        this.mSimIMSI = str;
        triggerObservers(ImCacheAction.UPDATED);
    }

    public void updateRemoteUri(ImsUri imsUri) {
        this.mRemoteUri = imsUri;
        triggerObservers(ImCacheAction.UPDATED);
    }

    public String getMaapTrafficType() {
        return this.mMaapTrafficType;
    }

    public String getReferenceImdnId() {
        return this.mReferenceImdnId;
    }

    public String getReferenceType() {
        return this.mReferenceType;
    }

    public String getReferenceValue() {
        return this.mReferenceValue;
    }

    public String getRcsTrafficType() {
        return this.mRcsTrafficType;
    }

    private ImsUri getParticipantsNetworkPreferredUri(ImsUri imsUri) {
        ICapabilityDiscoveryModule capabilityDiscoveryModule = ImsRegistry.getServiceModuleManager().getCapabilityDiscoveryModule();
        ImsUri networkPreferredUri = capabilityDiscoveryModule != null ? capabilityDiscoveryModule.getNetworkPreferredUri(imsUri) : null;
        return networkPreferredUri == null ? this.mUriGenerator.getNetworkPreferredUri(UriGenerator.URIServiceType.RCS_URI, imsUri) : networkPreferredUri;
    }

    protected void sendDeliveredNotification(Object obj, String str, String str2, Message message, String str3, boolean z, boolean z2) {
        ImsUri imsUri = this.mRemoteUri;
        if (imsUri == null) {
            onSendDeliveredNotificationDone();
            return;
        }
        ImsUri networkPreferredUri = this.mUriGenerator.getNetworkPreferredUri(UriGenerator.URIServiceType.RCS_URI, getParticipantsNetworkPreferredUri(imsUri));
        String str4 = this.mChatId;
        String str5 = this.mConversationId;
        String str6 = str5 == null ? str : str5;
        String str7 = this.mContributionId;
        SendImdnParams sendImdnParams = new SendImdnParams(obj, networkPreferredUri, str4, str6, str7 == null ? str2 : str7, str3, message, this.mDeviceId, getNewImdnData(NotificationStatus.DELIVERED), z, new Date(), z2, this.mModule.getUserAlias(this.mConfig.getPhoneId(), true));
        if (this.mIsSlmSvcMsg) {
            if (isVM2TextMsg()) {
                sendImdnParams.addImExtensionMNOHeaders(ImExtensionMNOHeadersHelper.addVM2TextHeaders());
            }
            this.mSlmService.sendSlmDeliveredNotification(sendImdnParams);
            return;
        }
        this.mImsService.sendDeliveredNotification(sendImdnParams);
    }

    protected void sendDisplayedNotification(Object obj, String str, String str2, Message message, String str3, boolean z, boolean z2) {
        ImsUri imsUri = this.mRemoteUri;
        if (imsUri == null) {
            onSendDisplayedNotificationDone();
            return;
        }
        ImsUri networkPreferredUri = this.mUriGenerator.getNetworkPreferredUri(UriGenerator.URIServiceType.RCS_URI, getParticipantsNetworkPreferredUri(imsUri));
        String str4 = this.mChatId;
        String str5 = this.mConversationId;
        String str6 = str5 == null ? str : str5;
        String str7 = this.mContributionId;
        SendImdnParams sendImdnParams = new SendImdnParams(obj, networkPreferredUri, str4, str6, str7 == null ? str2 : str7, str3, message, this.mDeviceId, getNewImdnData(NotificationStatus.DISPLAYED), z, new Date(), z2, this.mModule.getUserAlias(this.mConfig.getPhoneId(), true));
        if (this.mIsSlmSvcMsg) {
            if (isVM2TextMsg()) {
                sendImdnParams.addImExtensionMNOHeaders(ImExtensionMNOHeadersHelper.addVM2TextHeaders());
            }
            this.mSlmService.sendSlmDisplayedNotification(sendImdnParams);
            return;
        }
        this.mImsService.sendDisplayedNotification(sendImdnParams);
    }

    protected void sendCanceledNotification(Object obj, String str, String str2, Message message, String str3, boolean z, boolean z2) {
        ImsUri networkPreferredUri;
        if (z) {
            networkPreferredUri = new ImsUri("sip:anonymous@anonymous.invalid");
        } else {
            ImsUri imsUri = this.mRemoteUri;
            if (imsUri != null) {
                networkPreferredUri = this.mUriGenerator.getNetworkPreferredUri(UriGenerator.URIServiceType.RCS_URI, getParticipantsNetworkPreferredUri(imsUri));
            } else {
                Log.e(LOG_TAG, "mRemoteUri is null.");
                return;
            }
        }
        ImsUri imsUri2 = networkPreferredUri;
        String str4 = this.mChatId;
        String str5 = this.mConversationId;
        String str6 = str5 == null ? str : str5;
        String str7 = this.mContributionId;
        this.mImsService.sendCanceledNotification(new SendImdnParams(obj, imsUri2, str4, str6, str7 == null ? str2 : str7, str3, message, this.mDeviceId, getNewImdnData(NotificationStatus.CANCELED), z, new Date(), z2, this.mModule.getUserAlias(this.mConfig.getPhoneId(), true)));
    }

    protected void onSendDeliveredNotificationDone() {
        if (this.mNotificationStatus != NotificationStatus.DISPLAYED) {
            updateNotificationStatus(NotificationStatus.DELIVERED);
        }
    }

    protected void onSendDisplayedNotificationDone() {
        updateNotificationStatus(NotificationStatus.DISPLAYED);
    }

    protected void onSendCanceledNotificationDone() {
        updateStatus(ImConstants.Status.CANCELLATION);
    }

    public void onImdnNotificationReceived(ImdnNotificationEvent imdnNotificationEvent) {
        NotificationStatus notificationStatus;
        if (this.mDirection != ImDirection.OUTGOING) {
            Log.e(LOG_TAG, "Incoming message received imdn notification, ignore.");
            return;
        }
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus[imdnNotificationEvent.mStatus.ordinal()];
        if (i == 1) {
            NotificationStatus notificationStatus2 = NotificationStatus.DELIVERED;
            this.mNotificationStatus = notificationStatus2;
            this.mLastNotificationType = notificationStatus2;
            setDeliveredTimestamp(imdnNotificationEvent.mCpimDate.getTime());
            setRevocationStatus(ImConstants.RevocationStatus.NONE);
            this.mNotificationParticipant = imdnNotificationEvent.mRemoteUri;
            triggerObservers(ImCacheAction.UPDATED);
            return;
        }
        if (i == 2) {
            if (this.mNotificationStatus == NotificationStatus.NONE) {
                this.mNotificationStatus = NotificationStatus.DELIVERED;
                setRevocationStatus(ImConstants.RevocationStatus.NONE);
                setDeliveredTimestamp(imdnNotificationEvent.mCpimDate.getTime());
            }
            NotificationStatus notificationStatus3 = NotificationStatus.DISPLAYED;
            this.mLastNotificationType = notificationStatus3;
            this.mLastDisplayedTimestamp = imdnNotificationEvent.mCpimDate.getTime();
            if (this.mNotDisplayedCounter > 0) {
                Log.i(LOG_TAG, "onImdnNotificationReceived: Decrease mNotDisplayedCounter " + this.mNotDisplayedCounter);
                this.mNotDisplayedCounter = this.mNotDisplayedCounter - 1;
            }
            if (this.mNotDisplayedCounter == 0) {
                this.mNotificationStatus = notificationStatus3;
                setDisplayedTimestamp(imdnNotificationEvent.mCpimDate.getTime());
            }
            this.mNotificationParticipant = imdnNotificationEvent.mRemoteUri;
            triggerObservers(ImCacheAction.UPDATED);
            return;
        }
        if (i != 3) {
            if (i != 4 || (notificationStatus = this.mNotificationStatus) == NotificationStatus.DELIVERED || notificationStatus == NotificationStatus.DISPLAYED) {
                return;
            }
            NotificationStatus notificationStatus4 = NotificationStatus.INTERWORKING_MMS;
            this.mNotificationStatus = notificationStatus4;
            this.mLastNotificationType = notificationStatus4;
            setDeliveredTimestamp(imdnNotificationEvent.mCpimDate.getTime());
            setRevocationStatus(ImConstants.RevocationStatus.NONE);
            this.mNotificationParticipant = imdnNotificationEvent.mRemoteUri;
            triggerObservers(ImCacheAction.UPDATED);
            return;
        }
        NotificationStatus notificationStatus5 = this.mNotificationStatus;
        if (notificationStatus5 == NotificationStatus.DELIVERED || notificationStatus5 == NotificationStatus.DISPLAYED) {
            return;
        }
        NotificationStatus notificationStatus6 = NotificationStatus.INTERWORKING_SMS;
        this.mNotificationStatus = notificationStatus6;
        this.mLastNotificationType = notificationStatus6;
        setDeliveredTimestamp(imdnNotificationEvent.mCpimDate.getTime());
        setRevocationStatus(ImConstants.RevocationStatus.NONE);
        this.mNotificationParticipant = imdnNotificationEvent.mRemoteUri;
        triggerObservers(ImCacheAction.UPDATED);
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.MessageBase$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus;

        static {
            int[] iArr = new int[NotificationStatus.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus = iArr;
            try {
                iArr[NotificationStatus.DELIVERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus[NotificationStatus.DISPLAYED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus[NotificationStatus.INTERWORKING_SMS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus[NotificationStatus.INTERWORKING_MMS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public void onCanceledNotificationReceived(ImdnNotificationEvent imdnNotificationEvent) {
        if (this.mDirection != ImDirection.INCOMING) {
            Log.e(LOG_TAG, "Outgoing message received canceled notification, ignore.");
            return;
        }
        this.mLastNotificationType = NotificationStatus.CANCELED;
        this.mNotificationParticipant = this.mUriGenerator.normalize(imdnNotificationEvent.mRemoteUri);
        if (this.mStatus == ImConstants.Status.READ) {
            updateStatus(ImConstants.Status.CANCELLATION);
        } else {
            updateStatus(ImConstants.Status.CANCELLATION_UNREAD);
        }
    }

    public int getCurrentRetryCount() {
        return this.mCurrentRetryCount;
    }

    public void incrementRetryCount() {
        this.mCurrentRetryCount++;
    }

    public void triggerObservers(ImCacheAction imCacheAction) {
        setChanged();
        notifyObservers(imCacheAction);
    }

    public IMnoStrategy getRcsStrategy() {
        return this.mMnoStrategy;
    }

    public String getMessageCreator() {
        return this.mMessageCreator;
    }

    public void setMessageCreator(String str) {
        this.mMessageCreator = str;
    }

    public int hashCode() {
        String str = this.mChatId;
        return (((str == null ? 0 : str.hashCode()) + 31) * 31) + this.mId;
    }

    public String toString() {
        return "MessageBase [mChatId=" + this.mChatId + ", mId=" + this.mId + ", mBody=" + IMSLog.checker(this.mBody) + ", mImdnId=" + this.mImdnId + ", mRemoteUri=" + IMSLog.numberChecker(this.mRemoteUri) + ", mType=" + this.mType + ", mContentType=" + this.mContentType + ", mImdnOriginalTo=" + IMSLog.checker(this.mImdnOriginalTo) + ", mImdnRecRouteList=" + this.mImdnRecRouteList + ", mStatus=" + this.mStatus + ", mInsertedTimestamp=" + this.mInsertedTimestamp + ", mSentTimestamp=" + this.mSentTimestamp + ", mDeliveredTimestamp=" + this.mDeliveredTimestamp + ", mDisplayedTimestamp=" + this.mDisplayedTimestamp + ", mDirection=" + this.mDirection + ", mUserAlias=" + IMSLog.checker(this.mUserAlias) + ", mCurrentRetryCount=" + this.mCurrentRetryCount + ", mDispNotification=" + this.mDispNotification + ", mNotificationStatus=" + this.mNotificationStatus + ", mDesiredNotificationStatus=" + this.mDesiredNotificationStatus + ", mNotDisplayedCounter=" + this.mNotDisplayedCounter + ", mIsBroadcastMsg=" + this.mIsBroadcastMsg + ", mDeviceId=" + this.mDeviceId + ", mMaapTrafficType=" + this.mMaapTrafficType + ", mReferenceImdnId=" + this.mReferenceImdnId + ", mReferenceType=" + this.mReferenceType + ", mReferenceValue=" + this.mReferenceValue + ", mRcsTrafficType=" + this.mRcsTrafficType + "]";
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MessageBase messageBase = (MessageBase) obj;
        String str = this.mChatId;
        if (str == null) {
            if (messageBase.mChatId != null) {
                return false;
            }
        } else if (!str.equals(messageBase.mChatId)) {
            return false;
        }
        return this.mId == messageBase.mId;
    }

    public void sendMessageRevokeRequest(String str, String str2, Message message, String str3) {
        ImsUri imsUri = this.mRemoteUri;
        if (imsUri == null) {
            Log.e(LOG_TAG, "remote uri is null");
        } else {
            this.mImsService.sendMessageRevokeRequest(new SendMessageRevokeParams(this.mUriGenerator.getNetworkPreferredUri(UriGenerator.URIServiceType.RCS_URI, imsUri.getMsisdn(), (String) null), this.mImdnId, message, str, str2, str3));
        }
    }

    public Date getNewDate(long j) {
        if (j == 0) {
            j = System.currentTimeMillis();
        }
        return new Date(j);
    }

    public int getPhoneId() {
        return this.mConfig.getPhoneId();
    }

    public static abstract class Builder<T extends Builder<T>> {
        private String mBody;
        private String mChatId;
        private ImConfig mConfig;
        private String mContentType;
        private String mContributionId;
        private String mConversationId;
        private long mDeliveredTimestamp;
        private NotificationStatus mDesiredNotificationStatus;
        private String mDeviceId;
        private ImDirection mDirection;
        private final Set<NotificationStatus> mDispNotification = new HashSet();
        private long mDisplayedTimestamp;
        private String mExtInfo;
        private int mFlagMask;
        private int mId;
        private String mImdnId;
        private String mImdnOriginalTo;
        private List<ImImdnRecRoute> mImdnRecRouteList;
        private IImServiceInterface mImsService;
        private long mInsertedTimestamp;
        private boolean mIsBroadcastMsg;
        private boolean mIsRoutingMsg;
        private boolean mIsSlmSvcMsg;
        private boolean mIsVM2TextMsg;
        private String mMaapTraficType;
        private ImConstants.MessagingTech mMessagingTech;
        private IMnoStrategy mMnoStrategy;
        private IModuleInterface mModule;
        private Network mNetwork;
        private int mNotDisplayedCounter;
        private NotificationStatus mNotificationStatus;
        private ImsUri mPreferredUri;
        private String mRcsTrafficType;
        private String mReferenceImdnId;
        private String mReferenceType;
        private String mReferenceValue;
        private ImsUri mRemoteUri;
        private String mRequestMessageId;
        private ImConstants.RevocationStatus mRevocationStatus;
        private RoutingType mRoutingType;
        private long mSentTimestamp;
        private String mSimIMSI;
        private ISlmServiceInterface mSlmService;
        private ImConstants.Status mStatus;
        private String mSuggestion;
        private ThumbnailTool mThumbnailTool;
        private ImConstants.Type mType;
        private UriGenerator mUriGenerator;
        private String mUserAlias;

        protected abstract T self();

        public Builder() {
            NotificationStatus notificationStatus = NotificationStatus.NONE;
            this.mNotificationStatus = notificationStatus;
            this.mDesiredNotificationStatus = notificationStatus;
            this.mRevocationStatus = ImConstants.RevocationStatus.NONE;
            this.mMessagingTech = ImConstants.MessagingTech.NORMAL;
        }

        public T module(IModuleInterface iModuleInterface) {
            this.mModule = iModuleInterface;
            return self();
        }

        public T imsService(IImServiceInterface iImServiceInterface) {
            this.mImsService = iImServiceInterface;
            return self();
        }

        public T slmService(ISlmServiceInterface iSlmServiceInterface) {
            this.mSlmService = iSlmServiceInterface;
            return self();
        }

        public T uriGenerator(UriGenerator uriGenerator) {
            this.mUriGenerator = uriGenerator;
            return self();
        }

        public T config(ImConfig imConfig) {
            this.mConfig = imConfig;
            return self();
        }

        public T thumbnailTool(ThumbnailTool thumbnailTool) {
            this.mThumbnailTool = thumbnailTool;
            return self();
        }

        public T id(int i) {
            this.mId = i;
            return self();
        }

        public T chatId(String str) {
            this.mChatId = str;
            return self();
        }

        public T imdnId(String str) {
            this.mImdnId = str;
            return self();
        }

        public T imdnIdOriginalTo(String str) {
            this.mImdnOriginalTo = str;
            return self();
        }

        public T imdnRecordRouteList(List<ImImdnRecRoute> list) {
            if (list != null) {
                this.mImdnRecRouteList = new ArrayList(list);
            }
            return self();
        }

        public T contentType(String str) {
            this.mContentType = str;
            return self();
        }

        public T type(ImConstants.Type type) {
            this.mType = type;
            return self();
        }

        public T isSlmSvcMsg(boolean z) {
            this.mIsSlmSvcMsg = z;
            return self();
        }

        public T status(ImConstants.Status status) {
            this.mStatus = status;
            return self();
        }

        public T sentTimestamp(long j) {
            this.mSentTimestamp = j;
            return self();
        }

        public T insertedTimestamp(long j) {
            this.mInsertedTimestamp = j;
            return self();
        }

        public T deliveredTimestamp(long j) {
            this.mDeliveredTimestamp = j;
            return self();
        }

        public T displayedTimestamp(long j) {
            this.mDisplayedTimestamp = j;
            return self();
        }

        public T remoteUri(ImsUri imsUri) {
            this.mRemoteUri = imsUri;
            return self();
        }

        public T direction(ImDirection imDirection) {
            this.mDirection = imDirection;
            return self();
        }

        public T userAlias(String str) {
            this.mUserAlias = str;
            return self();
        }

        public T dispNotification(Set<NotificationStatus> set) {
            if (set != null) {
                this.mDispNotification.addAll(set);
            }
            return self();
        }

        public T notificationStatus(NotificationStatus notificationStatus) {
            this.mNotificationStatus = notificationStatus;
            return self();
        }

        public T desiredNotificationStatus(NotificationStatus notificationStatus) {
            this.mDesiredNotificationStatus = notificationStatus;
            return self();
        }

        public T notDisplayedCounter(int i) {
            this.mNotDisplayedCounter = i;
            return self();
        }

        public T requestMessageId(String str) {
            this.mRequestMessageId = str;
            return self();
        }

        public T body(String str) {
            this.mBody = str;
            return self();
        }

        public T suggestion(String str) {
            this.mSuggestion = str;
            return self();
        }

        public T isBroadcastMsg(boolean z) {
            this.mIsBroadcastMsg = z;
            return self();
        }

        public T isVM2TextMsg(boolean z) {
            this.mIsVM2TextMsg = z;
            return self();
        }

        public T isRoutingMsg(boolean z) {
            this.mIsRoutingMsg = z;
            return self();
        }

        public T routingType(RoutingType routingType) {
            this.mRoutingType = routingType;
            return self();
        }

        public T mnoStrategy(IMnoStrategy iMnoStrategy) {
            this.mMnoStrategy = iMnoStrategy;
            return self();
        }

        public T network(Network network) {
            this.mNetwork = network;
            return self();
        }

        public T extinfo(String str) {
            this.mExtInfo = str;
            return self();
        }

        public T contributionId(String str) {
            this.mContributionId = str;
            return self();
        }

        public T conversationId(String str) {
            this.mConversationId = str;
            return self();
        }

        public T deviceId(String str) {
            this.mDeviceId = str;
            return self();
        }

        public T simIMSI(String str) {
            this.mSimIMSI = str;
            return self();
        }

        public T flagMask(int i) {
            this.mFlagMask = i;
            return self();
        }

        public T revocationStatus(ImConstants.RevocationStatus revocationStatus) {
            this.mRevocationStatus = revocationStatus;
            return self();
        }

        public T maapTrafficType(String str) {
            this.mMaapTraficType = str;
            return self();
        }

        public T messagingTech(ImConstants.MessagingTech messagingTech) {
            this.mMessagingTech = messagingTech;
            return self();
        }

        public T referenceImdnId(String str) {
            this.mReferenceImdnId = str;
            return self();
        }

        public T referenceType(String str) {
            this.mReferenceType = str;
            return self();
        }

        public T referenceValue(String str) {
            this.mReferenceValue = str;
            return self();
        }

        public T rcsTrafficType(String str) {
            this.mRcsTrafficType = str;
            return self();
        }
    }
}
