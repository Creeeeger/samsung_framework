package com.sec.internal.ims.servicemodules.options;

import android.content.ContentValues;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.util.LruCache;
import com.sec.ims.extensions.Extensions;
import com.sec.ims.options.Capabilities;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.ims.diagnosis.ImsLogAgentUtil;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class CapabilitiesCache {
    private static final String LOG_TAG = "CapabilitiesCache";
    static final int MaxCacheSize = 10000;
    private static final int PERSIST_MAX_SIZE = 100;
    private static final int PERSIST_TIMEOUT = 500;
    Handler mCapabilityStorageHandler;
    private Context mContext;
    private int mPhoneId;
    final LruCache<ImsUri, Capabilities> mCapabilitiesList = new LruCache<>(10000);
    ConcurrentHashMap<ImsUri, Capabilities> mUriListToUpdate = new ConcurrentHashMap<>();
    ArrayList<ImsUri> mUriListToDelete = new ArrayList<>();
    CapabilityStorage mCapabilityStorage = null;
    private HandlerThread mThread = new HandlerThread("CapabilityStorage", 10);
    boolean mIsPersistPosted = false;
    private boolean mPersistTimeout = false;

    public static int getMaxCacheSize() {
        return 10000;
    }

    public CapabilitiesCache(Context context, int i) {
        this.mContext = context;
        this.mPhoneId = i;
        initCapabilityStorage();
    }

    private void initCapabilityStorage() {
        this.mThread.start();
        this.mCapabilityStorageHandler = new Handler(this.mThread.getLooper());
        this.mCapabilityStorage = new CapabilityStorage(this.mContext, this, this.mPhoneId);
    }

    public void loadCapabilityStorage() {
        this.mCapabilitiesList.evictAll();
        this.mCapabilityStorageHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.options.CapabilitiesCache$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                CapabilitiesCache.this.lambda$loadCapabilityStorage$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadCapabilityStorage$0() {
        this.mCapabilityStorage.load();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resetCapabilityStorage$1() {
        this.mCapabilityStorage.reset();
    }

    private void resetCapabilityStorage() {
        this.mCapabilityStorageHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.options.CapabilitiesCache$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                CapabilitiesCache.this.lambda$resetCapabilityStorage$1();
            }
        });
    }

    void tryPersist(final boolean z) {
        this.mCapabilityStorageHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.options.CapabilitiesCache$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                CapabilitiesCache.this.lambda$tryPersist$3(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$tryPersist$3(boolean z) {
        if (z || this.mPersistTimeout || this.mUriListToUpdate.size() >= 100) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "tryPersist: force = " + z + ", timeout = " + this.mPersistTimeout);
            this.mIsPersistPosted = false;
            this.mPersistTimeout = false;
            this.mCapabilityStorage.persist();
            return;
        }
        if (this.mIsPersistPosted) {
            return;
        }
        this.mIsPersistPosted = true;
        new Handler().postDelayed(new Runnable() { // from class: com.sec.internal.ims.servicemodules.options.CapabilitiesCache$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                CapabilitiesCache.this.lambda$tryPersist$2();
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$tryPersist$2() {
        if (this.mUriListToUpdate.size() > 0) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "tryPersist: try remainder " + this.mUriListToUpdate.size());
            this.mPersistTimeout = true;
            tryPersist(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$persistToContactDB$4(Capabilities capabilities, boolean z) {
        this.mCapabilityStorage.persistToContactDB(capabilities, z);
    }

    void persistToContactDB(final Capabilities capabilities, final boolean z) {
        this.mCapabilityStorageHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.options.CapabilitiesCache$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                CapabilitiesCache.this.lambda$persistToContactDB$4(capabilities, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteNonRcsDataFromContactDB$5() {
        this.mCapabilityStorage.deleteNonRcsDataFromContactDB();
    }

    public void deleteNonRcsDataFromContactDB() {
        this.mCapabilityStorageHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.options.CapabilitiesCache$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                CapabilitiesCache.this.lambda$deleteNonRcsDataFromContactDB$5();
            }
        });
    }

    public List<String> getCapabilitiesNumberWithContactId() {
        return this.mCapabilityStorage.getCapabilitiesNumberWithContactId();
    }

    public Collection<Capabilities> getCapabilitiesCache() {
        return this.mCapabilitiesList.snapshot().values();
    }

    public Collection<Capabilities> getAllCapabilities() {
        return this.mCapabilityStorage.getAllCapabilities();
    }

    private int getAmountCapabilities() {
        return this.mCapabilityStorage.getAmountCapabilities();
    }

    private int getAmountRcsCapabilities() {
        return this.mCapabilityStorage.getAmountRcsCapabilities();
    }

    public void sendRCSCInfoToHQM() {
        this.mCapabilityStorageHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.options.CapabilitiesCache$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CapabilitiesCache.this.lambda$sendRCSCInfoToHQM$6();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendRCSCInfoToHQM$6() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(DiagnosisConstants.RCSC_KEY_NCAP, String.valueOf(getAmountCapabilities()));
        contentValues.put(DiagnosisConstants.RCSC_KEY_NRCS, String.valueOf(getAmountRcsCapabilities()));
        ImsLogAgentUtil.sendLogToAgent(this.mPhoneId, this.mContext, "RCSC", contentValues);
    }

    public void add(Capabilities capabilities) {
        if (capabilities == null || capabilities.getUri() == null) {
            Log.i(LOG_TAG, "add: null CapexInfo.");
            return;
        }
        ImsUri uri = capabilities.getUri();
        IMSLog.s(LOG_TAG, this.mPhoneId, "add: " + uri);
        this.mCapabilitiesList.put(uri, capabilities);
    }

    public void remove(List<ImsUri> list) {
        if (list == null) {
            return;
        }
        IMSLog.s(LOG_TAG, this.mPhoneId, "remove: " + list);
        if (list.size() > 0) {
            Iterator<ImsUri> it = list.iterator();
            while (it.hasNext()) {
                this.mCapabilitiesList.remove(it.next());
            }
            this.mUriListToDelete.addAll(list);
            tryPersist(true);
        }
    }

    public boolean update(ImsUri imsUri, long j, long j2, String str, long j3, Date date, List<ImsUri> list, String str2) {
        String str3;
        boolean z;
        Date date2;
        boolean z2;
        if (imsUri == null) {
            return false;
        }
        Capabilities capabilities = get(imsUri);
        if (capabilities == null) {
            IMSLog.s(LOG_TAG, this.mPhoneId, "update: Add new capabilities from Unknown Uri = " + imsUri);
            String msisdnNumber = UriUtil.getMsisdnNumber(imsUri);
            str3 = LOG_TAG;
            Capabilities capabilities2 = new Capabilities(imsUri, msisdnNumber, (String) null, -1L, (String) null);
            add(capabilities2);
            capabilities = capabilities2;
        } else {
            str3 = LOG_TAG;
        }
        IMSLog.i(str3, this.mPhoneId, "update: feature changed " + capabilities.getFeature() + " to " + j);
        if (isAvailable(j) != isAvailable(capabilities.getFeature()) || (isAvailable(j) && j != capabilities.getFeature())) {
            z = true;
            date2 = date;
        } else {
            date2 = date;
            z = false;
        }
        capabilities.setTimestamp(date2);
        capabilities.setUri(imsUri);
        capabilities.setFeatures(j);
        capabilities.setAvailableFeatures(j2);
        capabilities.setAvailiable(isAvailable(j));
        capabilities.setPidf(str);
        capabilities.setPhoneId(this.mPhoneId);
        if (str2 != null) {
            capabilities.setExtFeature(new ArrayList(Arrays.asList(str2.split(","))));
        }
        Log.i(str3, "update: setting last seen in capabilities " + j3);
        capabilities.setLastSeen(j3);
        String str4 = str3;
        if (list != null) {
            capabilities.setPAssertedId(list);
        }
        if (capabilities.getLegacyLatching() && (capabilities.isFeatureAvailable(Capabilities.FEATURE_CHAT_CPM) || capabilities.isFeatureAvailable(Capabilities.FEATURE_CHAT_SIMPLE_IM) || capabilities.isFeatureAvailable(Capabilities.FEATURE_FT) || capabilities.isFeatureAvailable(Capabilities.FEATURE_FT_HTTP) || capabilities.isFeatureAvailable(Capabilities.FEATURE_FT_STORE))) {
            z2 = false;
            capabilities.setLegacyLatching(false);
            IMSLog.i(str4, this.mPhoneId, "update: Legacy Latching clear !!");
        } else {
            z2 = false;
        }
        this.mUriListToUpdate.put(imsUri, capabilities);
        tryPersist(z2);
        persistToContactDB(capabilities, z);
        return z;
    }

    public void updateContactInfo(ImsUri imsUri, String str, String str2, String str3, boolean z, Capabilities capabilities) {
        if (capabilities != null) {
            IMSLog.s(LOG_TAG, this.mPhoneId, "updateContactInfo: update " + imsUri);
            capabilities.updateCapabilities(str, str2, str3);
        } else {
            IMSLog.s(LOG_TAG, this.mPhoneId, "updateContactInfo: new capabilities update for uri " + imsUri);
            capabilities = new Capabilities(imsUri, str, str2, -1L, str3);
            add(capabilities);
        }
        capabilities.setTimestamp(new Date());
        capabilities.setPhoneId(this.mPhoneId);
        if (z) {
            persistCachedUri(imsUri, capabilities);
        }
        persistToContactDB(capabilities, false);
    }

    public void persistCachedUri(ImsUri imsUri, Capabilities capabilities) {
        if (capabilities != null) {
            IMSLog.s(LOG_TAG, this.mPhoneId, "persistCachedUri: uri = " + imsUri);
            this.mUriListToUpdate.put(imsUri, capabilities);
            tryPersist(false);
        }
    }

    public boolean isAvailable(long j) {
        return (j == ((long) Capabilities.FEATURE_OFFLINE_RCS_USER) || j == ((long) Capabilities.FEATURE_NON_RCS_USER) || j == ((long) Capabilities.FEATURE_NOT_UPDATED)) ? false : true;
    }

    public Capabilities get(int i) {
        for (Capabilities capabilities : this.mCapabilitiesList.snapshot().values()) {
            if (capabilities.getId() == i) {
                IMSLog.s(LOG_TAG, "get: found. Id " + i);
                return capabilities;
            }
        }
        Capabilities capabilities2 = this.mCapabilityStorage.get(i);
        if (capabilities2 != null) {
            this.mCapabilitiesList.put(capabilities2.getUri(), capabilities2);
        }
        return capabilities2;
    }

    public Capabilities get(ImsUri imsUri) {
        if (imsUri == null) {
            return null;
        }
        Capabilities hasCapabilitiesCache = hasCapabilitiesCache(imsUri);
        if (hasCapabilitiesCache != null) {
            IMSLog.s(LOG_TAG, "get: found. Uri " + imsUri);
        } else {
            hasCapabilitiesCache = this.mCapabilityStorage.get(imsUri);
            if (hasCapabilitiesCache != null) {
                this.mCapabilitiesList.put(hasCapabilitiesCache.getUri(), hasCapabilitiesCache);
            }
        }
        return hasCapabilitiesCache;
    }

    public TreeMap<Integer, ImsUri> getCapabilitiesForPolling(int i, long j, long j2, long j3, boolean z) {
        return this.mCapabilityStorage.getCapabilitiesForPolling(i, j, j2, j3, z);
    }

    private Capabilities hasCapabilitiesCache(ImsUri imsUri) {
        return this.mCapabilitiesList.get(imsUri);
    }

    public void clear() {
        this.mCapabilitiesList.evictAll();
        resetCapabilityStorage();
    }

    public ConcurrentHashMap<ImsUri, Capabilities> getUpdatedUriList() {
        ConcurrentHashMap<ImsUri, Capabilities> concurrentHashMap = new ConcurrentHashMap<>();
        synchronized (this.mUriListToUpdate) {
            concurrentHashMap.putAll(this.mUriListToUpdate);
            this.mUriListToUpdate.clear();
        }
        return concurrentHashMap;
    }

    public List<ImsUri> getTrashedUriList() {
        List<ImsUri> list;
        synchronized (this.mUriListToDelete) {
            list = (List) this.mUriListToDelete.clone();
            this.mUriListToDelete.clear();
        }
        return list;
    }

    public String toString() {
        return "CapabilitiesCache: " + this.mCapabilitiesList.toString();
    }

    public void dump() {
        IMSLog.dump(LOG_TAG, "Dump of " + getClass().getSimpleName() + ":");
        IMSLog.increaseIndent(LOG_TAG);
        IMSLog.dump(LOG_TAG, toString() + ", sizeInUse=" + this.mCapabilitiesList.size());
        if (Extensions.Build.IS_DEBUGGABLE) {
            Iterator<Capabilities> it = this.mCapabilitiesList.snapshot().values().iterator();
            while (it.hasNext()) {
                IMSLog.dump(LOG_TAG, it.next().toString());
            }
        }
        IMSLog.decreaseIndent(LOG_TAG);
    }
}
