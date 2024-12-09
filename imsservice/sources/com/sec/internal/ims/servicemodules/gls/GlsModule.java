package com.sec.internal.ims.servicemodules.gls;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.net.Uri;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.options.Capabilities;
import com.sec.ims.options.CapabilityRefreshType;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.servicemodules.gls.LocationType;
import com.sec.internal.constants.ims.servicemodules.im.FileDisposition;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.PhoneIdKeyMap;
import com.sec.internal.helper.RcsConfigurationHelper;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.base.ServiceModuleBase;
import com.sec.internal.ims.servicemodules.im.FtMessage;
import com.sec.internal.ims.servicemodules.im.ImConfig;
import com.sec.internal.ims.servicemodules.im.ImMessage;
import com.sec.internal.ims.servicemodules.im.listener.IFtEventListener;
import com.sec.internal.ims.servicemodules.im.listener.IMessageEventListener;
import com.sec.internal.ims.servicemodules.im.strategy.ChnStrategy;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.servicemodules.gls.IGlsModule;
import com.sec.internal.interfaces.ims.servicemodules.im.IImModule;
import com.sec.internal.omanetapi.nms.data.GeoLocation;
import com.sec.sve.generalevent.VcidEvent;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class GlsModule extends ServiceModuleBase implements IGlsModule {
    private static final int AUTO_ACCEPT_FT_GLS = 0;
    private static final int AUTO_SEND_FT_GLS = 1;
    private static final String LOG_TAG = GlsModule.class.getSimpleName();
    private final PhoneIdKeyMap<ImConfig> mConfigs;
    private final Context mContext;
    private final IImModule mImModule;
    private boolean[] mPushEnabled;
    private final PhoneIdKeyMap<Integer> mRegistrationIds;
    private final GlsTranslation mTranslation;
    private int phoneCount;

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            FtMessage ftMessage = (FtMessage) message.obj;
            acceptLocationShare(ftMessage.getImdnId(), ftMessage.getChatId(), null);
        } else if (i == 1) {
            startLocationShareInCall((String) message.obj);
        } else {
            super.handleMessage(message);
        }
    }

    public GlsModule(Looper looper, Context context) {
        super(looper);
        this.phoneCount = 0;
        this.mPushEnabled = new boolean[]{false, false};
        this.mContext = context;
        int size = SimManagerFactory.getAllSimManagers().size();
        this.phoneCount = size;
        this.mConfigs = new PhoneIdKeyMap<>(size, null);
        this.mRegistrationIds = new PhoneIdKeyMap<>(this.phoneCount, null);
        this.mImModule = getServiceModuleManager().getImModule();
        this.mTranslation = new GlsTranslation(context, this);
        for (int i = 0; i < this.phoneCount; i++) {
            this.mConfigs.put(i, this.mImModule.getImConfig(i));
        }
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onServiceSwitched(int i, ContentValues contentValues) {
        Log.i(LOG_TAG, "onServiceSwitched: " + i);
        updateFeatures(i);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void start() {
        super.start();
        Log.i(LOG_TAG, "start");
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void stop() {
        super.stop();
        Log.i(LOG_TAG, VcidEvent.BUNDLE_VALUE_ACTION_STOP);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public String[] getServicesRequiring() {
        return new String[]{"im", "gls"};
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void onRegistered(ImsRegistration imsRegistration) {
        super.onRegistered(imsRegistration);
        if (imsRegistration == null || !imsRegistration.hasRcsService()) {
            return;
        }
        Log.i(LOG_TAG, "onRegistered() phoneId = " + imsRegistration.getPhoneId() + ", services : " + imsRegistration.getServices());
        this.mRegistrationIds.put(imsRegistration.getPhoneId(), Integer.valueOf(getRegistrationInfoId(imsRegistration)));
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase, com.sec.internal.interfaces.ims.servicemodules.base.IServiceModule
    public void onDeregistered(ImsRegistration imsRegistration, int i) {
        Log.i(LOG_TAG, "onDeregistered");
        super.onDeregistered(imsRegistration, i);
        if (imsRegistration == null || !imsRegistration.hasRcsService()) {
            return;
        }
        this.mRegistrationIds.remove(imsRegistration.getPhoneId());
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void onConfigured(int i) {
        Log.i(LOG_TAG, "onConfigured : phoneId = " + i);
        updateFeatures(i);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public void handleIntent(Intent intent) {
        this.mTranslation.handleIntent(intent);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.gls.IGlsModule
    public void registerMessageEventListener(ImConstants.Type type, IMessageEventListener iMessageEventListener) {
        this.mImModule.registerMessageEventListener(type, iMessageEventListener);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.gls.IGlsModule
    public void registerFtEventListener(ImConstants.Type type, IFtEventListener iFtEventListener) {
        this.mImModule.registerFtEventListener(type, iFtEventListener);
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public ImsRegistration getImsRegistration() {
        return getImsRegistration(SimUtil.getActiveDataPhoneId());
    }

    @Override // com.sec.internal.ims.servicemodules.base.ServiceModuleBase
    public ImsRegistration getImsRegistration(int i) {
        if (this.mRegistrationIds.get(i) != null) {
            return ImsRegistry.getRegistrationManager().getRegistrationInfo(this.mRegistrationIds.get(i).intValue());
        }
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.gls.IGlsModule
    public Future<ImMessage> shareLocationInChat(String str, Set<NotificationStatus> set, Location location, String str2, String str3, String str4, ImsUri imsUri, boolean z, String str5) {
        return shareLocationInChat(SimUtil.getActiveDataPhoneId(), str, set, location, str2, str3, str4, imsUri, z, str5);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.gls.IGlsModule
    public Future<ImMessage> shareLocationInChat(int i, String str, Set<NotificationStatus> set, Location location, String str2, String str3, String str4, ImsUri imsUri, boolean z, String str5) {
        Log.i(LOG_TAG, "shareLocationInChat()");
        int activeDataPhoneId = i == -1 ? SimUtil.getActiveDataPhoneId() : i;
        if (!isPushServiceAvailable(activeDataPhoneId)) {
            this.mTranslation.onShareLocationInChatResponse(str, str3, null, false);
            return null;
        }
        boolean isImCapAlwaysOn = this.mConfigs.get(activeDataPhoneId).isImCapAlwaysOn();
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(activeDataPhoneId);
        if (!z) {
            Capabilities capabilities = getServiceModuleManager().getCapabilityDiscoveryModule().getCapabilities(imsUri, CapabilityRefreshType.DISABLED, activeDataPhoneId);
            String acsServerType = ConfigUtil.getAcsServerType(activeDataPhoneId);
            if (simManagerFromSimSlot != null && ConfigUtil.isRcsChn(simManagerFromSimSlot.getSimMno())) {
                return this.mImModule.sendMessage(str, generateGeoSms(str, ImsUri.parse("sip:anonymous@anonymous.invalid"), location, str2, activeDataPhoneId), set, MIMEContentType.PLAIN_TEXT, str3, -1, false, false, true, null, false, str5, null, null, null);
            }
            if ((capabilities != null && capabilities.hasFeature(Capabilities.FEATURE_GEOLOCATION_PUSH)) || isImCapAlwaysOn) {
                return this.mImModule.sendMessage(str, generateXML(str, ImsUri.parse("sip:anonymous@anonymous.invalid"), location, str2), set, MIMEContentType.LOCATION_PUSH, str3, -1, false, false, true, null, false, str5, null, null, null);
            }
            if ((simManagerFromSimSlot != null && simManagerFromSimSlot.getSimMno().isOneOf(Mno.TMOUS) && !ImsConstants.RCS_AS.JIBE.equalsIgnoreCase(acsServerType)) || (capabilities != null && (capabilities.hasFeature(Capabilities.FEATURE_CHAT_CPM) || capabilities.hasFeature(Capabilities.FEATURE_CHAT_SIMPLE_IM)))) {
                return this.mImModule.sendMessage(str, str2 + " " + str4, set, MIMEContentType.PLAIN_TEXT, str3, -1, false, false, true, null, false, str5, null, null, null);
            }
            this.mTranslation.onReceiveShareLocationInChatResponse(str, str3, null, false, null, RcsPolicyManager.getRcsStrategy(SimUtil.getSimSlotPriority()), null);
            return null;
        }
        if (simManagerFromSimSlot != null && ConfigUtil.isRcsChn(simManagerFromSimSlot.getSimMno())) {
            return this.mImModule.sendMessage(str, generateGeoSms(str, ImsUri.parse("sip:anonymous@anonymous.invalid"), location, str2, activeDataPhoneId), set, MIMEContentType.PLAIN_TEXT, str3, -1, false, false, true, null, false, null, null, null, null);
        }
        return this.mImModule.sendMessage(str, generateXML(str, ImsUri.parse("sip:anonymous@anonymous.invalid"), location, str2), set, MIMEContentType.LOCATION_PUSH, str3, -1, false, false, true, null, false, null, null, null, null);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.gls.IGlsModule
    public Future<FtMessage> createInCallLocationShare(String str, ImsUri imsUri, Set<NotificationStatus> set, Location location, String str2, String str3, boolean z, boolean z2) {
        Log.i(LOG_TAG, "createInCallLocationShare()");
        if (!isPushServiceAvailable()) {
            this.mTranslation.onCreateInCallLocationShareResponse(null, null, str3, false);
            return null;
        }
        String generateXML = generateXML("0", imsUri, location, str2);
        String str4 = "gls" + System.currentTimeMillis() + ".xml";
        Uri save2FileSystem = save2FileSystem(str4, generateXML);
        String glsExtInfo = new GlsXmlParser().getGlsExtInfo(generateXML);
        if (save2FileSystem == null) {
            return null;
        }
        if (!z2) {
            return this.mImModule.attachFileToSingleChat(SimUtil.getActiveDataPhoneId(), str4, save2FileSystem, imsUri, set, str3, MIMEContentType.LOCATION_PUSH, z, false, false, false, glsExtInfo, FileDisposition.ATTACH);
        }
        return this.mImModule.attachFileToGroupChat(str, str4, save2FileSystem, set, str3, MIMEContentType.LOCATION_PUSH, false, false, false, false, glsExtInfo, FileDisposition.ATTACH);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.gls.IGlsModule
    public void startLocationShareInCall(String str) {
        if (!isPushServiceAvailable()) {
            this.mTranslation.onStartLocationShareInCallResponse(str, false);
        } else {
            this.mImModule.sendFile(str);
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.gls.IGlsModule
    public void acceptLocationShare(String str, String str2, Uri uri) {
        if (!isPushServiceAvailable()) {
            this.mTranslation.onAcceptLocationShareInCallResponse(str, str2, false);
        } else {
            this.mImModule.acceptFileTransfer(str, ImDirection.INCOMING, str2, uri);
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.gls.IGlsModule
    public void cancelLocationShare(String str, ImDirection imDirection, String str2) {
        if (!isPushServiceAvailable()) {
            this.mTranslation.onCancelLocationShareInCallResponse(str, imDirection, str2, false);
        } else {
            this.mImModule.cancelFileTransfer(str, imDirection, str2);
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.gls.IGlsModule
    public void deleteGeolocSharings(List<String> list) {
        if (!isPushServiceAvailable()) {
            this.mTranslation.onDeleteAllLocationShareResponse(false, list);
        } else {
            this.mImModule.deleteMessages(list, false);
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.gls.IGlsModule
    public void rejectLocationShare(String str, String str2) {
        if (!isPushServiceAvailable()) {
            this.mTranslation.onRejectLocationShareInCallResponse(str, str2, false);
        } else {
            this.mImModule.rejectFileTransfer(str, ImDirection.INCOMING, str2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0071 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private android.net.Uri save2FileSystem(java.lang.String r4, java.lang.String r5) {
        /*
            r3 = this;
            android.content.Context r0 = r3.mContext
            java.io.File r0 = r0.getExternalCacheDir()
            r1 = 0
            if (r0 == 0) goto L7a
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            android.content.Context r2 = r3.mContext
            java.io.File r2 = r2.getExternalCacheDir()
            java.lang.String r2 = r2.getAbsolutePath()
            r0.append(r2)
            java.lang.String r2 = "/"
            r0.append(r2)
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            java.io.File r0 = new java.io.File
            r0.<init>(r4)
            java.io.FileOutputStream r4 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L4d java.io.FileNotFoundException -> L5d
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L4d java.io.FileNotFoundException -> L5d
            byte[] r5 = r5.getBytes()     // Catch: java.io.IOException -> L47 java.io.FileNotFoundException -> L49 java.lang.Throwable -> L6d
            r4.write(r5)     // Catch: java.io.IOException -> L47 java.io.FileNotFoundException -> L49 java.lang.Throwable -> L6d
            r4.close()     // Catch: java.io.IOException -> L3c
            goto L40
        L3c:
            r4 = move-exception
            r4.printStackTrace()
        L40:
            android.content.Context r3 = r3.mContext
            android.net.Uri r3 = com.sec.internal.helper.FileUtils.getUriForFile(r3, r0)
            return r3
        L47:
            r3 = move-exception
            goto L4f
        L49:
            r3 = move-exception
            goto L5f
        L4b:
            r3 = move-exception
            goto L6f
        L4d:
            r3 = move-exception
            r4 = r1
        L4f:
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L6d
            if (r4 == 0) goto L5c
            r4.close()     // Catch: java.io.IOException -> L58
            goto L5c
        L58:
            r3 = move-exception
            r3.printStackTrace()
        L5c:
            return r1
        L5d:
            r3 = move-exception
            r4 = r1
        L5f:
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L6d
            if (r4 == 0) goto L6c
            r4.close()     // Catch: java.io.IOException -> L68
            goto L6c
        L68:
            r3 = move-exception
            r3.printStackTrace()
        L6c:
            return r1
        L6d:
            r3 = move-exception
            r1 = r4
        L6f:
            if (r1 == 0) goto L79
            r1.close()     // Catch: java.io.IOException -> L75
            goto L79
        L75:
            r4 = move-exception
            r4.printStackTrace()
        L79:
            throw r3
        L7a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.gls.GlsModule.save2FileSystem(java.lang.String, java.lang.String):android.net.Uri");
    }

    private static GlsData makeGlsData(String str, ImsUri imsUri, Location location, String str2, LocationType locationType) {
        Date date = new Date();
        return new GlsData(str, imsUri, location, locationType, date, str2, new GlsValidityTime(date));
    }

    public static String generateXML(String str, GeoLocation geoLocation) {
        Location location = new Location("gps");
        location.setLatitude(geoLocation.mCircle.mLatitude.doubleValue());
        location.setLongitude(geoLocation.mCircle.mLongitude.doubleValue());
        location.setAccuracy(geoLocation.mCircle.mRadius);
        return generateXML(str, ImsUri.parse("sip:anonymous@anonymous.invalid"), location, geoLocation.mLabel);
    }

    private static String generateXML(String str, ImsUri imsUri, Location location, String str2) {
        LocationType locationType;
        String replaceAll = str2.replaceAll("&", "&amp;").replaceAll(">", "&gt;").replaceAll("<", "&lt;").replaceAll(CmcConstants.E_NUM_STR_QUOTE, "&quot;").replaceAll("'", "&apos;");
        if (replaceAll == null) {
            locationType = LocationType.OWN_LOCATION;
        } else {
            locationType = LocationType.OTHER_LOCATION;
        }
        return new GlsXmlComposer().compose(makeGlsData(str, imsUri, location, replaceAll, locationType));
    }

    private String generateGeoSms(String str, ImsUri imsUri, Location location, String str2, int i) {
        LocationType locationType;
        String replaceAll = str2.replaceAll("&", "&amp;").replaceAll(">", "&gt;").replaceAll("<", "&lt;").replaceAll(CmcConstants.E_NUM_STR_QUOTE, "&quot;").replaceAll("'", "&apos;");
        if (replaceAll == null) {
            locationType = LocationType.OWN_LOCATION;
        } else {
            locationType = LocationType.OTHER_LOCATION;
        }
        String compose = new GlsGeoSmsComposer().compose(makeGlsData(str, imsUri, location, replaceAll, locationType), this.mConfigs.get(i).getPagerModeLimit());
        Log.d(LOG_TAG, "generateGeoSms: " + compose + " by limit: " + this.mConfigs.get(i).getPagerModeLimit());
        return compose;
    }

    private boolean isPushServiceAvailable() {
        return isPushServiceAvailable(SimUtil.getActiveDataPhoneId());
    }

    private boolean isPushServiceAvailable(int i) {
        ImsRegistration imsRegistration = getImsRegistration(i);
        if (imsRegistration != null && imsRegistration.hasRcsService() && imsRegistration.getPhoneId() == i && this.mPushEnabled[imsRegistration.getPhoneId()]) {
            Log.i(LOG_TAG, "imsRegistration:" + imsRegistration + ", mPushEnabled: true");
            return true;
        }
        Log.i(LOG_TAG, "geolocation push is disabled.");
        return false;
    }

    public void onTransferCompleted(FtMessage ftMessage) {
        Log.i(LOG_TAG, "onTransferCompleted: " + ftMessage.getStateId());
        updateExtInfo(ftMessage);
        if (RcsPolicyManager.getRcsStrategy(SimUtil.getSimSlotPriority()) instanceof ChnStrategy) {
            this.mTranslation.onLocationShareInCallCompleted(ftMessage, true);
        } else {
            this.mTranslation.onLocationShareInCallCompleted(ftMessage.getImdnId(), ftMessage.getDirection(), ftMessage.getChatId(), true);
        }
    }

    public void onTransferCanceled(FtMessage ftMessage) {
        Log.i(LOG_TAG, "onTransferCanceled: " + ftMessage.getStateId());
        updateExtInfo(ftMessage);
        if (RcsPolicyManager.getRcsStrategy(SimUtil.getSimSlotPriority()) instanceof ChnStrategy) {
            this.mTranslation.onLocationShareInCallCompleted(ftMessage, false);
        } else {
            this.mTranslation.onLocationShareInCallCompleted(ftMessage.getImdnId(), ftMessage.getDirection(), ftMessage.getChatId(), false);
        }
    }

    public void onOutgoingTransferAttached(FtMessage ftMessage) {
        this.mTranslation.onCreateInCallLocationShareResponse(ftMessage.getChatId(), ftMessage.getImdnId(), ftMessage.getRequestMessageId(), true);
        obtainMessage(1, ftMessage.getImdnId()).sendToTarget();
    }

    public void onIncomingTransferUndecided(FtMessage ftMessage) {
        this.mTranslation.onIncomingLoactionShareInCall(ftMessage);
        IMnoStrategy rcsStrategy = RcsPolicyManager.getRcsStrategy(SimUtil.getSimSlotPriority());
        if (rcsStrategy == null || !rcsStrategy.boolSetting(RcsPolicySettings.RcsPolicy.AUTO_ACCEPT_GLS)) {
            return;
        }
        obtainMessage(0, ftMessage).sendToTarget();
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0063, code lost:
    
        if (r0 == null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x005b, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0059, code lost:
    
        if (r0 == null) goto L53;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void updateExtInfo(com.sec.internal.ims.servicemodules.im.MessageBase r6) {
        /*
            r5 = this;
            java.lang.String r5 = r6.getExtInfo()
            if (r5 == 0) goto Le
            java.lang.String r5 = com.sec.internal.ims.servicemodules.gls.GlsModule.LOG_TAG
            java.lang.String r6 = "Already has ext info, no need update!!!"
            android.util.Log.v(r5, r6)
            return
        Le:
            boolean r5 = r6 instanceof com.sec.internal.ims.servicemodules.im.ImMessage
            if (r5 == 0) goto L1a
            r5 = r6
            com.sec.internal.ims.servicemodules.im.ImMessage r5 = (com.sec.internal.ims.servicemodules.im.ImMessage) r5
            java.lang.String r5 = r5.getBody()
            goto L72
        L1a:
            boolean r5 = r6 instanceof com.sec.internal.ims.servicemodules.im.FtMessage
            r0 = 0
            if (r5 == 0) goto L71
            r5 = r6
            com.sec.internal.ims.servicemodules.im.FtMessage r5 = (com.sec.internal.ims.servicemodules.im.FtMessage) r5
            java.lang.String r5 = r5.getFilePath()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55 java.io.FileNotFoundException -> L5f
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55 java.io.FileNotFoundException -> L5f
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55 java.io.FileNotFoundException -> L5f
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55 java.io.FileNotFoundException -> L5f
            java.lang.String r5 = "UTF-8"
            r3.<init>(r4, r5)     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55 java.io.FileNotFoundException -> L5f
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55 java.io.FileNotFoundException -> L5f
        L3c:
            java.lang.String r5 = r2.readLine()     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L4d java.io.FileNotFoundException -> L50
            if (r5 == 0) goto L46
            r1.append(r5)     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L4d java.io.FileNotFoundException -> L50
            goto L3c
        L46:
            r2.close()     // Catch: java.io.IOException -> L66
            goto L66
        L4a:
            r5 = move-exception
            r0 = r2
            goto L6b
        L4d:
            r5 = move-exception
            r0 = r2
            goto L56
        L50:
            r5 = move-exception
            r0 = r2
            goto L60
        L53:
            r5 = move-exception
            goto L6b
        L55:
            r5 = move-exception
        L56:
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L53
            if (r0 == 0) goto L66
        L5b:
            r0.close()     // Catch: java.io.IOException -> L66
            goto L66
        L5f:
            r5 = move-exception
        L60:
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L53
            if (r0 == 0) goto L66
            goto L5b
        L66:
            java.lang.String r5 = r1.toString()
            goto L72
        L6b:
            if (r0 == 0) goto L70
            r0.close()     // Catch: java.io.IOException -> L70
        L70:
            throw r5
        L71:
            r5 = r0
        L72:
            boolean r0 = android.text.TextUtils.isEmpty(r5)
            if (r0 == 0) goto L80
            java.lang.String r5 = com.sec.internal.ims.servicemodules.gls.GlsModule.LOG_TAG
            java.lang.String r6 = "Error!!! no gls data in message"
            android.util.Log.e(r5, r6)
            return
        L80:
            java.lang.String r0 = com.sec.internal.ims.servicemodules.gls.GlsModule.LOG_TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "XML BODY IS "
            r1.append(r2)
            java.lang.String r2 = com.sec.internal.log.IMSLog.checker(r5)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            android.util.Log.v(r0, r1)
            java.lang.String r1 = r5.toLowerCase()
            java.lang.String r2 = "geo"
            boolean r1 = r1.startsWith(r2)
            if (r1 == 0) goto Lb0
            com.sec.internal.ims.servicemodules.gls.GlsGeoSmsParser r1 = new com.sec.internal.ims.servicemodules.gls.GlsGeoSmsParser
            r1.<init>()
            java.lang.String r5 = r1.getGlsExtInfo(r5)
            goto Lb9
        Lb0:
            com.sec.internal.ims.servicemodules.gls.GlsXmlParser r1 = new com.sec.internal.ims.servicemodules.gls.GlsXmlParser
            r1.<init>()
            java.lang.String r5 = r1.getGlsExtInfo(r5)
        Lb9:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "THE EXTINFO IS "
            r1.append(r2)
            java.lang.String r2 = com.sec.internal.log.IMSLog.checker(r5)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            android.util.Log.i(r0, r1)
            r6.updateExtInfo(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.gls.GlsModule.updateExtInfo(com.sec.internal.ims.servicemodules.im.MessageBase):void");
    }

    private void updateFeatures(int i) {
        if (!(DmConfigHelper.getImsSwitchValue(this.mContext, DeviceConfigManager.RCS, i) == 1)) {
            Log.i(LOG_TAG, "updateFeatures: RCS is disabled");
            this.mPushEnabled[i] = false;
            return;
        }
        this.mPushEnabled[i] = RcsConfigurationHelper.readBoolParam(this.mContext, ImsUtil.getPathWithPhoneId(ConfigConstants.ConfigTable.SERVICES_GEOPUSH_AUTH, i), Boolean.FALSE).booleanValue();
        Log.i(LOG_TAG, "updateFeatures mPushEnabled: " + this.mPushEnabled[i]);
        for (int i2 = 0; i2 < this.phoneCount; i2++) {
            this.mConfigs.put(i2, this.mImModule.getImConfig(i2));
        }
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.gls.IGlsModule
    public int getPhoneIdByChatId(String str) {
        return this.mImModule.getPhoneIdByChatId(str);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.gls.IGlsModule
    public int getPhoneIdByImdnId(String str, ImDirection imDirection) {
        return this.mImModule.getPhoneIdByImdnId(str, imDirection);
    }

    @Override // com.sec.internal.interfaces.ims.servicemodules.gls.IGlsModule
    public int getPhoneIdByMessageId(int i) {
        return this.mImModule.getPhoneIdByMessageId(i);
    }
}
