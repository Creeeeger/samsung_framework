package com.sec.internal.ims.servicemodules.csh;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.gsma.services.rcs.sharing.image.ImageSharing;
import com.sec.ims.ImsRegistration;
import com.sec.ims.options.Capabilities;
import com.sec.ims.util.ImsUri;
import com.sec.ims.util.SipError;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.RcsConfigurationHelper;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.base.ModuleChannel;
import com.sec.internal.ims.servicemodules.csh.event.CshErrorReason;
import com.sec.internal.ims.servicemodules.csh.event.CshInfo;
import com.sec.internal.ims.servicemodules.csh.event.ICshConstants;
import com.sec.internal.ims.servicemodules.csh.event.IIshServiceInterface;
import com.sec.internal.ims.servicemodules.csh.event.IshFileTransfer;
import com.sec.internal.ims.servicemodules.csh.event.IshIncomingSessionEvent;
import com.sec.internal.ims.servicemodules.csh.event.IshSessionEstablishedEvent;
import com.sec.internal.ims.servicemodules.csh.event.IshTransferCompleteEvent;
import com.sec.internal.ims.servicemodules.csh.event.IshTransferFailedEvent;
import com.sec.internal.ims.servicemodules.csh.event.IshTransferProgressEvent;
import com.sec.internal.ims.servicemodules.csh.event.OpenApiTranslationFilter;
import com.sec.internal.ims.servicemodules.options.CapabilityUtil;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.ims.util.StorageEnvironment;
import com.sec.internal.interfaces.ims.core.IRegistrationGovernor;
import com.sec.internal.interfaces.ims.servicemodules.csh.IImageShareModule;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

/* loaded from: classes.dex */
public class ImageShareModule extends CshModuleBase implements IImageShareModule {
    private static final int EVENT_INCOMING_SESSION = 2;
    private static final int EVENT_SESSION_ESTABLISHED = 3;
    private static final int EVENT_TRANSFER_COMPLETE = 4;
    private static final int EVENT_TRANSFER_FAILED = 6;
    private static final int EVENT_TRANSFER_PROGRESS = 5;
    private boolean[] mHasImageShareSupport;
    private IIshServiceInterface mImsService;
    private IshTranslation mIshTranslation;
    private final List<IImageShareEventListener> mListeners;
    private long[] mMaxSize;
    private int mRegistrationId;
    public static final String NAME = ImageShareModule.class.getSimpleName();
    private static String LOG_TAG = ImageShareModule.class.getSimpleName();

    @Override // com.sec.internal.interfaces.ims.servicemodules.csh.IImageShareModule
    public long getWarnSize() {
        return 0L;
    }

    public void notifyLimitExceeded(long j, ImsUri imsUri) {
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onNetworkChanged(NetworkEvent networkEvent, int i) {
    }

    public ImageShareModule(Looper looper, Context context, IIshServiceInterface iIshServiceInterface) {
        super(looper, context);
        this.mMaxSize = new long[]{0, 0};
        this.mHasImageShareSupport = new boolean[]{false, false};
        this.mRegistrationId = -1;
        this.mListeners = new ArrayList();
        this.mImsService = iIshServiceInterface;
        this.mCache = CshCache.getInstance(iIshServiceInterface);
        this.mIshTranslation = new IshTranslation(this.mContext, this);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public String getName() {
        return NAME;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public String[] getServicesRequiring() {
        return new String[]{"is"};
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
        this.mImsService.registerForIshIncomingSession(this, 2, null);
        this.mImsService.registerForIshSessionEstablished(this, 3, null);
        this.mImsService.registerForIshTransferComplete(this, 4, null);
        this.mImsService.registerForIshTransferProgress(this, 5, null);
        this.mImsService.registerForIshTransferFailed(this, 6, null);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void stop() {
        for (int i = 0; i < this.mCache.getSize(); i++) {
            if (this.mCache.getSessionAt(i).getContent().shareType == 1) {
                ((ImageShare) this.mCache.getSessionAt(i)).sessionFailed();
            }
        }
        super.stop();
        disableIshFeature();
        this.mImsService.unregisterForIshIncomingSession(this);
        this.mImsService.unregisterForIshSessionEstablished(this);
        this.mImsService.unregisterForIshTransferComplete(this);
        this.mImsService.unregisterForIshTransferProgress(this);
        this.mImsService.unregisterForIshTransferFailed(this);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onConfigured(int i) {
        Log.d(LOG_TAG, "onConfigured: phoneId = " + i);
        updateFeatures(i);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void onRegistered(ImsRegistration imsRegistration) {
        super.onRegistered(imsRegistration);
        Log.i(LOG_TAG, "onRegistered");
        if (imsRegistration.getImsProfile() != null) {
            this.mRegistrationId = getRegistrationInfoId(imsRegistration);
        }
        updateServiceStatus(imsRegistration.getPhoneId());
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void onDeregistered(ImsRegistration imsRegistration, int i) {
        Log.i(LOG_TAG, "onDeregistered");
        super.onDeregistered(imsRegistration, i);
        if (getImsRegistration() == null) {
            return;
        }
        this.mRegistrationId = -1;
        updateServiceStatus(imsRegistration.getPhoneId());
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.csh.IImageShareModule
    public long getMaxSize() {
        return this.mMaxSize[this.mActiveCallPhoneId];
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.csh.IImageShareModule
    public Future<ImageShare> createShare(final ImsUri imsUri, final String str) {
        FutureTask futureTask = new FutureTask(new Callable<ImageShare>() { // from class: com.sec.internal.ims.servicemodules.csh.ImageShareModule.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public ImageShare call() throws Exception {
                Log.i(ImageShareModule.LOG_TAG, "createShare");
                ImageShareModule imageShareModule = ImageShareModule.this;
                ImageShare newOutgoingImageShare = imageShareModule.mCache.newOutgoingImageShare(imageShareModule, imsUri, str);
                if (newOutgoingImageShare != null) {
                    newOutgoingImageShare.startQutgoingSession();
                }
                return newOutgoingImageShare;
            }
        });
        post(futureTask);
        return futureTask;
    }

    public void acceptShare(long j) {
        Log.i(LOG_TAG, "acceptShare sharedId " + j);
        ImageShare session = getSession(j);
        if (session != null) {
            if (StorageEnvironment.isSdCardStateFine(this.mContext, session.getFileSize())) {
                session.acceptIncomingSession();
                return;
            } else {
                session.incomingSessionPreReject();
                return;
            }
        }
        Log.w(LOG_TAG, "Detected illegal share id passed from intent. Was " + j);
        this.mIshTranslation.broadcastCommunicationError();
    }

    public void cancelShare(long j) {
        Log.i(LOG_TAG, "cancelShare sharedId " + j);
        ImageShare session = getSession(j);
        if (session != null) {
            session.cancelByLocalSession();
            return;
        }
        Log.w(LOG_TAG, "Detected illegal share id passed from intent. Was " + j);
        this.mIshTranslation.broadcastCommunicationError();
    }

    @Override // com.sec.internal.ims.servicemodules.csh.CshModuleBase
    public ImageShare getSession(long j) {
        try {
            return (ImageShare) super.getSession(j);
        } catch (ClassCastException unused) {
            Log.w(LOG_TAG, j + " is not Image Share");
            return null;
        }
    }

    public void ishSessionEstablishedEvent(IshSessionEstablishedEvent ishSessionEstablishedEvent) {
        ImageShare imageShare = (ImageShare) this.mCache.getSession(ishSessionEstablishedEvent.mSessionId);
        Log.i(LOG_TAG, "ishSessionEstablishedEvent sessionId : " + ishSessionEstablishedEvent.mSessionId);
        if (imageShare != null) {
            imageShare.mContent.reasonCode = Integer.valueOf(ImageSharing.ReasonCode.FAILED_SHARING.toString()).intValue();
            imageShare.sessioinEstablished();
            this.mIshTranslation.broadcastConnected(imageShare.getContent().shareId, imageShare.getContent().shareContactUri);
            return;
        }
        Log.e(LOG_TAG, "Session is Not found");
    }

    public void ishTransferFailedEvent(IshTransferFailedEvent ishTransferFailedEvent) {
        int i = ishTransferFailedEvent.mSessionId;
        CshErrorReason cshErrorReason = ishTransferFailedEvent.mReason;
        Log.i(LOG_TAG, "ishTransferFailedEvent sessionId : " + i + " Reason : " + cshErrorReason);
        ImageShare imageShare = (ImageShare) this.mCache.getSession(i);
        ImsRegistration imsRegistration = getImsRegistration();
        if (cshErrorReason == CshErrorReason.FORBIDDEN) {
            IRegistrationGovernor registrationGovernor = imsRegistration != null ? ImsRegistry.getRegistrationManager().getRegistrationGovernor(imsRegistration.getHandle()) : null;
            if (registrationGovernor != null) {
                registrationGovernor.onSipError("ish_tapi", new SipError(403, "Forbidden"));
            }
        }
        if (imageShare != null) {
            imageShare.sessionFailed();
            if (imsRegistration != null) {
                getServiceModuleManager().getCapabilityDiscoveryModule().exchangeCapabilitiesForVSH(imsRegistration.getPhoneId(), true);
            }
            IshTranslation ishTranslation = this.mIshTranslation;
            CshInfo cshInfo = imageShare.mContent;
            ishTranslation.broadcastCanceled(cshInfo.shareId, cshInfo.shareContactUri, cshInfo.shareDirection, ishReasonTranslator(cshErrorReason));
            if (ishTransferFailedEvent.mReason == CshErrorReason.MSRP_TIMEOUT) {
                this.mIshTranslation.broadcastCshServiceNotReady();
                return;
            }
            return;
        }
        Log.d(LOG_TAG, "Already removed session");
    }

    public void ishCancelFailed(int i) {
        ImageShare imageShare = (ImageShare) this.mCache.getSession(i);
        if (imageShare != null) {
            imageShare.sessionFailed();
            IshTranslation ishTranslation = this.mIshTranslation;
            CshInfo cshInfo = imageShare.mContent;
            ishTranslation.broadcastCanceled(cshInfo.shareId, cshInfo.shareContactUri, cshInfo.shareDirection, 12);
            Log.i(LOG_TAG, "ishCancelFailed sessionId : " + i + " broadcast finished");
            return;
        }
        Log.d(LOG_TAG, "Already removed session");
    }

    public void ishTransferCompleteEvent(IshTransferCompleteEvent ishTransferCompleteEvent) {
        ImageShare imageShare = (ImageShare) this.mCache.getSession(ishTransferCompleteEvent.mSessionId);
        if (imageShare != null) {
            imageShare.transferCompleted();
            this.mIshTranslation.broadcastCompleted(imageShare.mContent.shareId, imageShare.getContent().shareContactUri);
            if (imageShare.getContent().shareDirection == 0) {
                this.mIshTranslation.broadcastSystemRefresh(imageShare.getContent().dataPath);
                return;
            }
            return;
        }
        Log.d(LOG_TAG, "Already removed session");
    }

    public void ishTransferProgressEvent(IshTransferProgressEvent ishTransferProgressEvent) {
        ImageShare imageShare = (ImageShare) this.mCache.getSession(ishTransferProgressEvent.mSessionId);
        if (imageShare != null) {
            long j = ishTransferProgressEvent.mProgress;
            ContentResolver contentResolver = this.mContext.getContentResolver();
            Log.i(LOG_TAG, "progressing for in_progress state: " + ((100 * j) / imageShare.getContent().dataSize) + "%");
            imageShare.getContent().dataProgress = j;
            contentResolver.notifyChange(ICshConstants.ShareDatabase.ACTIVE_SESSIONS_URI, null);
            this.mIshTranslation.broadcastProgress(imageShare.mContent.shareId, imageShare.getContent().shareContactUri, j, imageShare.getContent().dataSize);
            Iterator<IImageShareEventListener> it = this.mListeners.iterator();
            while (it.hasNext()) {
                it.next().onIshTransferProgressEvent(String.valueOf(imageShare.mContent.shareId), j);
            }
            return;
        }
        Log.e(LOG_TAG, "Session is Not found");
    }

    public void ishIncomingSessionEvent(IshIncomingSessionEvent ishIncomingSessionEvent) {
        final int i = ishIncomingSessionEvent.mSessionId;
        final ImsUri imsUri = ishIncomingSessionEvent.mRemoteUri;
        String str = ishIncomingSessionEvent.mUserAlias;
        final IshFileTransfer ishFileTransfer = ishIncomingSessionEvent.mFt;
        Log.i(LOG_TAG, "onIshIncomingSessionEvent( #" + i + ", " + IMSLog.checker(imsUri) + "," + IMSLog.checker(str) + "): Enter");
        if (ishFileTransfer.getMimeType().startsWith(OpenApiTranslationFilter.SOS_CONTENT_TYPE_PREFIX)) {
            Log.v(LOG_TAG, "Skipping OpenAPI incoming session message");
        } else {
            post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.csh.ImageShareModule.2
                @Override // java.lang.Runnable
                public void run() {
                    ImageShareModule imageShareModule = ImageShareModule.this;
                    ImageShare newIncommingImageShare = imageShareModule.mCache.newIncommingImageShare(imageShareModule, i, imsUri, ishFileTransfer);
                    if (newIncommingImageShare != null) {
                        Log.d(ImageShareModule.LOG_TAG, "created incoming session");
                        newIncommingImageShare.incomingSessionDone();
                    }
                }
            });
        }
    }

    public void notityIncommingSession(long j, ImsUri imsUri, String str, long j2) {
        this.mIshTranslation.broadcastIncomming(j, imsUri, str, j2);
    }

    public void notifyInvalidDataPath(String str) {
        this.mIshTranslation.broadcastInvalidDataPath(str);
    }

    private void disableIshFeature() {
        Log.d(LOG_TAG, "disableIshFeature");
        ModuleChannel.createChannel(ModuleChannel.CAPDISCOVERY, this).disableFeature(Capabilities.FEATURE_ISH);
    }

    /* renamed from: com.sec.internal.ims.servicemodules.csh.ImageShareModule$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason;

        static {
            int[] iArr = new int[CshErrorReason.values().length];
            $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason = iArr;
            try {
                iArr[CshErrorReason.CANCELED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.REMOTE_CONNECTION_CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.REJECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.USER_BUSY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.TEMPORAIRLY_NOT_AVAILABLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.NOT_REACHABLE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.ENGINE_ERROR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.FILE_IO.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.FORMAT_NOT_SUPPORTED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.USER_NOT_FOUND.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.BEARER_LOST.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.NONE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.REQUEST_TIMED_OUT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.ACK_TIMEOUT.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[CshErrorReason.FORBIDDEN.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    private int ishReasonTranslator(CshErrorReason cshErrorReason) {
        switch (AnonymousClass3.$SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason[cshErrorReason.ordinal()]) {
            case 1:
            case 2:
                return 10;
            case 3:
            case 4:
            case 5:
            case 6:
                return 4;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                return 3;
            case 13:
            case 14:
                return 6;
            case 15:
                return 12;
            default:
                return 9;
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        int i = message.what;
        if (i == 2) {
            ishIncomingSessionEvent((IshIncomingSessionEvent) ((AsyncResult) message.obj).result);
            return;
        }
        if (i == 3) {
            ishSessionEstablishedEvent((IshSessionEstablishedEvent) ((AsyncResult) message.obj).result);
            return;
        }
        if (i == 4) {
            ishTransferCompleteEvent((IshTransferCompleteEvent) ((AsyncResult) message.obj).result);
        } else if (i == 5) {
            ishTransferProgressEvent((IshTransferProgressEvent) ((AsyncResult) message.obj).result);
        } else {
            if (i != 6) {
                return;
            }
            ishTransferFailedEvent((IshTransferFailedEvent) ((AsyncResult) message.obj).result);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void handleIntent(Intent intent) {
        this.mIshTranslation.handleIntent(intent);
    }

    private void readConfig(int i) {
        this.mHasImageShareSupport[i] = RcsConfigurationHelper.readBoolParam(this.mContext, ImsUtil.getPathWithPhoneId(ConfigConstants.ConfigTable.SERVICES_IS_AUTH, i), Boolean.FALSE).booleanValue();
        this.mMaxSize[i] = RcsConfigurationHelper.readIntParam(this.mContext, ImsUtil.getPathWithPhoneId(ConfigConstants.ConfigTable.EXT_MAX_SIZE_IMAGE_SHARE, i), 0).intValue();
        Log.i(LOG_TAG, "readConfig phonId : " + i + " ImageShare enable " + this.mHasImageShareSupport[i] + ", ImageShare Max size " + this.mMaxSize[i]);
        if (SimUtil.getSimMno(i) == Mno.SPRINT && this.mHasImageShareSupport[i]) {
            Log.d(LOG_TAG, "readconfig: isauth true but forced disable for SPRINT");
            disableIshFeature();
            this.mHasImageShareSupport[i] = false;
        }
    }

    @Override // com.sec.internal.ims.servicemodules.csh.CshModuleBase
    protected void updateServiceStatus(int i) {
        super.updateServiceStatus(i);
        boolean z = !this.mIsDuringMultipartyCall && getImsRegistration() != null && CapabilityUtil.hasFeature(this.mEnabledFeatures[i], (long) Capabilities.FEATURE_ISH) && this.mRemoteCapabilities.hasFeature(Capabilities.FEATURE_ISH);
        if (this.mIsServiceReady != z) {
            this.mIsServiceReady = z;
            if (z) {
                this.mIshTranslation.broadcastServiceReady();
            } else {
                this.mIshTranslation.broadcastServiceNotReady();
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
        Log.i(LOG_TAG, "updateFeatures: phoneId: " + i);
        readConfig(i);
        boolean z = DmConfigHelper.getImsSwitchValue(this.mContext, DeviceConfigManager.RCS, i) == 1;
        if (this.mHasImageShareSupport[i] && z && DmConfigHelper.getImsSwitchValue(this.mContext, "is", i) == 1) {
            this.mEnabledFeatures[i] = Capabilities.FEATURE_ISH;
        } else {
            Log.d(LOG_TAG, "updateFeatures: RCS is disabled.");
            this.mEnabledFeatures[i] = 0;
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.csh.IImageShareModule
    public void registerImageShareEventListener(IImageShareEventListener iImageShareEventListener) {
        this.mListeners.add(iImageShareEventListener);
    }
}
