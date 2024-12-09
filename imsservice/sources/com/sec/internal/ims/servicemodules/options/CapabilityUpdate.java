package com.sec.internal.ims.servicemodules.options;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.options.Capabilities;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.entitilement.SoftphoneNamespaces;
import com.sec.internal.constants.ims.servicemodules.options.BotServiceIdTranslator;
import com.sec.internal.constants.ims.servicemodules.options.CapabilityConstants;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.base.ServiceModuleBase;
import com.sec.internal.ims.servicemodules.options.Contact;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.ims.util.UriGeneratorFactory;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class CapabilityUpdate {
    private static final long LAST_SEEN_UNKNOWN = -1;
    private static final String LOG_TAG = "CapabilityUpdate";
    private static final long MAX_LAST_SEEN = 43200;
    private static final int MAX_RETRY_SYNC_CONTACT_COUNT = 10;
    private static final int MINUTE_DENOMINATION = 60000;
    private static final int RETRY_SYNC_CONTACT_DELAY = 30000;
    protected Handler mBackgroundHandler;
    private CapabilityDiscoveryModule mCapabilityDiscovery;
    private CapabilityUtil mCapabilityUtil;
    private SimpleEventLog mEventLog;
    IRegistrationManager mRegMan;

    CapabilityUpdate(CapabilityDiscoveryModule capabilityDiscoveryModule, CapabilityUtil capabilityUtil, IRegistrationManager iRegistrationManager, SimpleEventLog simpleEventLog) {
        this.mCapabilityDiscovery = capabilityDiscoveryModule;
        this.mCapabilityUtil = capabilityUtil;
        this.mRegMan = iRegistrationManager;
        this.mEventLog = simpleEventLog;
        HandlerThread handlerThread = new HandlerThread(LOG_TAG, 10);
        handlerThread.start();
        this.mBackgroundHandler = new Handler(handlerThread.getLooper());
    }

    void updateOwnCapabilities(Context context, Map<Integer, ImsRegistration> map, int i, boolean z, int i2) {
        long j = 0;
        for (ServiceModuleBase serviceModuleBase : ImsRegistry.getAllServiceModules()) {
            if (!(serviceModuleBase instanceof CapabilityDiscoveryModule)) {
                j |= serviceModuleBase.getSupportFeature(i);
            }
        }
        if (this.mCapabilityDiscovery.getCapabilityConfig(i) != null && this.mCapabilityDiscovery.getCapabilityConfig(i).isLastSeenActive() && DmConfigHelper.getImsSwitchValue(context, "lastseen", i) == 1) {
            j |= Capabilities.FEATURE_LAST_SEEN_ACTIVE;
        }
        long j2 = j;
        Mno simMno = SimUtil.getSimMno(i);
        IMSLog.i(LOG_TAG, i, "updateOwnCapabilities: isConfiguredOnCapability is " + z + ", features from all module is " + Long.toHexString(j2));
        if (this.mRegMan != null && map.containsKey(Integer.valueOf(i)) && z && ConfigUtil.isRcsEur(simMno)) {
            if (simMno.isRjil()) {
                i2 = this.mRegMan.getCurrentNetworkByPhoneId(i);
                this.mCapabilityDiscovery.setNetworkType(i2, i);
            }
            int i3 = i2;
            j2 = this.mCapabilityUtil.filterFeaturesWithService(j2, this.mRegMan.getServiceForNetwork(map.get(Integer.valueOf(i)).getImsProfile(), i3, false, i), i3, i);
            if (RcsUtils.DualRcs.isDualRcsReg() && i != SimUtil.getActiveDataPhoneId()) {
                j2 = this.mCapabilityUtil.filterEnrichedCallFeatures(j2);
            }
        }
        IMSLog.s(LOG_TAG, i, "updateOwnCapabilities: filtered features is " + Long.toHexString(j2));
        Capabilities capabilities = this.mCapabilityDiscovery.getOwnList().get(Integer.valueOf(i));
        capabilities.setFeatures(j2);
        capabilities.setAvailableFeatures(j2);
        this.mCapabilityDiscovery.putOwnList(i, capabilities);
        this.mCapabilityDiscovery.setIsConfigured(true, i);
        this.mCapabilityDiscovery.setIsConfiguredOnCapability(true, i);
    }

    void processContactChanged(final boolean z, final int i, final boolean z2, final long j) {
        this.mBackgroundHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.options.CapabilityUpdate$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CapabilityUpdate.this.lambda$processContactChanged$0(z, i, z2, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processContactChanged$0(boolean z, int i, boolean z2, long j) {
        long j2;
        ImsUri normalizedUri;
        Map<String, Contact> contacts = this.mCapabilityDiscovery.getPhonebook().getContacts();
        this.mEventLog.logAndAdd(i, "processContactChanged: " + contacts.size() + " contacts.");
        IMSLog.c(LogClass.CDM_CON_CHANGE, i + "," + contacts.size());
        boolean z3 = z;
        for (Contact contact : contacts.values()) {
            boolean z4 = z3;
            for (Contact.ContactNumber contactNumber : contact.getContactNumberList()) {
                if (contactNumber.getNumber() != null && contactNumber.getNumber().startsWith("*")) {
                    normalizedUri = null;
                } else if (contactNumber.getNormalizedNumber() != null) {
                    normalizedUri = ImsUri.parse("tel:" + contactNumber.getNormalizedNumber());
                } else {
                    normalizedUri = this.mCapabilityDiscovery.getUriGenerator().getNormalizedUri(contactNumber.getNumber(), true);
                }
                ImsUri imsUri = normalizedUri;
                if (!this.mCapabilityUtil.blockOptionsToOwnUri(imsUri, i) && imsUri != null && !this.mCapabilityDiscovery.getUrisToRequest().get(Integer.valueOf(i)).contains(imsUri)) {
                    Capabilities capabilities = this.mCapabilityDiscovery.getCapabilitiesCache(i).get(imsUri);
                    if (capabilities == null) {
                        this.mCapabilityDiscovery.getCapabilitiesCache(i).persistCachedUri(imsUri, RcsPolicyManager.getRcsStrategy(i).getCapabilitiesInitialInfo(i, imsUri, UriUtil.getMsisdnNumber(imsUri), contact.getId(), -1L, contact.getName()));
                    } else if (capabilities.getContactId() == null) {
                        this.mCapabilityDiscovery.getCapabilitiesCache(i).updateContactInfo(imsUri, UriUtil.getMsisdnNumber(imsUri), contact.getId(), contact.getName(), true, capabilities);
                    } else if (!capabilities.getContactId().equals(contact.getId())) {
                        this.mCapabilityDiscovery.getCapabilitiesCache(i).updateContactInfo(imsUri, UriUtil.getMsisdnNumber(imsUri), contact.getId(), contact.getName(), false, capabilities);
                    }
                    if (this.mCapabilityDiscovery.updatePollList(imsUri, true, i)) {
                        z4 = true;
                    }
                }
            }
            z3 = z4;
        }
        this.mEventLog.logAndAdd(i, "processContactChanged: updatePollList done, " + this.mCapabilityDiscovery.getUrisToRequest().get(Integer.valueOf(i)).size() + " contacts added");
        this.mCapabilityUtil.handleRemovedNumbers(i);
        if (this.mCapabilityDiscovery.getUrisToRequest().values().isEmpty() || z3 || !z2) {
            j2 = j;
        } else {
            IMSLog.i(LOG_TAG, i, "processContactChanged: added an contact when RCS offline. need to poll");
            this.mCapabilityDiscovery.setIsOfflineAddedContact(false, i);
            j2 = j;
            z3 = true;
        }
        if (needPollOnContactChanged(z3, i, j2)) {
            return;
        }
        IMSLog.i(LOG_TAG, i, "processContactChanged: no need to poll now");
    }

    void setOwnCapabilities(int i, boolean z, Map<Integer, ImsRegistration> map, int i2, boolean z2, String str) {
        long filterFeaturesWithCallState;
        IMSLog.i(LOG_TAG, i, "setOwnCapabilities:");
        Capabilities capabilities = this.mCapabilityDiscovery.getOwnList().get(Integer.valueOf(i));
        Set<String> filterServicesWithReg = this.mCapabilityUtil.filterServicesWithReg(map, this.mRegMan, i2, i);
        if (filterServicesWithReg != null) {
            long filterFeaturesWithService = this.mCapabilityUtil.filterFeaturesWithService(capabilities.getFeature(), filterServicesWithReg, i2, i);
            if (RcsUtils.DualRcs.isDualRcsReg() && i != SimUtil.getActiveDataPhoneId()) {
                filterFeaturesWithCallState = this.mCapabilityUtil.filterEnrichedCallFeatures(filterFeaturesWithService);
            } else {
                filterFeaturesWithCallState = this.mCapabilityUtil.filterFeaturesWithCallState(filterFeaturesWithService, z2, str);
            }
            this.mCapabilityDiscovery.setHasVideoOwnCapability(CapabilityUtil.hasFeature(filterFeaturesWithCallState, Capabilities.FEATURE_MMTEL_VIDEO), i);
            IMSLog.i(LOG_TAG, i, "setOwnCapabilities: mHasVideoOwn = " + this.mCapabilityDiscovery.hasVideoOwnCapability(i));
            IMSLog.c(LogClass.CDM_SET_OWNCAPA, i + ",SETOWN:" + filterFeaturesWithCallState);
            this.mCapabilityDiscovery.getOptionsModule().setOwnCapabilities(filterFeaturesWithCallState, i);
            if (this.mCapabilityDiscovery.getCapabilityConfig(i) != null && this.mCapabilityDiscovery.getCapabilityConfig(i).usePresence()) {
                this.mCapabilityDiscovery.getPresenceModule().setOwnCapabilities(filterFeaturesWithCallState, i);
            }
        }
        if (capabilities.getUri() != null) {
            if (this.mCapabilityDiscovery.getCapabilitiesCache(i).get(capabilities.getUri()) == null) {
                IMSLog.i(LOG_TAG, i, "setOwnCapabilities: Add ownCap to CapabilitiesCache");
                try {
                    this.mCapabilityDiscovery.getCapabilitiesCache(i).add(capabilities.clone());
                } catch (CloneNotSupportedException e) {
                    e.printStackTrace();
                }
            } else {
                IMSLog.i(LOG_TAG, i, "setOwnCapabilities: updateOwnCapabilities");
                this.mCapabilityDiscovery.updateOwnCapabilities(i);
            }
        }
        if (z) {
            this.mRegMan.setOwnCapabilities(i, capabilities);
        }
        this.mCapabilityDiscovery.notifyOwnCapabilitiesChanged(i);
    }

    boolean needPollOnContactChanged(boolean z, int i, long j) {
        if (!z) {
            IMSLog.i(LOG_TAG, i, "needPollOnContactChanged: isPollRequired is false.");
            this.mCapabilityDiscovery.getPhonebook().setThrottleContactSync(false, i);
            return false;
        }
        if (this.mCapabilityDiscovery.getUrisToRequest().values().isEmpty()) {
            IMSLog.i(LOG_TAG, i, "needPollOnContactChanged: No URI to request.");
            this.mCapabilityDiscovery.getPhonebook().setThrottleContactSync(false, i);
            return false;
        }
        Mno simMno = SimUtil.getSimMno(i);
        if (this.mCapabilityDiscovery.getCapabilityConfig(i) != null && this.mCapabilityDiscovery.getCapabilityConfig(i).isDisableInitialScan() && (simMno == Mno.RJIL || simMno.isChn() || simMno == Mno.VODAFONE_INDIA || simMno == Mno.IDEA_INDIA || (simMno == Mno.VZW && !ConfigUtil.isJibeAs(i)))) {
            IMSLog.i(LOG_TAG, i, "needPollOnContactChanged: Address book scan disabled.");
            return false;
        }
        if (this.mCapabilityDiscovery.isPollingInProgress(i)) {
            if (this.mCapabilityDiscovery.getThrottledIntent(i) == null) {
                IMSLog.i(LOG_TAG, i, "needPollOnContactChanged: posting delayed poll event");
                CapabilityDiscoveryModule capabilityDiscoveryModule = this.mCapabilityDiscovery;
                capabilityDiscoveryModule.sendMessageDelayed(capabilityDiscoveryModule.obtainMessage(1, Integer.valueOf(i)), this.mCapabilityUtil.getDelayTimeToPoll(j, i));
                return true;
            }
            IMSLog.i(LOG_TAG, i, "needPollOnContactChanged: polling already in progress");
            return false;
        }
        if (this.mCapabilityDiscovery.getCapabilityControl(i) != null && this.mCapabilityDiscovery.getCapabilityControl(i).isReadyToRequest(i) && this.mCapabilityDiscovery.isRunning()) {
            IMSLog.i(LOG_TAG, i, "needPollOnContactChanged: posting poll event");
            this.mCapabilityDiscovery.removeMessages(1, Integer.valueOf(i));
            CapabilityDiscoveryModule capabilityDiscoveryModule2 = this.mCapabilityDiscovery;
            capabilityDiscoveryModule2.sendMessageDelayed(capabilityDiscoveryModule2.obtainMessage(1, Integer.valueOf(i)), this.mCapabilityUtil.getDelayTimeToPoll(j, i));
            return true;
        }
        IMSLog.i(LOG_TAG, i, "needPollOnContactChanged: new contact was added but RCS not work");
        this.mCapabilityDiscovery.setIsOfflineAddedContact(true, i);
        return false;
    }

    boolean isPollingInProgress(int i, List<Date> list) {
        if (this.mCapabilityDiscovery.getCapabilityConfig(i) == null) {
            IMSLog.e(LOG_TAG, i, "isPollingInProgress: mConfig for phoneId: " + i + " is null");
            return false;
        }
        if (this.mCapabilityDiscovery.getCapabilityConfig(i).isPollingPeriodUpdated()) {
            this.mCapabilityDiscovery.getCapabilityConfig(i).resetPollingPeriodUpdated();
            IMSLog.i(LOG_TAG, i, "isPollingPeriodUpdated: " + this.mCapabilityDiscovery.getCapabilityConfig(i).isPollingPeriodUpdated());
            return false;
        }
        if (this.mCapabilityDiscovery.getThrottledIntent(i) != null) {
            IMSLog.i(LOG_TAG, i, "isPollingInProgress: subscribe throttle in progress");
            return true;
        }
        Iterator<Date> it = list.iterator();
        while (it.hasNext()) {
            if (new Date().getTime() - it.next().getTime() < this.mCapabilityDiscovery.getCapabilityConfig(i).getPollListSubExpiry() * 1000) {
                return true;
            }
        }
        return false;
    }

    void onUpdateCapabilities(List<ImsUri> list, long j, CapabilityConstants.CapExResult capExResult, String str, int i, List<ImsUri> list2, int i2, boolean z, String str2, String str3) {
        if (list == null) {
            IMSLog.i(LOG_TAG, i2, "onUpdateCapabilities: uris null, return");
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (ImsUri imsUri : list) {
            if (imsUri != null) {
                arrayList.add(imsUri.toStringLimit());
            }
        }
        long filterInCallFeatures = this.mCapabilityUtil.filterInCallFeatures(j, list.get(0), str3);
        IMSLog.s(LOG_TAG, i2, "onUpdateCapabilities: uriList " + list);
        IMSLog.i(LOG_TAG, i2, "onUpdateCapabilities: " + arrayList + " result " + capExResult + " features " + Capabilities.dumpFeature(filterInCallFeatures));
        this.mCapabilityDiscovery.setLastCapExResult(capExResult, i2);
        if (this.mCapabilityUtil.checkModuleReady(i2)) {
            processUpdateCapabilities(list, filterInCallFeatures, capExResult, str, i, list2, i2, z, str2);
        }
    }

    private void processUpdateCapabilities(final List<ImsUri> list, final long j, final CapabilityConstants.CapExResult capExResult, final String str, final int i, final List<ImsUri> list2, final int i2, boolean z, final String str2) {
        this.mBackgroundHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.options.CapabilityUpdate$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                CapabilityUpdate.this.lambda$processUpdateCapabilities$1(list, i2, j, capExResult, str, i, list2, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processUpdateCapabilities$1(List list, int i, long j, CapabilityConstants.CapExResult capExResult, String str, int i2, List list2, String str2) {
        Capabilities capabilities;
        CapabilityConstants.CapExResult capExResult2 = capExResult;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList2.add(this.mCapabilityDiscovery.getUriGenerator().normalize((ImsUri) it.next()));
        }
        IMSLog.s(LOG_TAG, i, "processUpdateCapabilities,run, normalizedUris " + arrayList2);
        Iterator it2 = arrayList2.iterator();
        int i3 = 0;
        boolean z = false;
        while (it2.hasNext()) {
            ImsUri imsUri = (ImsUri) it2.next();
            Capabilities capabilities2 = this.mCapabilityDiscovery.getCapabilitiesCache(i).get(imsUri);
            long updateAvailableFeatures = RcsPolicyManager.getRcsStrategy(i).updateAvailableFeatures(capabilities2, j, capExResult2);
            long updateFeatures = RcsPolicyManager.getRcsStrategy(i).updateFeatures(capabilities2, updateAvailableFeatures, capExResult2);
            Iterator it3 = it2;
            int i4 = i3;
            if (!RcsPolicyManager.getRcsStrategy(i).needCapabilitiesUpdate(capExResult, capabilities2, updateFeatures, this.mCapabilityDiscovery.getCapabilityConfig(i).getCapCacheExpiry())) {
                arrayList.add(imsUri);
                capExResult2 = capExResult;
            } else {
                boolean update = z | this.mCapabilityDiscovery.getCapabilitiesCache(i).update(imsUri, updateFeatures, updateAvailableFeatures, str, i2, new Date(), list2, str2);
                StringBuilder sb = new StringBuilder();
                sb.append("processUpdateCapabilities: ");
                sb.append(imsUri != null ? imsUri.toStringLimit() : null);
                sb.append(" is updated, features: ");
                sb.append(Long.toHexString(updateFeatures));
                sb.append(", hasCapChanged: ");
                sb.append(update);
                IMSLog.i(LOG_TAG, i, sb.toString());
                StringBuilder sb2 = new StringBuilder();
                sb2.append(i);
                sb2.append(",");
                sb2.append(imsUri != null ? imsUri.toStringLimit() : "xx");
                sb2.append(",");
                sb2.append(Long.toHexString(updateFeatures));
                sb2.append(",");
                sb2.append(j);
                IMSLog.c(LogClass.CDM_UPD_CAPA, sb2.toString());
                this.mCapabilityUtil.sendGateMessage(imsUri, updateAvailableFeatures, i);
                capExResult2 = capExResult;
                z = update;
            }
            i3 = i4;
            it2 = it3;
        }
        int i5 = i3;
        arrayList2.removeAll(arrayList);
        if (arrayList2.size() <= 0 || (capabilities = this.mCapabilityDiscovery.getCapabilitiesCache(i).get((ImsUri) arrayList2.get(i5))) == null) {
            return;
        }
        if (CapabilityUtil.hasFeature(capabilities.getFeature(), Capabilities.FEATURE_CHATBOT_ROLE)) {
            capabilities.setBotServiceId(BotServiceIdTranslator.getInstance().translate(((ImsUri) list.get(i5)).getMsisdn(), i));
        }
        this.mCapabilityDiscovery.notifyCapabilitiesChanged(arrayList2, capabilities, i);
    }

    void _syncContact(Mno mno) {
        if (RcsPolicyManager.getRcsStrategy(SimUtil.getSimSlotPriority()) == null) {
            Log.e(LOG_TAG, "_syncContact: MnoStrategy is null");
            CapabilityDiscoveryModule capabilityDiscoveryModule = this.mCapabilityDiscovery;
            capabilityDiscoveryModule.sendMessageDelayed(capabilityDiscoveryModule.obtainMessage(10, mno), 1000L);
            return;
        }
        if (this.mCapabilityDiscovery.getUriGenerator() == null) {
            this.mCapabilityDiscovery.setUriGenerator(UriGeneratorFactory.getInstance().get(UriGenerator.URIServiceType.RCS_URI));
            this.mCapabilityDiscovery.getPhonebook().setUriGenerator(this.mCapabilityDiscovery.getUriGenerator());
        }
        Log.i(LOG_TAG, "_syncContact: initial startContactSync");
        this.mCapabilityDiscovery.getPhonebook().setMno(mno);
        if (this.mCapabilityDiscovery.getPhonebook().getContactProviderStatus() >= 0) {
            this.mCapabilityDiscovery.getPhonebook().sendMessageContactSync();
        } else {
            Log.i(LOG_TAG, "_syncContact: contactProvider is not yet ready");
            IMSLog.c(LogClass.CDM_SYNC_CONT, "N,CP:NOTREADY");
        }
    }

    void onOwnCapabilitiesChanged(int i) {
        this.mCapabilityDiscovery.updateOwnCapabilities(i);
        this.mRegMan.setOwnCapabilities(i, this.mCapabilityDiscovery.getOwnList().get(Integer.valueOf(i)));
        IMSLog.i(LOG_TAG, i, "onOwnCapabilitiesChanged: " + Capabilities.dumpFeature(this.mCapabilityDiscovery.getOwnList().get(Integer.valueOf(i)).getFeature()));
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0113  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void prepareResponse(android.content.Context r18, java.util.List<com.sec.ims.util.ImsUri> r19, long r20, java.lang.String r22, int r23, java.lang.String r24, java.util.Map<java.lang.Integer, com.sec.ims.ImsRegistration> r25, int r26, java.lang.String r27) {
        /*
            Method dump skipped, instructions count: 445
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.servicemodules.options.CapabilityUpdate.prepareResponse(android.content.Context, java.util.List, long, java.lang.String, int, java.lang.String, java.util.Map, int, java.lang.String):void");
    }

    boolean isServiceRegistered(String str, Map<Integer, ImsRegistration> map) {
        if (!map.containsKey(Integer.valueOf(this.mCapabilityDiscovery.getActiveDataPhoneId())) || str == null) {
            return false;
        }
        ImsRegistration imsRegistration = map.get(Integer.valueOf(this.mCapabilityDiscovery.getActiveDataPhoneId()));
        Log.i(LOG_TAG, "isServiceRegistered: " + str + " : " + imsRegistration.getServices());
        return imsRegistration.hasService(str);
    }

    int getLastSeen(int i) {
        long userLastActive = this.mCapabilityDiscovery.getUserLastActive(i);
        if (userLastActive > 0) {
            long currentTimeMillis = System.currentTimeMillis();
            Log.i(LOG_TAG, "last active timestamp " + new Date(userLastActive).toString() + "Current Time Stamp " + new Date(currentTimeMillis).toString());
            userLastActive = (long) ((int) ((currentTimeMillis - userLastActive) / SoftphoneNamespaces.SoftphoneSettings.LONG_BACKOFF));
            if (userLastActive >= MAX_LAST_SEEN) {
                userLastActive = 43200;
            }
        }
        Log.i(LOG_TAG, " last seen value " + userLastActive);
        return (int) userLastActive;
    }

    void onRetrySyncContact(int i) {
        Log.i(LOG_TAG, "onRetrySyncContact");
        IMSLog.c(LogClass.CDM_SYNC_CONT_RETRY, "N," + i);
        this.mCapabilityDiscovery.removeMessages(13);
        if (i == 10) {
            Log.i(LOG_TAG, "onRetrySyncContact: max retry count exceed");
            return;
        }
        if (this.mCapabilityDiscovery.getPhonebook().getContactProviderStatus() >= 0) {
            this.mCapabilityDiscovery.setRetrySyncContactCount(0);
            this.mCapabilityDiscovery.syncContact();
            return;
        }
        int i2 = i + 1;
        this.mCapabilityDiscovery.setRetrySyncContactCount(i2);
        Log.i(LOG_TAG, "onRetrySyncContact: contactProvider is not yet ready, retrycount = " + i2);
        CapabilityDiscoveryModule capabilityDiscoveryModule = this.mCapabilityDiscovery;
        capabilityDiscoveryModule.sendMessageDelayed(capabilityDiscoveryModule.obtainMessage(13), 30000L);
    }

    void onContactChanged(boolean z, int i, boolean z2, long j) {
        if (this.mCapabilityDiscovery.getUriGenerator() == null) {
            Log.i(LOG_TAG, "onContactChanged: mUriGenerator is null");
            return;
        }
        IMSLog.i(LOG_TAG, i, "onContactChanged: initial = " + z);
        processContactChanged(z, i, z2, j);
    }

    boolean setLegacyLatching(Context context, ImsUri imsUri, boolean z, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("setLegacyLatching: ");
        sb.append(imsUri != null ? imsUri.toStringLimit() : null);
        sb.append(" isLatching = ");
        sb.append(z);
        IMSLog.i(LOG_TAG, i, sb.toString());
        Capabilities capabilities = this.mCapabilityDiscovery.getCapabilitiesCache(i).get(imsUri);
        if (capabilities == null || capabilities.getLegacyLatching() == z) {
            return false;
        }
        IMSLog.i(LOG_TAG, i, "setLegacyLatching: Latching is changed to " + z);
        capabilities.setLegacyLatching(z);
        this.mCapabilityDiscovery.getCapabilitiesCache(i).persistCachedUri(imsUri, capabilities);
        ArrayList arrayList = new ArrayList();
        arrayList.add(imsUri);
        this.mCapabilityDiscovery.notifyCapabilitiesChanged(arrayList, capabilities, i);
        this.mCapabilityUtil.sendRCSLInfoToHQM(context, z, i);
        IMSLog.c(LogClass.CDM_SET_LATCHING, i + "," + z);
        return true;
    }
}
