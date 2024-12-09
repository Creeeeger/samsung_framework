package com.sec.internal.ims.servicemodules.im;

import android.content.Context;
import android.content.IntentFilter;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.options.Capabilities;
import com.sec.ims.options.CapabilityRefreshType;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;

/* loaded from: classes.dex */
public class ImLatchingProcessor {
    private static final String LOG_TAG = "ImLatchingProcessor";
    private final Context mContext;
    private final ImModule mImModule;
    private final Map<Integer, MsisdnContainer> mLatchingUriList = new HashMap();
    private SmsReceiver mSmsReceiver = null;
    private MmsReceiver mMmsReceiver = null;

    public ImLatchingProcessor(Context context, ImModule imModule) {
        this.mContext = context;
        this.mImModule = imModule;
    }

    public void init(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (!this.mLatchingUriList.containsKey(Integer.valueOf(i2))) {
                this.mLatchingUriList.put(Integer.valueOf(i2), new MsisdnContainer());
            }
        }
    }

    public void registerXmsReceiver(int i) {
        Log.i(LOG_TAG, "register xms receiver.");
        if (this.mSmsReceiver == null) {
            this.mSmsReceiver = new SmsReceiver(this);
            this.mContext.registerReceiver(this.mSmsReceiver, new IntentFilter(SmsReceiver.SMS_RECEIVED));
        }
        if (this.mMmsReceiver == null) {
            this.mMmsReceiver = new MmsReceiver(this);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(MmsReceiver.MMS_RECEIVED);
            try {
                intentFilter.addDataType(MmsReceiver.MMS_MIME_TYPE);
            } catch (IntentFilter.MalformedMimeTypeException e) {
                e.printStackTrace();
            }
            this.mContext.registerReceiver(this.mMmsReceiver, intentFilter);
        }
        this.mLatchingUriList.get(Integer.valueOf(i)).setOptionsExpireTimer(ImsRegistry.getInt(i, GlobalSettingsConstants.RCS.EXPIRE_TIME_FOR_RESENDING_OPTIONS, 0) * 1000);
    }

    public void unregisterXmsReceiver() {
        Log.d(LOG_TAG, "unregister xms receiver.");
        SmsReceiver smsReceiver = this.mSmsReceiver;
        if (smsReceiver != null) {
            this.mContext.unregisterReceiver(smsReceiver);
            this.mSmsReceiver = null;
        }
        MmsReceiver mmsReceiver = this.mMmsReceiver;
        if (mmsReceiver != null) {
            this.mContext.unregisterReceiver(mmsReceiver);
            this.mMmsReceiver = null;
        }
    }

    public void checkAfterSimChanged(int i, String str) {
        this.mLatchingUriList.get(Integer.valueOf(i)).checkAfterSimChanged(str);
    }

    public void processForResolvingLatchingStatus(ImsUri imsUri, long j, int i) {
        if (!this.mLatchingUriList.get(Integer.valueOf(i)).isEnabled()) {
            IMSLog.d(LOG_TAG, i, "Wrong incoming xms. Not processed.");
            return;
        }
        ICapabilityDiscoveryModule capabilityDiscoveryModule = ImsRegistry.getServiceModuleManager().getCapabilityDiscoveryModule();
        if (capabilityDiscoveryModule.checkSenderCapability(imsUri)) {
            if (this.mImModule.getImsRegistration(i) != null) {
                IMSLog.d(LOG_TAG, i, "Registered. check sending options");
                if (this.mLatchingUriList.get(Integer.valueOf(i)).checkTimestampInOptionsList(imsUri, j)) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(imsUri);
                    capabilityDiscoveryModule.getCapabilities(arrayList, CapabilityRefreshType.ALWAYS_FORCE_REFRESH, Capabilities.FEATURE_IM_SERVICE | Capabilities.FEATURE_FT_SERVICE, i);
                    return;
                }
                return;
            }
            IMSLog.d(LOG_TAG, i, "Not registered. store uri in list");
            addUriToLatchingList(imsUri, i);
        }
    }

    private void addUriToLatchingList(ImsUri imsUri, int i) {
        this.mLatchingUriList.get(Integer.valueOf(i)).addUriToLatchingList(imsUri);
    }

    public boolean removeUriFromLatchingList(ImsUri imsUri, int i) {
        return this.mLatchingUriList.get(Integer.valueOf(i)).removeUriFromLatchingList(imsUri);
    }

    public boolean isExistInLatchingList(ImsUri imsUri, int i) {
        return this.mLatchingUriList.get(Integer.valueOf(i)).isExistInLatchingList(imsUri);
    }

    public void resetUriList(int i) {
        this.mLatchingUriList.get(Integer.valueOf(i)).resetUriList();
    }

    public boolean checkTimestampInOptionsList(ImsUri imsUri, long j, int i) {
        return this.mLatchingUriList.get(Integer.valueOf(i)).checkTimestampInOptionsList(imsUri, j);
    }

    public void setXmsReceiverEnabled(int i, boolean z) {
        this.mLatchingUriList.get(Integer.valueOf(i)).setEnabled(z);
    }

    protected ImsUri normalizeUri(int i, ImsUri imsUri) {
        return this.mImModule.normalizeUri(i, imsUri);
    }

    private static class MsisdnContainer {
        private HashSet<ImsUri> latchingUriList;
        private String msisdn;
        private long optionsExpireTimer;
        private boolean receiverEnabled;
        private LinkedList<TimeDataForOptions> uriListToSendOptions;

        private MsisdnContainer() {
            this.msisdn = null;
            this.receiverEnabled = false;
            this.latchingUriList = new HashSet<>();
            this.uriListToSendOptions = new LinkedList<>();
            this.optionsExpireTimer = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void checkAfterSimChanged(String str) {
            setEnabled(true);
            if (TextUtils.isEmpty(this.msisdn)) {
                this.msisdn = str;
            } else {
                if (this.msisdn.equals(str)) {
                    return;
                }
                Log.d(ImLatchingProcessor.LOG_TAG, "other enabled sim is inserted. So, lists will be reset");
                resetUriList();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setEnabled(boolean z) {
            this.receiverEnabled = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isEnabled() {
            return this.receiverEnabled;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setOptionsExpireTimer(long j) {
            this.optionsExpireTimer = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addUriToLatchingList(ImsUri imsUri) {
            this.latchingUriList.add(imsUri);
            Log.d(ImLatchingProcessor.LOG_TAG, "addUriToLatchingList uriLists - " + IMSLog.numberChecker(this.latchingUriList));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean removeUriFromLatchingList(ImsUri imsUri) {
            if (!isExistInLatchingList(imsUri)) {
                return false;
            }
            this.latchingUriList.remove(imsUri);
            Log.d(ImLatchingProcessor.LOG_TAG, "removeUriFromLatchingList uriList - " + IMSLog.numberChecker(this.latchingUriList));
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isExistInLatchingList(ImsUri imsUri) {
            if (this.latchingUriList.isEmpty()) {
                return false;
            }
            Iterator<ImsUri> it = this.latchingUriList.iterator();
            while (it.hasNext()) {
                if (it.next().equals(imsUri)) {
                    Log.d(ImLatchingProcessor.LOG_TAG, "isExistInLatchingList uri - " + IMSLog.numberChecker(imsUri));
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void resetUriList() {
            Log.d(ImLatchingProcessor.LOG_TAG, "resetUriList()");
            if (!this.latchingUriList.isEmpty()) {
                this.latchingUriList.clear();
            }
            if (this.uriListToSendOptions.isEmpty()) {
                return;
            }
            this.uriListToSendOptions.clear();
        }

        private void addTimestampToList(ImsUri imsUri, long j, int i) {
            Log.d(ImLatchingProcessor.LOG_TAG, "addTimestampToList uri: " + IMSLog.numberChecker(imsUri) + ", time: " + j);
            if (i >= 0) {
                this.uriListToSendOptions.remove(i);
            }
            this.uriListToSendOptions.add(new TimeDataForOptions(imsUri, Long.valueOf(j)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean checkTimestampInOptionsList(ImsUri imsUri, long j) {
            Long l;
            int i;
            Log.d(ImLatchingProcessor.LOG_TAG, "checkTimestampInOptionsList uri: " + IMSLog.numberChecker(imsUri) + ", time: " + j);
            LinkedList<TimeDataForOptions> linkedList = this.uriListToSendOptions;
            if (!linkedList.isEmpty()) {
                i = 0;
                while (i < linkedList.size()) {
                    TimeDataForOptions timeDataForOptions = linkedList.get(i);
                    if (timeDataForOptions.getUri().equals(imsUri)) {
                        l = timeDataForOptions.getTime();
                        break;
                    }
                    i++;
                }
            }
            l = null;
            i = -1;
            if (l != null && j - l.longValue() <= this.optionsExpireTimer) {
                return false;
            }
            addTimestampToList(imsUri, j, i);
            return true;
        }
    }
}
