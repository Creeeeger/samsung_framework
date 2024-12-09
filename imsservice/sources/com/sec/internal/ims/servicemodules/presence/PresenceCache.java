package com.sec.internal.ims.servicemodules.presence;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.LruCache;
import com.sec.ims.presence.PresenceInfo;
import com.sec.ims.util.ImsUri;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class PresenceCache {
    private static final String LOG_TAG = "PresenceCache";
    private static final int MAX_CACHE_SIZE = 200;
    private static final int PERSIST_MAX_SIZE = 100;
    private static final int PERSIST_TIMEOUT = 2000;
    private Context mContext;
    private int mPhoneId;
    private Handler mPresenceStorageHandler;
    private final LruCache<ImsUri, PresenceInfo> mPresenceInfoList = new LruCache<>(200);
    private ArrayList<ImsUri> mUriListToUpdate = new ArrayList<>();
    private ArrayList<ImsUri> mUriListToDelete = new ArrayList<>();
    private PresenceStorage mPresenceStorage = null;
    private HandlerThread mThread = new HandlerThread("PresenceStorage", 10);
    private boolean mIsPersistPosted = false;
    private boolean mPersistTimeout = false;

    public PresenceCache(Context context, int i) {
        this.mContext = context;
        this.mPhoneId = i;
        initPresenceStorage();
    }

    private void initPresenceStorage() {
        this.mThread.start();
        this.mPresenceStorageHandler = new Handler(this.mThread.getLooper());
        this.mPresenceStorage = new PresenceStorage(this.mContext, this, this.mPhoneId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resetPresenceStorage$0() {
        this.mPresenceStorage.reset();
    }

    private void resetPresenceStorage() {
        this.mPresenceStorageHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.presence.PresenceCache$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                PresenceCache.this.lambda$resetPresenceStorage$0();
            }
        });
    }

    private void tryPersist(final boolean z) {
        this.mPresenceStorageHandler.post(new Runnable() { // from class: com.sec.internal.ims.servicemodules.presence.PresenceCache$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                PresenceCache.this.lambda$tryPersist$2(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$tryPersist$2(boolean z) {
        if (z || this.mPersistTimeout || this.mUriListToUpdate.size() >= 100) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "tryPersist: force = " + z + ", timeout = " + this.mPersistTimeout);
            this.mIsPersistPosted = false;
            this.mPersistTimeout = false;
            this.mPresenceStorage.persist();
            return;
        }
        if (this.mIsPersistPosted) {
            return;
        }
        this.mIsPersistPosted = true;
        new Handler().postDelayed(new Runnable() { // from class: com.sec.internal.ims.servicemodules.presence.PresenceCache$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                PresenceCache.this.lambda$tryPersist$1();
            }
        }, UtStateMachine.HTTP_READ_TIMEOUT_GCF);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$tryPersist$1() {
        if (this.mUriListToUpdate.size() > 0) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "tryPersist: try remainder " + this.mUriListToUpdate.size());
            this.mPersistTimeout = true;
            tryPersist(false);
        }
    }

    public void add(PresenceInfo presenceInfo) {
        if (presenceInfo == null || presenceInfo.getTelUri() == null) {
            return;
        }
        this.mPresenceInfoList.put(ImsUri.parse(presenceInfo.getTelUri()), presenceInfo);
    }

    public void remove(List<ImsUri> list) {
        if (list == null) {
            return;
        }
        IMSLog.s(LOG_TAG, "remove: " + list);
        if (list.size() > 0) {
            Iterator<ImsUri> it = list.iterator();
            while (it.hasNext()) {
                this.mPresenceInfoList.remove(it.next());
            }
            this.mUriListToDelete.addAll(list);
            tryPersist(true);
        }
    }

    public void update(ImsUri imsUri, PresenceInfo presenceInfo) {
        this.mPresenceInfoList.put(imsUri, presenceInfo);
        String telUri = presenceInfo.getTelUri();
        if (telUri != null && telUri.equals(presenceInfo.getUri())) {
            IMSLog.d(LOG_TAG, "update: uri is the same with telUri. skip");
        } else {
            this.mUriListToUpdate.add(imsUri);
            tryPersist(false);
        }
    }

    public PresenceInfo get(ImsUri imsUri) {
        if (imsUri == null) {
            return null;
        }
        PresenceInfo presenceInfo = this.mPresenceInfoList.get(imsUri);
        if (presenceInfo == null) {
            IMSLog.s(LOG_TAG, this.mPhoneId, "get: not found. presenceInfo from db");
            presenceInfo = this.mPresenceStorage.get(imsUri);
            if (presenceInfo != null) {
                this.mPresenceInfoList.put(imsUri, presenceInfo);
            }
        }
        return presenceInfo;
    }

    public Map<ImsUri, PresenceInfo> get(Set<ImsUri> set) {
        if (set == null) {
            return null;
        }
        return this.mPresenceStorage.get(set);
    }

    public void clear() {
        this.mPresenceInfoList.evictAll();
        resetPresenceStorage();
    }

    public String toString() {
        return "PresenceCache: " + this.mPresenceInfoList.toString();
    }

    public List<ImsUri> getUpdatedUriList() {
        ArrayList arrayList = new ArrayList(this.mUriListToUpdate);
        this.mUriListToUpdate.clear();
        return arrayList;
    }

    public List<ImsUri> getTrashedUriList() {
        ArrayList arrayList = new ArrayList(this.mUriListToDelete);
        this.mUriListToDelete.clear();
        return arrayList;
    }
}
