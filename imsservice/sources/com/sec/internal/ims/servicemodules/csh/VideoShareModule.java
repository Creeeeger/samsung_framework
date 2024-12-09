package com.sec.internal.ims.servicemodules.csh;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Looper;
import android.os.Message;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.options.Capabilities;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.RcsConfigurationHelper;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.base.ModuleChannel;
import com.sec.internal.ims.servicemodules.csh.event.CshErrorReason;
import com.sec.internal.ims.servicemodules.csh.event.CshInfo;
import com.sec.internal.ims.servicemodules.csh.event.IContentShare;
import com.sec.internal.ims.servicemodules.csh.event.ICshSuccessCallback;
import com.sec.internal.ims.servicemodules.csh.event.IvshServiceInterface;
import com.sec.internal.ims.servicemodules.csh.event.OpenApiTranslationFilter;
import com.sec.internal.ims.servicemodules.csh.event.VshIncomingSessionEvent;
import com.sec.internal.ims.servicemodules.csh.event.VshIntents;
import com.sec.internal.ims.servicemodules.csh.event.VshOrientation;
import com.sec.internal.ims.servicemodules.csh.event.VshSessionEstablishedEvent;
import com.sec.internal.ims.servicemodules.csh.event.VshSessionTerminatedEvent;
import com.sec.internal.ims.servicemodules.csh.event.VshSwitchCameraParams;
import com.sec.internal.ims.servicemodules.csh.event.VshVideoDisplayParams;
import com.sec.internal.ims.servicemodules.options.CapabilityUtil;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.util.DeviceOrientationStatus;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.ims.util.UriGeneratorFactory;
import com.sec.internal.interfaces.ims.imsservice.ICall;
import com.sec.internal.interfaces.ims.servicemodules.csh.IVideoShareModule;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import com.sec.internal.log.IMSLog;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

/* loaded from: classes.dex */
public class VideoShareModule extends CshModuleBase implements IVideoShareModule {
    private static final int DISABLED_ALL_COVERAGES = 0;
    private static final int ENABLED_3G_COVERAGES = 4;
    private static final int ENABLED_ALL_COVERAGES = 1;
    private static final int ENABLED_HSPA_COVERAGES = 8;
    private static final int ENABLED_LTE_COVERAGES = 16;
    private static final int ENABLED_WLAN_COVERAGES = 2;
    private static final int EVENT_CANCEL_SHARE = 5;
    private static final int EVENT_INCOMING_SESSION = 2;
    private static final int EVENT_SESSION_ESTABLISHED = 3;
    private static final int EVENT_SESSION_TEMINATED = 4;
    private boolean[] mHasVideoShareSupport;
    private final IvshServiceInterface mImsService;
    private int mInComingTerminateId;
    private long[] mInitialFeatures;
    private BroadcastReceiver mIntentReceiver;
    private int[] mNetworkType;
    private int mRegistrationId;
    private UriGenerator mUriGenerator;
    private int[] mVsAuth;
    private boolean mVshInComingEntered;
    private final VshTranslation mVshTranslation;
    private int[] maxDurationTime;
    public static final String NAME = VideoShareModule.class.getSimpleName();
    private static String LOG_TAG = VideoShareModule.class.getSimpleName();
    private static final String INTENT_MAX_DURATION_TIME = VideoShareModule.class.getName() + ".max_duration_time";
    private static final String EXTRA_SESSIONID = VideoShareModule.class.getName() + "SessionID";

    private int blurNetworkType(int i) {
        if (i != 1 && i != 2) {
            if (i == 15) {
                return 10;
            }
            if (i != 16) {
                switch (i) {
                    case 8:
                    case 9:
                    case 10:
                        return 10;
                    default:
                        return i;
                }
            }
        }
        return 16;
    }

    public VideoShareModule(Looper looper, Context context, IvshServiceInterface ivshServiceInterface) {
        super(looper, context);
        this.maxDurationTime = new int[]{0, 0};
        this.mRegistrationId = -1;
        this.mVsAuth = new int[]{0, 0};
        this.mHasVideoShareSupport = new boolean[]{false, false};
        this.mInitialFeatures = new long[]{0, 0};
        this.mVshInComingEntered = false;
        this.mInComingTerminateId = -1;
        this.mNetworkType = new int[]{0, 0};
        this.mIntentReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.servicemodules.csh.VideoShareModule.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (intent.getAction().equals(VideoShareModule.INTENT_MAX_DURATION_TIME)) {
                    int intExtra = intent.getIntExtra(VideoShareModule.EXTRA_SESSIONID, -1);
                    VideoShare session = VideoShareModule.this.getSession(intExtra);
                    if (session != null) {
                        Log.d(VideoShareModule.LOG_TAG, "Session #" + intExtra + " duration is approaching/longer than the VS MAX DURATION :" + VideoShareModule.this.maxDurationTime[VideoShareModule.this.mActiveCallPhoneId] + "s");
                        session.maxDurationTime();
                        return;
                    }
                    Log.w(VideoShareModule.LOG_TAG, "Session #" + intExtra + " is not found");
                }
            }
        };
        this.mImsService = ivshServiceInterface;
        this.mCache = CshCache.getInstance(ivshServiceInterface);
        this.mVshTranslation = new VshTranslation(this.mContext, this);
        this.mUriGenerator = UriGeneratorFactory.getInstance().get(UriGenerator.URIServiceType.RCS_URI);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(INTENT_MAX_DURATION_TIME);
        this.mContext.registerReceiver(this.mIntentReceiver, intentFilter, null, this);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public String getName() {
        return NAME;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public String[] getServicesRequiring() {
        return new String[]{"vs"};
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onServiceSwitched(int i, ContentValues contentValues) {
        updateFeatures(i);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void start() {
        if (isRunning()) {
            return;
        }
        super.start();
        this.mImsService.registerForVshIncomingSession(this, 2, null);
        this.mImsService.registerForVshSessionEstablished(this, 3, null);
        this.mImsService.registerForVshSessionTerminated(this, 4, null);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void stop() {
        for (int i = 0; i < this.mCache.getSize(); i++) {
            if (this.mCache.getSessionAt(i).getContent().shareType == 2) {
                ((VideoShare) this.mCache.getSessionAt(i)).sessionFailed();
            }
        }
        super.stop();
        disableVshFeature();
        this.mImsService.unregisterForVshIncomingSession(this);
        this.mImsService.unregisterForVshSessionEstablished(this);
        this.mImsService.unregisterForVshSessionTerminated(this);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onConfigured(int i) {
        Log.d(LOG_TAG, "onConfigured: phoneId = " + i);
        updateFeatures(i);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void onRegistered(ImsRegistration imsRegistration) {
        super.onRegistered(imsRegistration);
        Log.i(LOG_TAG, "onRegistered() phoneId = " + imsRegistration.getPhoneId() + ", services : " + imsRegistration.getServices());
        if (imsRegistration.getImsProfile() != null) {
            this.mRegistrationId = getRegistrationInfoId(imsRegistration);
        }
        updateServiceStatus(imsRegistration.getPhoneId());
        TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService(PhoneConstants.PHONE_KEY);
        if (telephonyManager != null) {
            int networkType = telephonyManager.getNetworkType();
            if (this.mNetworkType[imsRegistration.getPhoneId()] != 18) {
                this.mNetworkType[imsRegistration.getPhoneId()] = blurNetworkType(networkType);
            }
        }
        this.mHasVideoShareSupport[imsRegistration.getPhoneId()] = isVsEnabled(this.mNetworkType[imsRegistration.getPhoneId()], imsRegistration.getPhoneId());
        if (this.mHasVideoShareSupport[imsRegistration.getPhoneId()]) {
            Log.i(LOG_TAG, "enable VSH");
            this.mEnabledFeatures[imsRegistration.getPhoneId()] = Capabilities.FEATURE_VSH;
        } else {
            Log.i(LOG_TAG, "disable VSH");
            this.mEnabledFeatures[imsRegistration.getPhoneId()] = 0;
        }
        ICapabilityDiscoveryModule capabilityDiscoveryModule = getServiceModuleManager().getCapabilityDiscoveryModule();
        capabilityDiscoveryModule.updateOwnCapabilities(imsRegistration.getPhoneId());
        capabilityDiscoveryModule.exchangeCapabilitiesForVSHOnRegi(this.mHasVideoShareSupport[imsRegistration.getPhoneId()], imsRegistration.getPhoneId());
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void onDeregistered(ImsRegistration imsRegistration, int i) {
        Log.i(LOG_TAG, "onDeregistered");
        super.onDeregistered(imsRegistration, i);
        if (getImsRegistration() == null) {
            this.mEnabledFeatures[imsRegistration.getPhoneId()] = this.mInitialFeatures[imsRegistration.getPhoneId()];
            return;
        }
        this.mRegistrationId = -1;
        updateServiceStatus(imsRegistration.getPhoneId());
        this.mEnabledFeatures[imsRegistration.getPhoneId()] = this.mInitialFeatures[imsRegistration.getPhoneId()];
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onNetworkChanged(NetworkEvent networkEvent, int i) {
        int i2 = networkEvent.isWifiConnected ? 18 : networkEvent.network;
        if (getImsRegistration() != null) {
            Log.i(LOG_TAG, "onNetworkChanged: " + networkEvent + " network: " + i2);
            if (i2 != this.mNetworkType[i] && i2 == 3) {
                for (int i3 = 0; i3 < this.mCache.getSize(); i3++) {
                    IContentShare sessionAt = this.mCache.getSessionAt(i3);
                    if (sessionAt != null && sessionAt.getContent().shareType == 2 && sessionAt.getContent().shareDirection == 1) {
                        sendMessage(obtainMessage(5, Long.valueOf(sessionAt.getContent().shareId)));
                    }
                }
            }
            if (i2 != this.mNetworkType[i]) {
                boolean isVsEnabled = isVsEnabled(i2, i);
                if (this.mHasVideoShareSupport[i] != isVsEnabled) {
                    if (isVsEnabled) {
                        Log.i(LOG_TAG, "enable VSH");
                        this.mEnabledFeatures[i] = Capabilities.FEATURE_VSH;
                    } else {
                        Log.i(LOG_TAG, "disable VSH");
                        this.mEnabledFeatures[i] = 0;
                    }
                    ICapabilityDiscoveryModule capabilityDiscoveryModule = getServiceModuleManager().getCapabilityDiscoveryModule();
                    capabilityDiscoveryModule.updateOwnCapabilities(i);
                    if (i2 != 18 && this.mNetworkType[i] != 18) {
                        capabilityDiscoveryModule.exchangeCapabilitiesForVSHOnRegi(isVsEnabled, i);
                    }
                }
                this.mHasVideoShareSupport[i] = isVsEnabled;
            }
        }
        this.mNetworkType[i] = i2;
    }

    @Override // com.sec.internal.ims.servicemodules.csh.CshModuleBase, com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onCallStateChanged(int i, List<ICall> list) {
        processCallStateChanged(i, new CopyOnWriteArrayList<>(list));
    }

    private void processCallStateChanged(int i, CopyOnWriteArrayList<ICall> copyOnWriteArrayList) {
        super.onCallStateChanged(i, copyOnWriteArrayList);
        if (this.mNPrevConnectedCalls == 0 || this.mIsDuringMultipartyCall) {
            for (int i2 = 0; i2 < this.mCache.getSize(); i2++) {
                if (this.mCache.getSessionAt(i2).getContent().shareType == 2) {
                    VideoShare videoShare = (VideoShare) this.mCache.getSessionAt(i2);
                    Log.i(LOG_TAG, "processCallStateChanged: call cancelByUserSession");
                    videoShare.cancelByUserSession();
                }
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.csh.IVideoShareModule
    public int getMaxDurationTime() {
        return this.maxDurationTime[this.mActiveCallPhoneId];
    }

    public Context getContext() {
        return this.mContext;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.csh.IVideoShareModule
    public Future<VideoShare> createShare(final ImsUri imsUri, final String str) {
        FutureTask futureTask = new FutureTask(new Callable<VideoShare>() { // from class: com.sec.internal.ims.servicemodules.csh.VideoShareModule.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public VideoShare call() throws Exception {
                Log.i(VideoShareModule.LOG_TAG, "createShare");
                if (VideoShareModule.this.getImsRegistration() == null) {
                    VideoShareModule.this.mVshTranslation.broadcastCommunicationError();
                    return null;
                }
                VideoShareModule videoShareModule = VideoShareModule.this;
                VideoShare newOutgoingVideoShare = videoShareModule.mCache.newOutgoingVideoShare(videoShareModule, imsUri, str);
                if (newOutgoingVideoShare != null) {
                    newOutgoingVideoShare.startQutgoingSession();
                }
                return newOutgoingVideoShare;
            }
        });
        post(futureTask);
        return futureTask;
    }

    public void acceptShare(long j) {
        Log.i(LOG_TAG, "acceptShare sharedId " + j);
        VideoShare session = getSession(j);
        if (session != null) {
            session.acceptIncomingSession();
            return;
        }
        Log.w(LOG_TAG, "Detected illegal share id passed from intent. Was " + j);
        this.mVshTranslation.broadcastCommunicationError();
    }

    public void cancelShare(long j) {
        Log.i(LOG_TAG, "cancelShare sharedId " + j);
        VideoShare session = getSession(j);
        if (session != null) {
            session.cancelByUserSession();
            return;
        }
        Log.w(LOG_TAG, "Detected illegal share id passed from intent. Was " + j);
        this.mVshTranslation.broadcastCommunicationError();
    }

    public void toggleCamera(long j) {
        Log.i(LOG_TAG, "toggleCamera sharedId " + j);
        if (getSession(j) != null) {
            this.mImsService.switchCamera(new VshSwitchCameraParams(new ICshSuccessCallback() { // from class: com.sec.internal.ims.servicemodules.csh.VideoShareModule.3
                @Override // com.sec.internal.ims.servicemodules.csh.event.ICshSuccessCallback
                public void onSuccess() {
                }

                @Override // com.sec.internal.ims.servicemodules.csh.event.ICshSuccessCallback
                public void onFailure() {
                    Log.d(VideoShareModule.LOG_TAG, "IToggleCamera onFailure");
                }
            }));
            return;
        }
        Log.w(LOG_TAG, "Detected illegal share id passed from intent. Was " + j);
        this.mVshTranslation.broadcastCommunicationError();
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.csh.IVideoShareModule
    public void changeSurfaceOrientation(long j, int i) {
        VideoShare session = getSession(j);
        if (session != null) {
            session.setPhoneOrientation(DeviceOrientationStatus.translate(i));
            Log.i(LOG_TAG, "changeSurfaceOrientation sharedId : " + j + " onSuccess");
            return;
        }
        Log.w(LOG_TAG, "Detected illegal share id passed from intent. Was " + j);
        this.mVshTranslation.broadcastCommunicationError();
    }

    @Override // com.sec.internal.ims.servicemodules.csh.CshModuleBase
    public VideoShare getSession(long j) {
        try {
            return (VideoShare) super.getSession(j);
        } catch (ClassCastException unused) {
            Log.w(LOG_TAG, j + " is not Video Share");
            return null;
        }
    }

    public VideoShare getSession(int i) {
        try {
            return (VideoShare) this.mCache.getSession(i);
        } catch (ClassCastException unused) {
            Log.w(LOG_TAG, i + " is not Video Share");
            return null;
        }
    }

    private void disableVshFeature() {
        Log.d(LOG_TAG, "disableVshFeature");
        ModuleChannel.createChannel(ModuleChannel.CAPDISCOVERY, this).disableFeature(Capabilities.FEATURE_VSH);
    }

    private void vshIncomingSessionEvent(VshIncomingSessionEvent vshIncomingSessionEvent) {
        final int i = vshIncomingSessionEvent.mSessionId;
        final ImsUri imsUri = vshIncomingSessionEvent.mRemoteUri;
        String str = vshIncomingSessionEvent.mContentType;
        final int i2 = vshIncomingSessionEvent.mSource;
        final String str2 = vshIncomingSessionEvent.mFilePath;
        Log.i(LOG_TAG, "vshIncomingSessionEvent #" + i + ", " + IMSLog.checker(imsUri));
        this.mVshInComingEntered = true;
        this.mInComingTerminateId = -1;
        if (str != null && str.startsWith(OpenApiTranslationFilter.SOS_CONTENT_TYPE_PREFIX)) {
            Log.v(LOG_TAG, "Skipping OpenAPI incoming session message");
        } else {
            post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.csh.VideoShareModule.4
                @Override // java.lang.Runnable
                public void run() {
                    if (i == VideoShareModule.this.mInComingTerminateId) {
                        Log.d(VideoShareModule.LOG_TAG, "InComing Video Share is already cancelled by stack");
                        VideoShareModule.this.mVshInComingEntered = false;
                        VideoShareModule.this.mInComingTerminateId = -1;
                        return;
                    }
                    String str3 = i2 == 1 ? VshIntents.LIVE_VIDEO_CONTENTPATH : str2;
                    VideoShareModule videoShareModule = VideoShareModule.this;
                    VideoShare newIncommingVideoShare = videoShareModule.mCache.newIncommingVideoShare(videoShareModule, i, imsUri, str3);
                    if (newIncommingVideoShare != null) {
                        Log.i(VideoShareModule.LOG_TAG, "created incoming session");
                        newIncommingVideoShare.incomingSessionDone();
                    }
                    VideoShareModule.this.mVshInComingEntered = false;
                    VideoShareModule.this.mInComingTerminateId = -1;
                }
            });
        }
    }

    public void notityIncommingSession(long j, ImsUri imsUri, String str) {
        ImsUri normalizedUri;
        Iterator<Integer> it = this.mActiveCallLists.keySet().iterator();
        boolean z = false;
        while (it.hasNext()) {
            Iterator<ICall> it2 = this.mActiveCallLists.get(it.next()).iterator();
            while (true) {
                if (it2.hasNext()) {
                    ICall next = it2.next();
                    if (next.isConnected() && (normalizedUri = this.mUriGenerator.getNormalizedUri(next.getNumber(), true)) != null && normalizedUri.equals(imsUri)) {
                        z = true;
                        break;
                    }
                }
            }
        }
        if (!z) {
            sendMessage(obtainMessage(5, Long.valueOf(j)));
        } else {
            this.mVshTranslation.broadcastIncomming(j, imsUri, str);
        }
    }

    public void notifyApprochingVsMaxDuration(long j, int i) {
        this.mVshTranslation.broadcastApproachingVsMaxDuration(j, i);
    }

    private void vshSessionEstablishedEvent(VshSessionEstablishedEvent vshSessionEstablishedEvent) {
        PendingIntent pendingIntent;
        Log.i(LOG_TAG, "vshSessionEstablishedEvent session #" + vshSessionEstablishedEvent.mSessionId);
        VideoShare session = getSession(vshSessionEstablishedEvent.mSessionId);
        if (session != null) {
            if (this.maxDurationTime[this.mActiveCallPhoneId] != 0) {
                Intent intent = new Intent(INTENT_MAX_DURATION_TIME);
                intent.putExtra(EXTRA_SESSIONID, vshSessionEstablishedEvent.mSessionId);
                pendingIntent = PendingIntent.getBroadcast(this.mContext, 0, intent, 33554432);
            } else {
                pendingIntent = null;
            }
            session.sessioinEstablished(vshSessionEstablishedEvent.mResolution, pendingIntent);
            this.mVshTranslation.broadcastConnected(session.getContent().shareId, session.getContent().shareContactUri);
            session.setPhoneOrientation(DeviceOrientationStatus.getDeviceOrientation(this.mContext));
            return;
        }
        Log.e(LOG_TAG, "Session is Not found");
    }

    private void vshSessionTerminatedEvent(VshSessionTerminatedEvent vshSessionTerminatedEvent) {
        Log.i(LOG_TAG, "vshSessionTerminatedEvent session #" + vshSessionTerminatedEvent.mSessionId + " Reason : " + vshSessionTerminatedEvent.mReason);
        VideoShare session = getSession(vshSessionTerminatedEvent.mSessionId);
        ImsRegistration imsRegistration = getImsRegistration();
        if (session != null) {
            session.sessionTerminatedByStack();
            CshInfo content = session.getContent();
            if (imsRegistration != null) {
                getServiceModuleManager().getCapabilityDiscoveryModule().exchangeCapabilitiesForVSH(imsRegistration.getPhoneId(), true);
            }
            int vshReasonTranslator = vshReasonTranslator(vshSessionTerminatedEvent.mReason);
            content.reasonCode = vshReasonTranslator;
            this.mVshTranslation.broadcastCanceled(content.shareId, content.shareContactUri, content.shareDirection, vshReasonTranslator);
            if (vshSessionTerminatedEvent.mReason == CshErrorReason.RTP_RTCP_TIMEOUT) {
                this.mVshTranslation.broadcastCshServiceNotReady();
            }
            if (vshSessionTerminatedEvent.mReason == CshErrorReason.CSH_CAM_ERROR) {
                this.mVshTranslation.broadcastCshCamError();
                return;
            }
            return;
        }
        Log.d(LOG_TAG, "Already removed session");
        if (this.mVshInComingEntered) {
            this.mInComingTerminateId = vshSessionTerminatedEvent.mSessionId;
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        int i = message.what;
        if (i == 2) {
            vshIncomingSessionEvent((VshIncomingSessionEvent) ((AsyncResult) message.obj).result);
            return;
        }
        if (i == 3) {
            vshSessionEstablishedEvent((VshSessionEstablishedEvent) ((AsyncResult) message.obj).result);
        } else if (i == 4) {
            vshSessionTerminatedEvent((VshSessionTerminatedEvent) ((AsyncResult) message.obj).result);
        } else {
            if (i != 5) {
                return;
            }
            cancelShare(((Long) message.obj).longValue());
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.csh.VideoShareModule$5, reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason;

        static {
            int[] iArr = new int[CshErrorReason.values().length];
            $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason = iArr;
            try {
                iArr[CshErrorReason.CANCELED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.USER_BUSY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.REJECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.TEMPORAIRLY_NOT_AVAILABLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.ENGINE_ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.FILE_IO.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.FORMAT_NOT_SUPPORTED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.REQUEST_TIMED_OUT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.USER_NOT_FOUND.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.ACK_TIMED_OUT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.BEARER_LOST.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.NORMAL.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.UNKNOWN.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.FORBIDDEN.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.RTP_RTCP_TIMEOUT.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    private int vshReasonTranslator(CshErrorReason cshErrorReason) {
        switch (AnonymousClass5.$SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[cshErrorReason.ordinal()]) {
            case 1:
                return 2;
            case 2:
            case 3:
            case 4:
                return 4;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                return 3;
            case 12:
            case 13:
                return 10;
            case 14:
                return 13;
            case 15:
                return 6;
            default:
                return 9;
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void handleIntent(Intent intent) {
        this.mVshTranslation.handleIntent(intent);
    }

    public void setVshPhoneOrientation(VshOrientation vshOrientation) {
        this.mImsService.setVshPhoneOrientation(vshOrientation);
    }

    public void setVshVideoDisplay(VshVideoDisplayParams vshVideoDisplayParams) {
        this.mImsService.setVshVideoDisplay(vshVideoDisplayParams);
    }

    public void resetVshVideoDisplay(VshVideoDisplayParams vshVideoDisplayParams) {
        this.mImsService.resetVshVideoDisplay(vshVideoDisplayParams);
    }

    private void readConfig(int i) {
        this.mVsAuth[i] = RcsConfigurationHelper.readIntParam(this.mContext, ImsUtil.getPathWithPhoneId(ConfigConstants.ConfigTable.SERVICES_VS_AUTH, i), 0).intValue();
        Log.i(LOG_TAG, "readConfig: VsAuth " + this.mVsAuth[i]);
        this.maxDurationTime[i] = RcsConfigurationHelper.readIntParam(this.mContext, ImsUtil.getPathWithPhoneId("maxtimevideoshare", i), 0).intValue();
        if (SimUtil.getSimMno(i) == Mno.SPRINT && this.mVsAuth[i] == 1) {
            Log.d(LOG_TAG, "readconfig: vsauth true but forced disable for SPRINT");
            disableVshFeature();
            this.mVsAuth[i] = 0;
        }
    }

    public boolean isVsEnabled(int i, int i2) {
        Log.i(LOG_TAG, "networkType is " + i + ", VsAuth is " + this.mVsAuth[i2]);
        int i3 = this.mVsAuth[i2];
        if (i3 == 0) {
            return false;
        }
        if ((i3 & 1) > 0) {
            return true;
        }
        switch (i) {
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 12:
                return (i3 & 4) > 0;
            case 4:
            case 7:
            case 11:
            case 14:
            case 16:
            case 17:
            case 19:
            default:
                return false;
            case 10:
            case 15:
                return (i3 & 8) > 0;
            case 13:
            case 20:
                return (i3 & 16) > 0;
            case 18:
                return (i3 & 2) > 0;
        }
    }

    @Override // com.sec.internal.ims.servicemodules.csh.CshModuleBase
    protected void updateServiceStatus(int i) {
        super.updateServiceStatus(i);
        boolean z = !this.mIsDuringMultipartyCall && getImsRegistration() != null && CapabilityUtil.hasFeature(this.mEnabledFeatures[i], (long) Capabilities.FEATURE_VSH) && this.mRemoteCapabilities.hasFeature(Capabilities.FEATURE_VSH);
        if (this.mIsServiceReady != z) {
            this.mIsServiceReady = z;
            if (z) {
                this.mVshTranslation.broadcastServiceReady();
            } else {
                this.mVshTranslation.broadcastServiceNotReady();
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public ImsRegistration getImsRegistration() {
        if (this.mRegistrationId != -1) {
            return ImsRegistry.getRegistrationManager().getRegistrationInfo(this.mRegistrationId);
        }
        return null;
    }

    private void updateFeatures(int i) {
        readConfig(i);
        TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService(PhoneConstants.PHONE_KEY);
        if (telephonyManager != null) {
            int networkType = telephonyManager.getNetworkType();
            int[] iArr = this.mNetworkType;
            if (iArr[i] != 18) {
                iArr[i] = blurNetworkType(networkType);
            }
        }
        this.mHasVideoShareSupport[i] = isVsEnabled(this.mNetworkType[i], i);
        Log.i(LOG_TAG, "updateFeatures: phoneId " + i + ", HasVideoShareSupport = " + this.mHasVideoShareSupport[i]);
        boolean z = DmConfigHelper.getImsSwitchValue(this.mContext, DeviceConfigManager.RCS, i) == 1;
        boolean z2 = DmConfigHelper.getImsSwitchValue(this.mContext, "vs", i) == 1;
        if (this.mVsAuth[i] != 0 && z && z2) {
            this.mEnabledFeatures[i] = Capabilities.FEATURE_VSH;
        } else {
            Log.d(LOG_TAG, "updateFeatures: RCS is disabled.");
            this.mEnabledFeatures[i] = 0;
        }
        this.mInitialFeatures[i] = this.mEnabledFeatures[i];
    }
}
