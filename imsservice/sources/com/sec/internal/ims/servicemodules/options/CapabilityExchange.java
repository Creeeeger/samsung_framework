package com.sec.internal.ims.servicemodules.options;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.options.Capabilities;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.entitilement.SoftphoneNamespaces;
import com.sec.internal.constants.ims.servicemodules.options.CapabilityConstants;
import com.sec.internal.helper.AlarmTimer;
import com.sec.internal.helper.PreciseAlarmManager;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.util.ChatbotUriUtil;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class CapabilityExchange {
    private static final String LOG_TAG = "CapabilityExchange";
    protected static final int MAX_PARTIAL_POLL_LIST = 2000;
    protected static final int POLL_LIMIT = 1000;
    protected static final int POLL_REMOVE_LIMIT = 100;
    private static long mPollingPartialCount;
    private CapabilityDiscoveryModule mCapabilityDiscovery;
    private CapabilityUtil mCapabilityUtil;
    private SimpleEventLog mEventLog;
    protected int room = 0;

    private enum Result {
        FALSE,
        TRUE,
        PROCEED
    }

    CapabilityExchange(CapabilityDiscoveryModule capabilityDiscoveryModule, CapabilityUtil capabilityUtil, SimpleEventLog simpleEventLog) {
        this.mCapabilityDiscovery = capabilityDiscoveryModule;
        this.mCapabilityUtil = capabilityUtil;
        this.mEventLog = simpleEventLog;
    }

    void poll(Context context, boolean z, boolean z2, int i, Map<Integer, ImsRegistration> map, List<Date> list) {
        boolean requestCapabilityForOptions;
        this.mEventLog.logAndAdd(i, "poll: isPeriodic = " + z + ", isForce = " + z2 + ", " + this.mCapabilityDiscovery.getUrisToRequest().get(Integer.valueOf(i)).size() + " contacts");
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        sb.append(",");
        sb.append(z);
        sb.append(",");
        sb.append(this.mCapabilityDiscovery.getUrisToRequest().get(Integer.valueOf(i)).size());
        IMSLog.c(LogClass.CDM_POLL, sb.toString());
        this.mCapabilityDiscovery.removeMessages(z ? 18 : 1, Integer.valueOf(i));
        stopThrottledRetryTimer(context, i, z);
        if (stopPoll(map, i)) {
            return;
        }
        setThrottleContactSync(i);
        if (z && this.mCapabilityDiscovery.getUrisToRequest().get(Integer.valueOf(i)).isEmpty()) {
            fillPollingList(i, z2);
            return;
        }
        if (this.mCapabilityDiscovery.getUrisToRequest().get(Integer.valueOf(i)).isEmpty()) {
            IMSLog.i(LOG_TAG, i, "poll: no uris to request");
            return;
        }
        Date date = new Date();
        long pollingRatePeriod = this.mCapabilityDiscovery.getCapabilityConfig(i).getPollingRatePeriod();
        trimPollingHistory(date, pollingRatePeriod, i, list);
        this.room = this.mCapabilityDiscovery.getCapabilityConfig(i).getPollingRate() - list.size();
        IMSLog.i(LOG_TAG, i, "poll: room: " + this.room + ", " + list.size() + " request sent in " + pollingRatePeriod + " seconds.");
        if (this.mCapabilityDiscovery.getCapabilityControl(i) == this.mCapabilityDiscovery.getPresenceModule()) {
            requestCapabilityForOptions = requestCapabilityForPresence(i, z, date);
        } else {
            requestCapabilityForOptions = requestCapabilityForOptions(i, date, list);
        }
        if (requestCapabilityForOptions) {
            throttledRetryTimer(context, i, this.room, pollingRatePeriod, list, z);
            return;
        }
        this.mCapabilityDiscovery.setForcePollingGuard(false, i);
        if (z) {
            delayPoll(i, date);
            CapabilityDiscoveryModule capabilityDiscoveryModule = this.mCapabilityDiscovery;
            capabilityDiscoveryModule.sendMessageDelayed(capabilityDiscoveryModule.obtainMessage(16, i, 0, null), 10000L);
        }
    }

    void delayPoll(int i, Date date) {
        long pollingPeriod = this.mCapabilityDiscovery.getCapabilityConfig(i).getPollingPeriod() * 1000;
        if (RcsPolicyManager.getRcsStrategy(i).boolSetting(RcsPolicySettings.RcsPolicy.USE_RAND_DELAY_PERIODIC_POLL)) {
            pollingPeriod = this.mCapabilityUtil.getRandomizedDelayForPeriodicPolling(i, pollingPeriod);
        }
        if (pollingPeriod > 0) {
            this.mCapabilityDiscovery.startPollingTimer(pollingPeriod, i);
            this.mCapabilityDiscovery.savePollTimestamp(date.getTime(), i);
        }
    }

    void throttledRetryTimer(Context context, int i, int i2, long j, List<Date> list, boolean z) {
        long j2;
        if (this.mCapabilityDiscovery.getCapabilityControl(i) == this.mCapabilityDiscovery.getPresenceModule()) {
            j2 = this.mCapabilityDiscovery.getCapabilityConfig(i).getPollListSubExpiry() == 0 ? 30000L : RcsPolicyManager.getRcsStrategy(i).getThrottledDelay(this.mCapabilityDiscovery.getCapabilityConfig(i).getPollListSubExpiry()) * 1000;
            if (i2 == 0 && j != 0) {
                j2 = (j * 1000) - (j2 * list.size());
            }
        } else {
            j2 = j * 1000;
        }
        startThrottledRetryTimer(context, z, j2, i);
    }

    boolean stopPoll(Map<Integer, ImsRegistration> map, int i) {
        IMnoStrategy rcsStrategy = RcsPolicyManager.getRcsStrategy(i);
        if (!this.mCapabilityUtil.checkModuleReady(i) || ((rcsStrategy != null && !rcsStrategy.boolSetting(RcsPolicySettings.RcsPolicy.POLL_ALLOWED)) || (this.mCapabilityDiscovery.getCapabilityControl(i) != null && !this.mCapabilityDiscovery.getCapabilityControl(i).isReadyToRequest(i)))) {
            IMSLog.i(LOG_TAG, i, "stopPoll: cancel poll request");
            this.mCapabilityDiscovery.setForcePollingGuard(false, i);
            return true;
        }
        if (map.isEmpty() || !map.containsKey(Integer.valueOf(i))) {
            IMSLog.i(LOG_TAG, i, "stopPoll: not registered.");
            this.mCapabilityDiscovery.setForcePollingGuard(false, i);
            return true;
        }
        if (SimUtil.getSimMno(i) != Mno.TMOUS || ConfigUtil.isJibeAs(i) || !this.mCapabilityDiscovery.getCapabilityConfig(i).isDisableInitialScan()) {
            return false;
        }
        IMSLog.i(LOG_TAG, i, "stopPoll: initial scan is disabled");
        this.mCapabilityDiscovery.setForcePollingGuard(false, i);
        return true;
    }

    void setThrottleContactSync(int i) {
        if (this.mCapabilityDiscovery.getUrisToRequest().get(Integer.valueOf(i)).size() >= 1000) {
            this.mCapabilityDiscovery.getPhonebook().setThrottleContactSync(true, i);
        } else if (this.mCapabilityDiscovery.getUrisToRequest().get(Integer.valueOf(i)).size() <= 100) {
            this.mCapabilityDiscovery.getPhonebook().setThrottleContactSync(false, i);
        }
    }

    void trimPollingHistory(Date date, long j, int i, List<Date> list) {
        Iterator<Date> it = list.iterator();
        if (this.mCapabilityDiscovery.getCapabilityConfig(i) == null) {
            return;
        }
        while (it.hasNext()) {
            if (date.getTime() - it.next().getTime() > 1000 * j) {
                it.remove();
            }
        }
    }

    boolean requestCapabilityForPresence(int i, boolean z, Date date) {
        CapabilityConstants.RequestType requestType;
        int requestCapabilityExchange;
        CapabilityConstants.RequestType requestType2;
        IMSLog.s(LOG_TAG, i, "requestCapabilityForPresence:");
        if (this.room > 0 || !z) {
            Set<ImsUri> set = this.mCapabilityDiscovery.getUrisToRequest().get(Integer.valueOf(i));
            synchronized (set) {
                if (set.size() == 1) {
                    CapabilityDiscoveryModule capabilityDiscoveryModule = this.mCapabilityDiscovery;
                    ImsUri next = set.iterator().next();
                    if (z) {
                        requestType2 = CapabilityConstants.RequestType.REQUEST_TYPE_PERIODIC;
                    } else {
                        requestType2 = CapabilityConstants.RequestType.REQUEST_TYPE_CONTACT_CHANGE;
                    }
                    if (capabilityDiscoveryModule.requestCapabilityExchange(next, requestType2, false, i, 0)) {
                        set.clear();
                        requestCapabilityExchange = 1;
                    } else {
                        requestCapabilityExchange = 0;
                    }
                } else {
                    CapabilityDiscoveryModule capabilityDiscoveryModule2 = this.mCapabilityDiscovery;
                    if (z) {
                        requestType = CapabilityConstants.RequestType.REQUEST_TYPE_PERIODIC;
                    } else {
                        requestType = CapabilityConstants.RequestType.REQUEST_TYPE_CONTACT_CHANGE;
                    }
                    requestCapabilityExchange = capabilityDiscoveryModule2.requestCapabilityExchange(set, requestType, i, 0);
                }
            }
            this.mCapabilityDiscovery.putUrisToRequestList(i, set);
            if (requestCapabilityExchange > 1) {
                this.mCapabilityDiscovery.setLastListSubscribeStamp(date.getTime(), i);
            }
            if (z && requestCapabilityExchange > 0) {
                this.mCapabilityDiscovery.addPollingHistory(date, i);
            }
        }
        if (this.mCapabilityDiscovery.getUrisToRequest().get(Integer.valueOf(i)).size() <= 0) {
            return false;
        }
        IMSLog.i(LOG_TAG, i, "poll: remained mUrisToRequest size: " + this.mCapabilityDiscovery.getUrisToRequest().get(Integer.valueOf(i)).size());
        return true;
    }

    boolean requestCapabilityForOptions(int i, Date date, List<Date> list) {
        boolean z;
        IMSLog.s(LOG_TAG, i, "requestCapabilityForOptions:");
        Set<ImsUri> set = this.mCapabilityDiscovery.getUrisToRequest().get(Integer.valueOf(i));
        synchronized (set) {
            Iterator<ImsUri> it = set.iterator();
            boolean z2 = false;
            while (true) {
                z = true;
                if (!it.hasNext()) {
                    break;
                }
                ImsUri next = it.next();
                if (this.room == 0) {
                    IMSLog.i(LOG_TAG, i, "poll: room is 0");
                    break;
                }
                if (this.mCapabilityDiscovery.requestCapabilityExchange(next, CapabilityConstants.RequestType.REQUEST_TYPE_NONE, false, i, 0)) {
                    it.remove();
                    this.mCapabilityDiscovery.addPollingHistory(date, i);
                    this.room--;
                } else {
                    z2 = true;
                }
                if (list.size() >= this.mCapabilityDiscovery.getCapabilityConfig(i).getPollingRate()) {
                    break;
                }
            }
            if (set.size() > 0) {
                IMSLog.i(LOG_TAG, i, "poll: remained mUrisToRequest size: " + set.size());
            } else {
                z = z2;
            }
        }
        this.mCapabilityDiscovery.putUrisToRequestList(i, set);
        return z;
    }

    boolean requestCapabilityExchange(ImsUri imsUri, CapabilityConstants.RequestType requestType, boolean z, int i, Capabilities capabilities, IRegistrationManager iRegistrationManager, Map<Integer, ImsRegistration> map, String str, int i2, int i3) {
        Result validateCapexRequest = validateCapexRequest(imsUri, i, iRegistrationManager, map);
        if (validateCapexRequest != Result.PROCEED) {
            return validateCapexRequest == Result.TRUE;
        }
        IMSLog.s(LOG_TAG, i, "requestCapabilityExchange: uri = " + imsUri);
        IMSLog.i(LOG_TAG, i, "requestCapabilityExchange: " + imsUri.toStringLimit() + ", requesttype: " + requestType + ", isAlwaysForce: " + z);
        return this.mCapabilityDiscovery.getCapabilityControl(i).requestCapabilityExchange(imsUri, null, requestType, z, this.mCapabilityUtil.filterInCallFeatures(this.mCapabilityUtil.filterFeaturesWithService(capabilities.getFeature(), iRegistrationManager.getServiceForNetwork(map.get(Integer.valueOf(i)).getImsProfile(), i2, false, i), i2, i), imsUri, str), i, capabilities.getExtFeatureAsJoinedString(), i3);
    }

    boolean sendOptionsRequest(ImsUri imsUri, int i, Set<String> set, IRegistrationManager iRegistrationManager, Map<Integer, ImsRegistration> map) {
        if (validateCapexRequest(imsUri, i, iRegistrationManager, map) == Result.PROCEED) {
            return this.mCapabilityDiscovery.getCapabilityControl(i).sendOptionsRequest(imsUri, true, set, i);
        }
        return false;
    }

    int requestCapabilityExchange(Set<ImsUri> set, CapabilityConstants.RequestType requestType, int i, int i2) {
        if (set == null || set.size() == 0 || this.mCapabilityDiscovery.getCapabilityControl(i) == null) {
            return 0;
        }
        IMSLog.i(LOG_TAG, i, "requestCapabilityExchange: " + set.size() + " contacts");
        StringBuilder sb = new StringBuilder();
        sb.append("requestCapabilityExchange internalRequestId : ");
        sb.append(i2);
        IMSLog.i(LOG_TAG, i, sb.toString());
        ArrayList arrayList = new ArrayList();
        for (ImsUri imsUri : set) {
            if (!this.mCapabilityUtil.isAllowedPrefixesUri(imsUri, i) && !ChatbotUriUtil.hasChatbotRoleSession(imsUri, i)) {
                arrayList.add(imsUri);
            }
        }
        if (arrayList.size() > 0) {
            IMSLog.s(LOG_TAG, i, "requestCapabilityExchange: remove notAllowedUris = " + arrayList);
            set.removeAll(arrayList);
            IMSLog.i(LOG_TAG, i, "requestCapabilityExchange: " + set.size() + " contacts after removed notAllowedUris");
            if (set.size() == 0) {
                return 0;
            }
        }
        return this.mCapabilityDiscovery.getCapabilityControl(i).requestCapabilityExchange(set, requestType, i, i2);
    }

    void requestInitialCapabilitiesQuery(int i, boolean z, long j) {
        IMSLog.i(LOG_TAG, i, "requestInitialCapabilitiesQuery:");
        this.mCapabilityDiscovery.removeMessages(3, Integer.valueOf(i));
        if (this.mCapabilityDiscovery.getCapabilityConfig(i) != null && this.mCapabilityDiscovery.getCapabilityConfig(i).isDisableInitialScan()) {
            IMSLog.i(LOG_TAG, i, "requestInitialCapabilitiesQuery: disable initial scan");
            if (RcsPolicyManager.getRcsStrategy(i).boolSetting(RcsPolicySettings.RcsPolicy.POLL_ALLOWED) || !z) {
                return;
            }
            CapabilityDiscoveryModule capabilityDiscoveryModule = this.mCapabilityDiscovery;
            capabilityDiscoveryModule.sendMessageDelayed(capabilityDiscoveryModule.obtainMessage(16, i, 0, null), 10000L);
            return;
        }
        if (!this.mCapabilityDiscovery.getPhonebook().isReady(i)) {
            if (i == SimUtil.getActiveDataPhoneId()) {
                IMSLog.i(LOG_TAG, i, "requestInitialCapabilitiesQuery: contact is not ready. retry in 1 second.");
                CapabilityDiscoveryModule capabilityDiscoveryModule2 = this.mCapabilityDiscovery;
                capabilityDiscoveryModule2.sendMessageDelayed(capabilityDiscoveryModule2.obtainMessage(3, Integer.valueOf(i)), 1000L);
                return;
            }
            return;
        }
        if (this.mCapabilityDiscovery.getCapabilityControl(i) == null || this.mCapabilityDiscovery.getCapabilityConfig(i) == null || !this.mCapabilityDiscovery.getCapabilityControl(i).isReadyToRequest(i)) {
            IMSLog.i(LOG_TAG, i, "requestInitialCapabilitiesQuery: not ready. retry in 1 second.");
            CapabilityDiscoveryModule capabilityDiscoveryModule3 = this.mCapabilityDiscovery;
            capabilityDiscoveryModule3.sendMessageDelayed(capabilityDiscoveryModule3.obtainMessage(3, Integer.valueOf(i)), 1000L);
            return;
        }
        IMSLog.i(LOG_TAG, i, "requestInitialCapabilitiesQuery: mLastPollTimestamp: " + j + ", mPollingPeriod: " + this.mCapabilityDiscovery.getCapabilityConfig(i).getPollingPeriod());
        if (this.mCapabilityDiscovery.isPollingInProgress(i)) {
            IMSLog.i(LOG_TAG, i, "requestInitialCapabilitiesQuery: Polling already in progress");
            return;
        }
        if (this.mCapabilityDiscovery.getCapabilityConfig(i).getPollingPeriod() > 0 && this.mCapabilityDiscovery.getCapabilityConfig(i).getPollingRate() > 0) {
            if (j == 0) {
                IMSLog.i(LOG_TAG, i, "requestInitialCapabilitiesQuery: Polling has not been performed yet, start polling");
                CapabilityDiscoveryModule capabilityDiscoveryModule4 = this.mCapabilityDiscovery;
                capabilityDiscoveryModule4.sendMessage(capabilityDiscoveryModule4.obtainMessage(18, 0, 0, Integer.valueOf(i)));
                return;
            }
            this.mCapabilityDiscovery.startPoll(i);
            return;
        }
        if (this.mCapabilityDiscovery.getCapabilityConfig(i).usePresence() && RcsPolicyManager.getRcsStrategy(i).boolSetting(RcsPolicySettings.RcsPolicy.POLL_ALLOWED)) {
            this.mCapabilityDiscovery.onContactChanged(true);
            return;
        }
        this.mCapabilityDiscovery.onContactChanged(z);
        if (z) {
            this.mCapabilityDiscovery.setInitialQuery(false, i);
        }
    }

    void forcePoll(int i) {
        this.mEventLog.logAndAdd(i, "forcePoll forcePollingGuard = " + this.mCapabilityDiscovery.getForcePollingGuard(i));
        if (this.mCapabilityDiscovery.getForcePollingGuard(i)) {
            return;
        }
        this.mCapabilityDiscovery.setForcePollingGuard(true, i);
        resetPartialPolling(i);
        this.mCapabilityDiscovery.removeMessages(18, Integer.valueOf(i));
        fillPollingList(i, true);
    }

    void fillPollingList(final int i, final boolean z) {
        new Thread(new Runnable() { // from class: com.sec.internal.ims.servicemodules.options.CapabilityExchange$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CapabilityExchange.this.lambda$fillPollingList$0(i, z);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillPollingList$0(int i, boolean z) {
        boolean z2;
        if (this.mCapabilityDiscovery.getCapabilitiesCache(i) == null) {
            IMSLog.e(LOG_TAG, i, "fillPollingList: CapabilitiesCache is null");
            return;
        }
        if (this.mCapabilityDiscovery.getCapabilityControl(i) == null) {
            IMSLog.e(LOG_TAG, i, "fillPollingList: getCapabilityControl is null");
            return;
        }
        int i2 = 1;
        boolean z3 = this.mCapabilityDiscovery.getCapabilityControl(i) == this.mCapabilityDiscovery.getPresenceModule();
        CapabilityConfig capabilityConfig = this.mCapabilityDiscovery.getCapabilityConfig(i);
        IMSLog.i(LOG_TAG, i, "fillPollingList count : " + mPollingPartialCount);
        try {
            TreeMap<Integer, ImsUri> capabilitiesForPolling = this.mCapabilityDiscovery.getCapabilitiesCache(i).getCapabilitiesForPolling(z3 ? 2000 : -1, mPollingPartialCount, capabilityConfig.getNonRCScapInfoExpiry(), capabilityConfig.getCapInfoExpiry(), z);
            Set<ImsUri> set = this.mCapabilityDiscovery.getUrisToRequest().get(Integer.valueOf(i));
            this.mEventLog.logAndAdd(i, "fillPollingList: capexListSize = " + capabilitiesForPolling.size() + ", mPollingPartialCount = " + mPollingPartialCount + ", S");
            IMSLog.c(LogClass.CDM_FILL_POLL_LIST_S, i + "," + capabilitiesForPolling.size() + "," + mPollingPartialCount);
            Iterator<Integer> it = capabilitiesForPolling.keySet().iterator();
            while (it.hasNext()) {
                updatePollList(set, capabilitiesForPolling.get(Integer.valueOf(it.next().intValue())), true, i);
            }
            mPollingPartialCount = capabilitiesForPolling.size() > 0 ? capabilitiesForPolling.lastKey().intValue() : 0L;
            if (!z3) {
                z2 = z;
            } else if (capabilitiesForPolling.size() == 2000) {
                long partialPollingPeriod = getPartialPollingPeriod(i);
                this.mEventLog.logAndAdd(i, "fillPollingList: exceed max, retry partial poll after " + partialPollingPeriod);
                IMSLog.c(LogClass.CDM_RETRY_PARTIAL_POLL, "" + i);
                z2 = z;
                this.mCapabilityDiscovery.startPartialPollingTimer(partialPollingPeriod, z2, i);
            } else {
                z2 = z;
                resetPartialPolling(i);
            }
            this.mEventLog.logAndAdd(i, "fillPollingList: E");
            IMSLog.c(LogClass.CDM_FILL_POLL_LIST_E, "" + i);
            if (!set.isEmpty()) {
                CapabilityDiscoveryModule capabilityDiscoveryModule = this.mCapabilityDiscovery;
                if (!z2) {
                    i2 = 0;
                }
                capabilityDiscoveryModule.sendMessage(capabilityDiscoveryModule.obtainMessage(18, i2, 0, Integer.valueOf(i)));
                return;
            }
            resetPartialPolling(i);
            delayPoll(i, new Date());
        } catch (ConcurrentModificationException e) {
            e.printStackTrace();
        }
    }

    private void resetPartialPolling(int i) {
        IMSLog.i(LOG_TAG, i, "resetPartialPolling");
        this.mCapabilityDiscovery.stopPartialPollingTimer(i);
        mPollingPartialCount = 0L;
    }

    void exchangeCapabilities(Map<Integer, ImsRegistration> map, IRegistrationManager iRegistrationManager, String str, long j, int i, String str2, String str3) {
        ImsUri normalizedUri = this.mCapabilityDiscovery.getUriGenerator().getNormalizedUri(str, true);
        if (normalizedUri == null) {
            Log.i(LOG_TAG, "getCapabilities: uri is null");
            return;
        }
        Log.i(LOG_TAG, "exchangeCapabilities: myFeatures = " + Capabilities.dumpFeature(j));
        if (iRegistrationManager == null || !map.containsKey(Integer.valueOf(i))) {
            Log.i(LOG_TAG, "exchangeCapabilities: mRegMan or mImsRegInfo is null");
        } else if (iRegistrationManager.isSuspended(map.get(Integer.valueOf(i)).getHandle())) {
            Log.i(LOG_TAG, "cannot exchange capabilities. currently in suspend");
        } else {
            this.mCapabilityDiscovery.getOptionsModule().requestCapabilityExchange(normalizedUri, null, CapabilityConstants.RequestType.REQUEST_TYPE_NONE, true, this.mCapabilityUtil.filterInCallFeatures(j, normalizedUri, str3), i, str2, 0);
        }
    }

    void startThrottledRetryTimer(Context context, boolean z, long j, int i) {
        stopThrottledRetryTimer(context, i, z);
        IMSLog.i(LOG_TAG, i, "startThrottledRetryTimer: isPeriodic = " + z + ", millis " + j);
        if (j < SoftphoneNamespaces.SoftphoneSettings.LONG_BACKOFF) {
            if (z) {
                PreciseAlarmManager.getInstance(context).sendMessageDelayed(this.mCapabilityDiscovery.obtainMessage(18, 0, 0, Integer.valueOf(i)), j);
                return;
            } else {
                PreciseAlarmManager.getInstance(context).sendMessageDelayed(this.mCapabilityDiscovery.obtainMessage(1, Integer.valueOf(i)), j);
                return;
            }
        }
        Intent intent = new Intent("com.sec.internal.ims.servicemodules.options.sub_throttled_timeout");
        intent.putExtra("IS_PERIODIC", z);
        intent.setPackage(context.getPackageName());
        this.mCapabilityDiscovery.setThrottledIntent(PendingIntent.getBroadcast(context, 0, intent, 33554432), i);
        AlarmTimer.start(context, this.mCapabilityDiscovery.getThrottledIntent(i), j);
    }

    void stopThrottledRetryTimer(Context context, int i, boolean z) {
        IMSLog.i(LOG_TAG, i, "stopThrottledRetryTimer: isPeriodic = " + z);
        PreciseAlarmManager.getInstance(context).removeMessage(this.mCapabilityDiscovery.obtainMessage(z ? 18 : 1, Integer.valueOf(i)));
        if (this.mCapabilityDiscovery.getThrottledIntent(i) == null) {
            return;
        }
        AlarmTimer.stop(context, this.mCapabilityDiscovery.getThrottledIntent(i));
        this.mCapabilityDiscovery.setThrottledIntent(null, i);
    }

    boolean updatePollList(Set<ImsUri> set, ImsUri imsUri, boolean z, int i) {
        IMnoStrategy rcsStrategy = RcsPolicyManager.getRcsStrategy(i);
        if (rcsStrategy == null) {
            Log.e(LOG_TAG, "updatePollList: mnoStrategy is null.");
            return false;
        }
        if (!rcsStrategy.isCapabilityValidUri(imsUri)) {
            Log.e(LOG_TAG, "updatePollList: isCapabilityValidUri is false.");
            return false;
        }
        synchronized (set) {
            if (z) {
                return set.add(imsUri);
            }
            return set.remove(imsUri);
        }
    }

    Result validateCapexRequest(ImsUri imsUri, int i, IRegistrationManager iRegistrationManager, Map<Integer, ImsRegistration> map) {
        ImsRegistration imsRegistration;
        if (imsUri == null || this.mCapabilityDiscovery.getCapabilityControl(i) == null) {
            IMSLog.e(LOG_TAG, i, "requestCapabilityExchange: uri or mControl is null");
            return Result.FALSE;
        }
        IMnoStrategy rcsStrategy = RcsPolicyManager.getRcsStrategy(i);
        if (rcsStrategy == null) {
            IMSLog.e(LOG_TAG, i, "requestCapabilityExchange: mnoStrategy is null.");
            return Result.FALSE;
        }
        if (!this.mCapabilityUtil.isAllowedPrefixesUri(imsUri, i) && !ChatbotUriUtil.hasChatbotRoleSession(imsUri, i)) {
            IMSLog.e(LOG_TAG, i, "requestCapabilityExchange: isAllowedPrefixesUri and hasChatbotRoleSession are false.");
            return Result.TRUE;
        }
        if (!rcsStrategy.isCapabilityValidUri(imsUri)) {
            IMSLog.e(LOG_TAG, i, "requestCapabilityExchange: isPresenceValidUri is false.");
            return Result.TRUE;
        }
        if (this.mCapabilityUtil.blockOptionsToOwnUri(imsUri, i)) {
            return Result.TRUE;
        }
        if (ChatbotUriUtil.hasUriBotPlatform(imsUri, i) && !TextUtils.isEmpty(imsUri.getParam("user"))) {
            IMSLog.i(LOG_TAG, i, "remove user=phone param for chatbot serviceId");
            imsUri.removeUserParam();
        }
        if (iRegistrationManager == null || map.isEmpty() || (imsRegistration = map.get(Integer.valueOf(i))) == null) {
            IMSLog.i(LOG_TAG, i, "requestCapabilityExchange: mRegMan or ImsRegistration is null");
            return Result.FALSE;
        }
        if (iRegistrationManager.isSuspended(imsRegistration.getHandle())) {
            IMSLog.i(LOG_TAG, i, "both phoneId 0 and phoneId 1 was suspended, cannot exchange capabilities.");
            return Result.FALSE;
        }
        return Result.PROCEED;
    }

    private long getPartialPollingPeriod(int i) {
        int pollListSubExpiry = this.mCapabilityDiscovery.getCapabilityConfig(i).getPollListSubExpiry();
        return (2000 / this.mCapabilityDiscovery.mPresenceModule.getPresenceConfig(i).getMaxUri()) * (pollListSubExpiry == 0 ? 30000L : RcsPolicyManager.getRcsStrategy(i).getThrottledDelay(pollListSubExpiry) * 1000);
    }
}
