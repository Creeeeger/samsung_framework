package com.sec.internal.ims.servicemodules.tapi.service.api;

import android.content.Context;
import android.database.Cursor;
import android.location.Location;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Log;
import com.gsma.services.rcs.Geoloc;
import com.gsma.services.rcs.IRcsServiceRegistrationListener;
import com.gsma.services.rcs.RcsServiceRegistration;
import com.gsma.services.rcs.contact.ContactId;
import com.gsma.services.rcs.sharing.geoloc.GeolocSharing;
import com.gsma.services.rcs.sharing.geoloc.IGeolocSharing;
import com.gsma.services.rcs.sharing.geoloc.IGeolocSharingListener;
import com.gsma.services.rcs.sharing.geoloc.IGeolocSharingService;
import com.sec.ims.ImsRegistration;
import com.sec.ims.extensions.ContextExt;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.constants.ims.servicemodules.im.reason.CancelReason;
import com.sec.internal.constants.ims.servicemodules.im.result.Result;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.TelephonyUtilsWrapper;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.FtMessage;
import com.sec.internal.ims.servicemodules.im.ImCache;
import com.sec.internal.ims.servicemodules.im.ImSession;
import com.sec.internal.ims.servicemodules.im.MessageBase;
import com.sec.internal.ims.servicemodules.im.listener.IFtEventListener;
import com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.servicemodules.tapi.service.broadcaster.GeolocSharingEventBroadcaster;
import com.sec.internal.ims.servicemodules.tapi.service.broadcaster.IRegistrationStatusBroadcaster;
import com.sec.internal.ims.util.PhoneUtils;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.servicemodules.gls.IGlsModule;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class GeolocSharingServiceImpl extends IGeolocSharingService.Stub implements IMessageEventListener, IFtEventListener, IRegistrationStatusBroadcaster {
    private static final String LOG_TAG = GeolocSharingServiceImpl.class.getSimpleName();
    private Context mContext;
    private GeolocSharingEventBroadcaster mGeolocSharingEventBroadcaster;
    private IGlsModule mGlsModule;
    private final Hashtable<String, IGeolocSharing> mGshSessions = new Hashtable<>();
    private final Object mLock = new Object();
    private RemoteCallbackList<IRcsServiceRegistrationListener> mServiceListeners = new RemoteCallbackList<>();

    public int getServiceVersion() throws ServerApiException {
        return 2;
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener
    public void onCancelMessageResponse(String str, String str2, boolean z) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onCancelRequestFailed(FtMessage ftMessage) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onFileResizingNeeded(FtMessage ftMessage, long j) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onFileTransferAttached(FtMessage ftMessage) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onImdnNotificationReceived(FtMessage ftMessage, ImsUri imsUri, NotificationStatus notificationStatus, boolean z) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener
    public void onImdnNotificationReceived(MessageBase messageBase, ImsUri imsUri, NotificationStatus notificationStatus, boolean z) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener
    public void onMessageReceived(MessageBase messageBase, ImSession imSession) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener
    public void onMessageSendResponse(MessageBase messageBase) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener
    public void onMessageSendResponseFailed(String str, int i, int i2, String str2) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener
    public void onMessageSendResponseTimeout(MessageBase messageBase) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener, com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onMessageSendingFailed(MessageBase messageBase, IMnoStrategy.StrategyResponse strategyResponse, Result result) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener
    public void onMessageSendingSucceeded(MessageBase messageBase) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onNotifyCloudMsgFtEvent(FtMessage ftMessage) {
    }

    public GeolocSharingServiceImpl(Context context, IGlsModule iGlsModule) {
        this.mGeolocSharingEventBroadcaster = null;
        this.mGlsModule = iGlsModule;
        this.mContext = context;
        this.mGeolocSharingEventBroadcaster = new GeolocSharingEventBroadcaster(context);
        IGlsModule iGlsModule2 = this.mGlsModule;
        ImConstants.Type type = ImConstants.Type.LOCATION;
        iGlsModule2.registerMessageEventListener(type, this);
        this.mGlsModule.registerFtEventListener(type, this);
    }

    private void addGeolocSharingSession(GeolocSharingImpl geolocSharingImpl) {
        try {
            this.mGshSessions.put(geolocSharingImpl.getSharingId(), geolocSharingImpl);
        } catch (ServerApiException e) {
            e.printStackTrace();
        }
    }

    private void removeGeolocSharingSession(String str) {
        this.mGshSessions.remove(str);
    }

    public boolean isServiceRegistered() throws ServerApiException {
        IRegistrationManager registrationManager = ImsRegistry.getRegistrationManager();
        if (registrationManager == null) {
            return false;
        }
        for (ImsRegistration imsRegistration : registrationManager.getRegistrationInfo()) {
            if (imsRegistration.hasService("gls")) {
                return true;
            }
        }
        return false;
    }

    public void addServiceRegistrationListener(IRcsServiceRegistrationListener iRcsServiceRegistrationListener) throws ServerApiException {
        synchronized (this.mLock) {
            this.mServiceListeners.register(iRcsServiceRegistrationListener);
        }
    }

    public void removeServiceRegistrationListener(IRcsServiceRegistrationListener iRcsServiceRegistrationListener) throws ServerApiException {
        synchronized (this.mLock) {
            this.mServiceListeners.unregister(iRcsServiceRegistrationListener);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.tapi.service.broadcaster.IRegistrationStatusBroadcaster
    public void notifyRegistrationEvent(boolean z, RcsServiceRegistration.ReasonCode reasonCode) {
        synchronized (this.mLock) {
            int beginBroadcast = this.mServiceListeners.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                if (z) {
                    try {
                        this.mServiceListeners.getBroadcastItem(i).onServiceRegistered();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                } else {
                    this.mServiceListeners.getBroadcastItem(i).onServiceUnregistered(reasonCode);
                }
            }
            this.mServiceListeners.finishBroadcast();
        }
    }

    public IGeolocSharing shareGeoloc(ContactId contactId, Geoloc geoloc) throws ServerApiException {
        ImsUri parse = ImsUri.parse("tel:" + contactId.toString());
        Location location = new Location("gps");
        if (geoloc != null) {
            location.setLatitude(geoloc.getLatitude());
            location.setLongitude(geoloc.getLongitude());
            location.setAccuracy(geoloc.getAccuracy());
            IGlsModule iGlsModule = this.mGlsModule;
            if (iGlsModule == null) {
                Log.e(LOG_TAG, "GLS module is not created");
                return null;
            }
            Future<FtMessage> createInCallLocationShare = iGlsModule.createInCallLocationShare(null, parse, EnumSet.of(NotificationStatus.DELIVERED), location, geoloc.getLabel(), null, false, false);
            if (createInCallLocationShare == null) {
                Log.e(LOG_TAG, "sharing geolocation  failed, return null!");
                return null;
            }
            try {
                FtMessage ftMessage = createInCallLocationShare.get();
                if (ftMessage == null) {
                    Log.e(LOG_TAG, "sharing geolocation  failed, return null!");
                    return null;
                }
                GeolocSharingImpl geolocSharingImpl = new GeolocSharingImpl(ftMessage, this.mGlsModule);
                addGeolocSharingSession(geolocSharingImpl);
                return geolocSharingImpl;
            } catch (InterruptedException e) {
                e.printStackTrace();
            } catch (ExecutionException e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public List<IBinder> getGeolocSharings() throws ServerApiException {
        Log.d(LOG_TAG, "Get geoloc sharing sessions");
        ArrayList arrayList = new ArrayList(this.mGshSessions.size());
        Enumeration<IGeolocSharing> elements = this.mGshSessions.elements();
        while (elements.hasMoreElements()) {
            arrayList.add(elements.nextElement().asBinder());
        }
        return arrayList;
    }

    public IGeolocSharing getGeolocSharing(String str) throws ServerApiException {
        return this.mGshSessions.get(str);
    }

    public void addEventListener(IGeolocSharingListener iGeolocSharingListener) throws ServerApiException {
        synchronized (this.mLock) {
            this.mGeolocSharingEventBroadcaster.addEventListener(iGeolocSharingListener);
        }
    }

    public void removeEventListener(IGeolocSharingListener iGeolocSharingListener) throws ServerApiException {
        synchronized (this.mLock) {
            this.mGeolocSharingEventBroadcaster.removeEventListener(iGeolocSharingListener);
        }
    }

    public void deleteAllGeolocSharings() throws ServerApiException {
        Map<String, Set<String>> geoMessage = getGeoMessage("content_type ='application/vnd.gsma.rcspushlocation+xml'");
        if (geoMessage == null) {
            Log.e(LOG_TAG, "deleteAllGeolocSharings: Message not found.");
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, Set<String>> entry : geoMessage.entrySet()) {
            arrayList.addAll(entry.getValue());
            ContactId contactId = new ContactId(PhoneUtils.extractNumberFromUri(getImSessionByChatId(entry.getKey())));
            synchronized (this.mLock) {
                this.mGeolocSharingEventBroadcaster.broadcastDeleted(contactId, new ArrayList(entry.getValue()));
            }
        }
        this.mGlsModule.deleteGeolocSharings(arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            removeGeolocSharingSession((String) it.next());
        }
    }

    public void deleteGeolocSharingsByContactId(ContactId contactId) throws ServerApiException {
        if (contactId == null) {
            return;
        }
        String str = "tel:" + PhoneUtils.extractNumberFromUri(contactId.toString());
        HashSet hashSet = new HashSet();
        hashSet.add(ImsUri.parse(str));
        ImSession imSessionByParticipants = ImCache.getInstance().getImSessionByParticipants(hashSet, ChatData.ChatType.ONE_TO_ONE_CHAT, "");
        if (imSessionByParticipants == null) {
            Log.e(LOG_TAG, "deleteGeolocSharingsByContactId: No session for geoloc");
            return;
        }
        Map<String, Set<String>> geoMessage = getGeoMessage("is_filetransfer = 1 and chat_id = '" + imSessionByParticipants.getChatId() + "' and content_type ='" + MIMEContentType.LOCATION_PUSH + "'");
        if (geoMessage == null) {
            Log.e(LOG_TAG, "deleteGeolocSharingsByContactId: Message not found.");
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, Set<String>> entry : geoMessage.entrySet()) {
            arrayList.addAll(entry.getValue());
            synchronized (this.mLock) {
                this.mGeolocSharingEventBroadcaster.broadcastDeleted(contactId, new ArrayList(entry.getValue()));
            }
        }
        this.mGlsModule.deleteGeolocSharings(arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            removeGeolocSharingSession((String) it.next());
        }
    }

    public void deleteGeolocSharingBySharingId(String str) throws ServerApiException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        this.mGlsModule.deleteGeolocSharings(arrayList);
        GeolocSharingImpl geolocSharing = getGeolocSharing(str);
        if (geolocSharing == null) {
            Log.e(LOG_TAG, "deleteGeolocSharingBySharingId, id:" + str + ", GeolocSharingImpl not found.");
            return;
        }
        synchronized (this.mLock) {
            this.mGeolocSharingEventBroadcaster.broadcastDeleted(geolocSharing.getRemoteContact(), arrayList);
        }
        removeGeolocSharingSession(str);
    }

    private String getImSessionByChatId(String str) {
        ImSession imSession = ImCache.getInstance().getImSession(str);
        if (imSession == null) {
            return null;
        }
        return imSession.getParticipantsString().get(0);
    }

    private Map<String, Set<String>> getGeoMessage(String str) {
        ImCache imCache = ImCache.getInstance();
        TreeMap treeMap = new TreeMap();
        Cursor queryMessages = imCache.queryMessages(new String[]{"_id", "chat_id"}, str, null, null);
        if (queryMessages != null) {
            try {
                if (queryMessages.getCount() != 0) {
                    while (queryMessages.moveToNext()) {
                        String string = queryMessages.getString(queryMessages.getColumnIndexOrThrow("chat_id"));
                        if (imCache.getImSession(string) != null) {
                            String valueOf = String.valueOf(queryMessages.getInt(queryMessages.getColumnIndexOrThrow("_id")));
                            Set set = (Set) treeMap.get(string);
                            if (set == null) {
                                HashSet hashSet = new HashSet();
                                hashSet.add(valueOf);
                                treeMap.put(string, hashSet);
                            } else {
                                set.add(valueOf);
                            }
                        }
                    }
                    queryMessages.close();
                    return treeMap;
                }
            } catch (Throwable th) {
                try {
                    queryMessages.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryMessages != null) {
            queryMessages.close();
        }
        return null;
    }

    private ContactId getContactId(FtMessage ftMessage) {
        return new ContactId(ftMessage.getRemoteUri().getMsisdn());
    }

    private String getSharingId(FtMessage ftMessage) {
        return String.valueOf(ftMessage.getId());
    }

    public static GeolocSharing.ReasonCode translateToReasonCode(CancelReason cancelReason) {
        Log.d(LOG_TAG, "translateToReasonCode(), CancelReason: " + cancelReason);
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[cancelReason.ordinal()]) {
            case 1:
            case 2:
                return GeolocSharing.ReasonCode.ABORTED_BY_SYSTEM;
            case 3:
                return GeolocSharing.ReasonCode.ABORTED_BY_USER;
            case 4:
                return GeolocSharing.ReasonCode.ABORTED_BY_REMOTE;
            case 5:
                return GeolocSharing.ReasonCode.REJECTED_BY_REMOTE;
            case 6:
                return GeolocSharing.ReasonCode.FAILED_SHARING;
            default:
                return GeolocSharing.ReasonCode.UNSPECIFIED;
        }
    }

    /* renamed from: com.sec.internal.ims.servicemodules.tapi.service.api.GeolocSharingServiceImpl$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason;

        static {
            int[] iArr = new int[CancelReason.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason = iArr;
            try {
                iArr[CancelReason.TIME_OUT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.CANCELED_BY_SYSTEM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.CANCELED_BY_USER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.CANCELED_BY_REMOTE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.REJECTED_BY_REMOTE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.DEVICE_UNREGISTERED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.NOT_AUTHORIZED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.REMOTE_BLOCKED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.ERROR.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.REMOTE_TEMPORARILY_UNAVAILABLE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.VALIDITY_EXPIRED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.INVALID_REQUEST.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.REMOTE_USER_INVALID.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.NO_RESPONSE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.FORBIDDEN_NO_RETRY_FALLBACK.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.CONTENT_REACHED_DOWNSIZE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.LOCALLY_ABORTED.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.CONNECTION_RELEASED.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason[CancelReason.UNKNOWN.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
        }
    }

    private void notifyStateChanged(FtMessage ftMessage, GeolocSharing.State state, GeolocSharing.ReasonCode reasonCode) {
        Log.d(LOG_TAG, "notifyStateChanged state=" + state + ", reason=" + reasonCode);
        if (ftMessage.getRemoteUri() != null) {
            synchronized (this.mLock) {
                this.mGeolocSharingEventBroadcaster.broadcastGeolocSharingStateChanged(getContactId(ftMessage), getSharingId(ftMessage), state, reasonCode);
            }
        }
    }

    public void handleGeolocSharingProgress(FtMessage ftMessage) {
        Log.d(LOG_TAG, "handleSharingProgress id:" + ftMessage.getId() + "  progress:" + ((ftMessage.getTransferredBytes() * 100) / ftMessage.getFileSize()) + "%.");
        if (ftMessage.getRemoteUri() != null) {
            synchronized (this.mLock) {
                this.mGeolocSharingEventBroadcaster.broadcastGeolocSharingprogress(getContactId(ftMessage), getSharingId(ftMessage), ftMessage.getTransferredBytes(), ftMessage.getFileSize());
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onFileTransferCreated(FtMessage ftMessage) {
        if (this.mGshSessions.containsKey(String.valueOf(ftMessage.getId()))) {
            this.mGlsModule.startLocationShareInCall(ftMessage.getImdnId());
            notifyStateChanged(ftMessage, GeolocSharing.State.INITIATING, GeolocSharing.ReasonCode.UNSPECIFIED);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onFileTransferReceived(FtMessage ftMessage) {
        addGeolocSharingSession(new GeolocSharingImpl(ftMessage, this.mGlsModule));
        notifyStateChanged(ftMessage, GeolocSharing.State.INVITED, GeolocSharing.ReasonCode.UNSPECIFIED);
        UserHandle subscriptionUserHandle = TelephonyUtilsWrapper.getSubscriptionUserHandle(this.mContext, SimUtil.getSubId(this.mGlsModule.getPhoneIdByMessageId(ftMessage.getId())));
        if (subscriptionUserHandle == null) {
            subscriptionUserHandle = ContextExt.CURRENT_OR_SELF;
        }
        this.mGeolocSharingEventBroadcaster.broadcastGeolocSharingInvitation(getSharingId(ftMessage), subscriptionUserHandle);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onTransferProgressReceived(FtMessage ftMessage) {
        handleGeolocSharingProgress(ftMessage);
        if (ftMessage.getRemoteUri() != null) {
            synchronized (this.mLock) {
                this.mGeolocSharingEventBroadcaster.broadcastGeolocSharingprogress(getContactId(ftMessage), getSharingId(ftMessage), ftMessage.getTransferredBytes(), ftMessage.getFileSize());
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onTransferStarted(FtMessage ftMessage) {
        notifyStateChanged(ftMessage, GeolocSharing.State.STARTED, GeolocSharing.ReasonCode.UNSPECIFIED);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onTransferCompleted(FtMessage ftMessage) {
        notifyStateChanged(ftMessage, GeolocSharing.State.TRANSFERRED, GeolocSharing.ReasonCode.UNSPECIFIED);
    }

    @Override // com.sec.internal.ims.servicemodules.im.listener.IFtEventListener
    public void onTransferCanceled(FtMessage ftMessage) {
        CancelReason cancelReason = ftMessage.getCancelReason();
        GeolocSharing.ReasonCode reasonCode = GeolocSharing.ReasonCode.UNSPECIFIED;
        if (cancelReason != null) {
            reasonCode = translateToReasonCode(cancelReason);
        }
        notifyStateChanged(ftMessage, GeolocSharing.State.ABORTED, reasonCode);
    }
}
