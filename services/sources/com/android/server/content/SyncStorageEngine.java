package com.android.server.content;

import android.accounts.Account;
import android.accounts.AccountAndUser;
import android.accounts.AccountManager;
import android.app.backup.BackupManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.ISyncStatusObserver;
import android.content.PeriodicSync;
import android.content.SyncInfo;
import android.content.SyncRequest;
import android.content.SyncStatusInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Process;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.EventLog;
import android.util.Log;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.util.Xml;
import android.util.proto.ProtoInputStream;
import android.util.proto.ProtoOutputStream;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.IntPair;
import com.android.modules.utils.TypedXmlPullParser;
import com.android.modules.utils.TypedXmlSerializer;
import com.android.server.LocalServices;
import com.android.server.backup.BackupManagerConstants;
import com.android.server.content.SyncManager;
import com.samsung.android.knox.SemPersonaManager;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class SyncStorageEngine {
    static final long MILLIS_IN_4WEEKS = 2419200000L;
    public static final String[] SOURCES = {"OTHER", "LOCAL", "POLL", "USER", "PERIODIC", "FEED"};
    public static PeriodicSyncAddedListener mPeriodicSyncAddedListener;
    public static HashMap sAuthorityRenames;
    public static volatile SyncStorageEngine sSyncStorageEngine;
    public final AtomicFile mAccountInfoFile;
    public final HashMap mAccounts;
    final SparseArray mAuthorities;
    public OnAuthorityRemovedListener mAuthorityRemovedListener;
    public final Calendar mCal;
    public final RemoteCallbackList mChangeListeners;
    public final Context mContext;
    public final SparseArray mCurrentSyncs;
    final DayStats[] mDayStats;
    public boolean mDefaultMasterSyncAutomatically;
    public boolean mGrantSyncAdaptersAccountAccess;
    public final MyHandler mHandler;
    public volatile boolean mIsClockValid;
    public volatile boolean mIsJobAttributionFixed;
    public volatile boolean mIsJobNamespaceMigrated;
    public final SyncLogger mLogger;
    public SparseArray mMasterSyncAutomatically;
    public int mNextAuthorityId;
    public int mNextHistoryId;
    public final PackageManagerInternal mPackageManagerInternal;
    public final ArrayMap mServices;
    public final AtomicFile mStatisticsFile;
    public final AtomicFile mStatusFile;
    public File mSyncDir;
    public final ArrayList mSyncHistory;
    public int mSyncRandomOffset;
    public OnSyncRequestListener mSyncRequestListener;
    final SparseArray mSyncStatus;
    public int mYear;
    public int mYearInDays;

    /* loaded from: classes.dex */
    public interface OnAuthorityRemovedListener {
        void onAuthorityRemoved(EndPoint endPoint);
    }

    /* loaded from: classes.dex */
    public interface OnSyncRequestListener {
        void onSyncRequest(EndPoint endPoint, int i, Bundle bundle, int i2, int i3, int i4);
    }

    /* loaded from: classes.dex */
    public interface PeriodicSyncAddedListener {
        void onPeriodicSyncAdded(EndPoint endPoint, Bundle bundle, long j, long j2);
    }

    /* loaded from: classes.dex */
    public class SyncHistoryItem {
        public int authorityId;
        public long downstreamActivity;
        public long elapsedTime;
        public int event;
        public long eventTime;
        public Bundle extras;
        public int historyId;
        public boolean initialization;
        public String mesg;
        public int reason;
        public int source;
        public int syncExemptionFlag;
        public long upstreamActivity;
    }

    public static long calculateDefaultFlexTime(long j) {
        if (j < 5) {
            return 0L;
        }
        if (j < 86400) {
            return (long) (j * 0.04d);
        }
        return 3456L;
    }

    static {
        HashMap hashMap = new HashMap();
        sAuthorityRenames = hashMap;
        hashMap.put("contacts", "com.android.contacts");
        sAuthorityRenames.put("calendar", "com.android.calendar");
        sSyncStorageEngine = null;
    }

    /* loaded from: classes.dex */
    public class AccountInfo {
        public final AccountAndUser accountAndUser;
        public final HashMap authorities = new HashMap();

        public AccountInfo(AccountAndUser accountAndUser) {
            this.accountAndUser = accountAndUser;
        }
    }

    /* loaded from: classes.dex */
    public class EndPoint {
        public static final EndPoint USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL = new EndPoint(null, null, -1);
        public final Account account;
        public final String provider;
        public final int userId;

        public EndPoint(Account account, String str, int i) {
            this.account = account;
            this.provider = str;
            this.userId = i;
        }

        public boolean matchesSpec(EndPoint endPoint) {
            int i = this.userId;
            int i2 = endPoint.userId;
            if (i != i2 && i != -1 && i2 != -1) {
                return false;
            }
            Account account = endPoint.account;
            boolean equals = account == null ? true : this.account.equals(account);
            String str = endPoint.provider;
            return equals && (str == null ? true : this.provider.equals(str));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            Account account = this.account;
            sb.append(account == null ? "ALL ACCS" : account.name);
            sb.append("/");
            String str = this.provider;
            if (str == null) {
                str = "ALL PDRS";
            }
            sb.append(str);
            sb.append(":u" + this.userId);
            return sb.toString();
        }

        public String toSafeString() {
            StringBuilder sb = new StringBuilder();
            Account account = this.account;
            sb.append(account == null ? "ALL ACCS" : SyncLogger.logSafe(account));
            sb.append("/");
            String str = this.provider;
            if (str == null) {
                str = "ALL PDRS";
            }
            sb.append(str);
            sb.append(":u" + this.userId);
            return sb.toString();
        }
    }

    /* loaded from: classes.dex */
    public class AuthorityInfo {
        public long backoffDelay;
        public long backoffTime;
        public long delayUntil;
        public boolean enabled;
        public final int ident;
        public final ArrayList periodicSyncs;
        public int syncable;
        public final EndPoint target;

        public AuthorityInfo(AuthorityInfo authorityInfo) {
            this.target = authorityInfo.target;
            this.ident = authorityInfo.ident;
            this.enabled = authorityInfo.enabled;
            this.syncable = authorityInfo.syncable;
            this.backoffTime = authorityInfo.backoffTime;
            this.backoffDelay = authorityInfo.backoffDelay;
            this.delayUntil = authorityInfo.delayUntil;
            this.periodicSyncs = new ArrayList();
            Iterator it = authorityInfo.periodicSyncs.iterator();
            while (it.hasNext()) {
                this.periodicSyncs.add(new PeriodicSync((PeriodicSync) it.next()));
            }
        }

        public AuthorityInfo(EndPoint endPoint, int i) {
            this.target = endPoint;
            this.ident = i;
            this.enabled = false;
            this.periodicSyncs = new ArrayList();
            defaultInitialisation();
        }

        public final void defaultInitialisation() {
            this.syncable = -1;
            this.backoffTime = -1L;
            this.backoffDelay = -1L;
            if (SyncStorageEngine.mPeriodicSyncAddedListener != null) {
                SyncStorageEngine.mPeriodicSyncAddedListener.onPeriodicSyncAdded(this.target, new Bundle(), 86400L, SyncStorageEngine.calculateDefaultFlexTime(86400L));
            }
        }

        public String toString() {
            return this.target + ", enabled=" + this.enabled + ", syncable=" + this.syncable + ", backoff=" + this.backoffTime + ", delay=" + this.delayUntil;
        }
    }

    /* loaded from: classes.dex */
    public class DayStats {
        public final int day;
        public int failureCount;
        public long failureTime;
        public int successCount;
        public long successTime;

        public DayStats(int i) {
            this.day = i;
        }
    }

    /* loaded from: classes.dex */
    public class AccountAuthorityValidator {
        public final AccountManager mAccountManager;
        public final PackageManager mPackageManager;
        public final SparseArray mAccountsCache = new SparseArray();
        public final SparseArray mProvidersPerUserCache = new SparseArray();

        public AccountAuthorityValidator(Context context) {
            this.mAccountManager = (AccountManager) context.getSystemService(AccountManager.class);
            this.mPackageManager = context.getPackageManager();
        }

        public boolean isAccountValid(Account account, int i) {
            Account[] accountArr = (Account[]) this.mAccountsCache.get(i);
            if (accountArr == null) {
                accountArr = this.mAccountManager.getAccountsAsUser(i);
                this.mAccountsCache.put(i, accountArr);
            }
            return ArrayUtils.contains(accountArr, account);
        }

        public boolean isAuthorityValid(String str, int i) {
            ArrayMap arrayMap = (ArrayMap) this.mProvidersPerUserCache.get(i);
            if (arrayMap == null) {
                arrayMap = new ArrayMap();
                this.mProvidersPerUserCache.put(i, arrayMap);
            }
            if (!arrayMap.containsKey(str)) {
                arrayMap.put(str, Boolean.valueOf(this.mPackageManager.resolveContentProviderAsUser(str, 786432, i) != null));
            }
            return ((Boolean) arrayMap.get(str)).booleanValue();
        }
    }

    public SyncStorageEngine(Context context, File file, Looper looper) {
        SparseArray sparseArray = new SparseArray();
        this.mAuthorities = sparseArray;
        this.mAccounts = new HashMap();
        this.mCurrentSyncs = new SparseArray();
        this.mSyncStatus = new SparseArray();
        this.mSyncHistory = new ArrayList();
        this.mChangeListeners = new RemoteCallbackList();
        this.mServices = new ArrayMap();
        this.mNextAuthorityId = 0;
        this.mDayStats = new DayStats[28];
        this.mNextHistoryId = 0;
        this.mMasterSyncAutomatically = new SparseArray();
        this.mHandler = new MyHandler(looper);
        this.mContext = context;
        sSyncStorageEngine = this;
        SyncLogger syncLogger = SyncLogger.getInstance();
        this.mLogger = syncLogger;
        this.mCal = Calendar.getInstance(TimeZone.getTimeZone("GMT+0"));
        this.mDefaultMasterSyncAutomatically = context.getResources().getBoolean(17891878);
        this.mPackageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        File file2 = new File(new File(file, "system"), "sync");
        this.mSyncDir = file2;
        file2.mkdirs();
        maybeDeleteLegacyPendingInfoLocked(this.mSyncDir);
        this.mAccountInfoFile = new AtomicFile(new File(this.mSyncDir, "accounts.xml"), "sync-accounts");
        this.mStatusFile = new AtomicFile(new File(this.mSyncDir, "status"), "sync-status");
        this.mStatisticsFile = new AtomicFile(new File(this.mSyncDir, "stats"), "sync-stats");
        readAccountInfoLocked();
        readStatusLocked();
        readStatisticsLocked();
        if (syncLogger.enabled()) {
            int size = sparseArray.size();
            syncLogger.log("Loaded ", Integer.valueOf(size), " items");
            for (int i = 0; i < size; i++) {
                this.mLogger.log(this.mAuthorities.valueAt(i));
            }
        }
    }

    public static void init(Context context, Looper looper) {
        if (sSyncStorageEngine != null) {
            return;
        }
        sSyncStorageEngine = new SyncStorageEngine(context, Environment.getDataDirectory(), looper);
    }

    public static SyncStorageEngine getSingleton() {
        if (sSyncStorageEngine == null) {
            throw new IllegalStateException("not initialized");
        }
        return sSyncStorageEngine;
    }

    public void setOnSyncRequestListener(OnSyncRequestListener onSyncRequestListener) {
        if (this.mSyncRequestListener == null) {
            this.mSyncRequestListener = onSyncRequestListener;
        }
    }

    public void setOnAuthorityRemovedListener(OnAuthorityRemovedListener onAuthorityRemovedListener) {
        if (this.mAuthorityRemovedListener == null) {
            this.mAuthorityRemovedListener = onAuthorityRemovedListener;
        }
    }

    public void setPeriodicSyncAddedListener(PeriodicSyncAddedListener periodicSyncAddedListener) {
        if (mPeriodicSyncAddedListener == null) {
            mPeriodicSyncAddedListener = periodicSyncAddedListener;
        }
    }

    /* loaded from: classes.dex */
    public class MyHandler extends Handler {
        public MyHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                synchronized (SyncStorageEngine.this.mAuthorities) {
                    SyncStorageEngine.this.writeStatusLocked();
                }
            } else if (i == 2) {
                synchronized (SyncStorageEngine.this.mAuthorities) {
                    SyncStorageEngine.this.writeStatisticsLocked();
                }
            }
        }
    }

    public void addStatusChangeListener(int i, int i2, ISyncStatusObserver iSyncStatusObserver) {
        synchronized (this.mAuthorities) {
            this.mChangeListeners.register(iSyncStatusObserver, Long.valueOf(IntPair.of(i2, i)));
        }
    }

    public void removeStatusChangeListener(ISyncStatusObserver iSyncStatusObserver) {
        synchronized (this.mAuthorities) {
            this.mChangeListeners.unregister(iSyncStatusObserver);
        }
    }

    public void reportChange(int i, EndPoint endPoint) {
        String str;
        Account account = endPoint.account;
        reportChange(i, (account == null || (str = endPoint.provider) == null) ? null : ContentResolver.getSyncAdapterPackageAsUser(account.type, str, endPoint.userId), endPoint.userId);
    }

    public void reportChange(int i, String str, int i2) {
        ArrayList arrayList;
        synchronized (this.mAuthorities) {
            int beginBroadcast = this.mChangeListeners.beginBroadcast();
            arrayList = null;
            while (beginBroadcast > 0) {
                beginBroadcast--;
                long longValue = ((Long) this.mChangeListeners.getBroadcastCookie(beginBroadcast)).longValue();
                int first = IntPair.first(longValue);
                int userId = UserHandle.getUserId(first);
                if ((IntPair.second(longValue) & i) != 0 && i2 == userId && (str == null || !this.mPackageManagerInternal.filterAppAccess(str, first, i2))) {
                    if (arrayList == null) {
                        arrayList = new ArrayList(beginBroadcast);
                    }
                    arrayList.add(this.mChangeListeners.getBroadcastItem(beginBroadcast));
                }
            }
            this.mChangeListeners.finishBroadcast();
        }
        if (Log.isLoggable("SyncManager", 2)) {
            Slog.v("SyncManager", "reportChange " + i + " to: " + arrayList);
        }
        if (arrayList != null) {
            int size = arrayList.size();
            while (size > 0) {
                size--;
                try {
                    ((ISyncStatusObserver) arrayList.get(size)).onStatusChanged(i);
                } catch (RemoteException unused) {
                }
            }
        }
    }

    public boolean getSyncAutomatically(Account account, int i, String str) {
        synchronized (this.mAuthorities) {
            boolean z = true;
            if (account != null) {
                AuthorityInfo authorityLocked = getAuthorityLocked(new EndPoint(account, str, i), "getSyncAutomatically");
                if (authorityLocked == null || !authorityLocked.enabled) {
                    z = false;
                }
                return z;
            }
            int size = this.mAuthorities.size();
            while (size > 0) {
                size--;
                AuthorityInfo authorityInfo = (AuthorityInfo) this.mAuthorities.valueAt(size);
                if (authorityInfo.target.matchesSpec(new EndPoint(account, str, i)) && authorityInfo.enabled) {
                    return true;
                }
            }
            return false;
        }
    }

    public void setSyncAutomatically(Account account, int i, String str, boolean z, int i2, int i3, int i4) {
        if (Log.isLoggable("SyncManager", 2)) {
            Slog.d("SyncManager", "setSyncAutomatically:  provider " + str + ", user " + i + " -> " + z);
        }
        this.mLogger.log("Set sync auto account=", account, " user=", Integer.valueOf(i), " authority=", str, " value=", Boolean.toString(z), " cuid=", Integer.valueOf(i3), " cpid=", Integer.valueOf(i4));
        synchronized (this.mAuthorities) {
            AuthorityInfo orCreateAuthorityLocked = getOrCreateAuthorityLocked(new EndPoint(account, str, i), -1, false);
            if (orCreateAuthorityLocked.enabled == z) {
                if (Log.isLoggable("SyncManager", 2)) {
                    Slog.d("SyncManager", "setSyncAutomatically: already set to " + z + ", doing nothing");
                }
                return;
            }
            if (z && orCreateAuthorityLocked.syncable == 2) {
                orCreateAuthorityLocked.syncable = -1;
            }
            orCreateAuthorityLocked.enabled = z;
            writeAccountInfoLocked();
            if (z) {
                requestSync(account, i, -6, str, new Bundle(), i2, i3, i4);
            }
            reportChange(1, orCreateAuthorityLocked.target);
            queueBackup();
        }
    }

    public int getIsSyncable(Account account, int i, String str) {
        synchronized (this.mAuthorities) {
            if (account != null) {
                AuthorityInfo authorityLocked = getAuthorityLocked(new EndPoint(account, str, i), "get authority syncable");
                if (authorityLocked == null) {
                    return -1;
                }
                return authorityLocked.syncable;
            }
            int size = this.mAuthorities.size();
            while (size > 0) {
                size--;
                AuthorityInfo authorityInfo = (AuthorityInfo) this.mAuthorities.valueAt(size);
                EndPoint endPoint = authorityInfo.target;
                if (endPoint != null && endPoint.provider.equals(str)) {
                    return authorityInfo.syncable;
                }
            }
            return -1;
        }
    }

    public void setIsSyncable(Account account, int i, String str, int i2, int i3, int i4) {
        setSyncableStateForEndPoint(new EndPoint(account, str, i), i2, i3, i4);
    }

    public final void setSyncableStateForEndPoint(EndPoint endPoint, int i, int i2, int i3) {
        this.mLogger.log("Set syncable ", endPoint, " value=", Integer.toString(i), " cuid=", Integer.valueOf(i2), " cpid=", Integer.valueOf(i3));
        synchronized (this.mAuthorities) {
            AuthorityInfo orCreateAuthorityLocked = getOrCreateAuthorityLocked(endPoint, -1, false);
            if (i < -1) {
                i = -1;
            }
            if (Log.isLoggable("SyncManager", 2)) {
                Slog.d("SyncManager", "setIsSyncable: " + orCreateAuthorityLocked.toString() + " -> " + i);
            }
            if (orCreateAuthorityLocked.syncable == i) {
                if (Log.isLoggable("SyncManager", 2)) {
                    Slog.d("SyncManager", "setIsSyncable: already set to " + i + ", doing nothing");
                }
                return;
            }
            orCreateAuthorityLocked.syncable = i;
            writeAccountInfoLocked();
            if (i == 1) {
                requestSync(orCreateAuthorityLocked, -5, new Bundle(), 0, i2, i3);
            }
            reportChange(1, endPoint);
        }
    }

    public void setJobNamespaceMigrated(boolean z) {
        if (this.mIsJobNamespaceMigrated == z) {
            return;
        }
        this.mIsJobNamespaceMigrated = z;
        this.mHandler.sendEmptyMessageDelayed(1, 600000L);
    }

    public boolean isJobNamespaceMigrated() {
        return this.mIsJobNamespaceMigrated;
    }

    public void setJobAttributionFixed(boolean z) {
        if (this.mIsJobAttributionFixed == z) {
            return;
        }
        this.mIsJobAttributionFixed = z;
        this.mHandler.sendEmptyMessageDelayed(1, 600000L);
    }

    public boolean isJobAttributionFixed() {
        return this.mIsJobAttributionFixed;
    }

    public Pair getBackoff(EndPoint endPoint) {
        synchronized (this.mAuthorities) {
            AuthorityInfo authorityLocked = getAuthorityLocked(endPoint, "getBackoff");
            if (authorityLocked == null) {
                return null;
            }
            return Pair.create(Long.valueOf(authorityLocked.backoffTime), Long.valueOf(authorityLocked.backoffDelay));
        }
    }

    public void setBackoff(EndPoint endPoint, long j, long j2) {
        boolean backoffLocked;
        if (Log.isLoggable("SyncManager", 2)) {
            Slog.v("SyncManager", "setBackoff: " + endPoint + " -> nextSyncTime " + j + ", nextDelay " + j2);
        }
        synchronized (this.mAuthorities) {
            Account account = endPoint.account;
            if (account != null && endPoint.provider != null) {
                AuthorityInfo orCreateAuthorityLocked = getOrCreateAuthorityLocked(endPoint, -1, true);
                if (orCreateAuthorityLocked.backoffTime == j && orCreateAuthorityLocked.backoffDelay == j2) {
                    backoffLocked = false;
                } else {
                    orCreateAuthorityLocked.backoffTime = j;
                    orCreateAuthorityLocked.backoffDelay = j2;
                    backoffLocked = true;
                }
            }
            backoffLocked = setBackoffLocked(account, endPoint.userId, endPoint.provider, j, j2);
        }
        if (backoffLocked) {
            reportChange(1, endPoint);
        }
    }

    public final boolean setBackoffLocked(Account account, int i, String str, long j, long j2) {
        boolean z = false;
        for (AccountInfo accountInfo : this.mAccounts.values()) {
            if (account == null || account.equals(accountInfo.accountAndUser.account) || i == accountInfo.accountAndUser.userId) {
                for (AuthorityInfo authorityInfo : accountInfo.authorities.values()) {
                    if (str == null || str.equals(authorityInfo.target.provider)) {
                        if (authorityInfo.backoffTime != j || authorityInfo.backoffDelay != j2) {
                            authorityInfo.backoffTime = j;
                            authorityInfo.backoffDelay = j2;
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    public void clearAllBackoffsLocked() {
        ArraySet arraySet = new ArraySet();
        synchronized (this.mAuthorities) {
            for (AccountInfo accountInfo : this.mAccounts.values()) {
                for (AuthorityInfo authorityInfo : accountInfo.authorities.values()) {
                    if (authorityInfo.backoffTime != -1 || authorityInfo.backoffDelay != -1) {
                        if (Log.isLoggable("SyncManager", 2)) {
                            Slog.v("SyncManager", "clearAllBackoffsLocked: authority:" + authorityInfo.target + " account:" + accountInfo.accountAndUser.account.name + " user:" + accountInfo.accountAndUser.userId + " backoffTime was: " + authorityInfo.backoffTime + " backoffDelay was: " + authorityInfo.backoffDelay);
                        }
                        authorityInfo.backoffTime = -1L;
                        authorityInfo.backoffDelay = -1L;
                        arraySet.add(Integer.valueOf(accountInfo.accountAndUser.userId));
                    }
                }
            }
        }
        for (int size = arraySet.size() - 1; size > 0; size--) {
            reportChange(1, null, ((Integer) arraySet.valueAt(size)).intValue());
        }
    }

    public long getDelayUntilTime(EndPoint endPoint) {
        synchronized (this.mAuthorities) {
            AuthorityInfo authorityLocked = getAuthorityLocked(endPoint, "getDelayUntil");
            if (authorityLocked == null) {
                return 0L;
            }
            return authorityLocked.delayUntil;
        }
    }

    public void setDelayUntilTime(EndPoint endPoint, long j) {
        if (Log.isLoggable("SyncManager", 2)) {
            Slog.v("SyncManager", "setDelayUntil: " + endPoint + " -> delayUntil " + j);
        }
        synchronized (this.mAuthorities) {
            AuthorityInfo orCreateAuthorityLocked = getOrCreateAuthorityLocked(endPoint, -1, true);
            if (orCreateAuthorityLocked.delayUntil == j) {
                return;
            }
            orCreateAuthorityLocked.delayUntil = j;
            reportChange(1, endPoint);
        }
    }

    public void setMasterSyncAutomatically(boolean z, int i, int i2, int i3, int i4) {
        this.mLogger.log("Set master enabled=", Boolean.valueOf(z), " user=", Integer.valueOf(i), " cuid=", Integer.valueOf(i3), " cpid=", Integer.valueOf(i4));
        synchronized (this.mAuthorities) {
            Boolean bool = (Boolean) this.mMasterSyncAutomatically.get(i);
            if (bool == null || !bool.equals(Boolean.valueOf(z))) {
                this.mMasterSyncAutomatically.put(i, Boolean.valueOf(z));
                writeAccountInfoLocked();
                if (z) {
                    requestSync(null, i, -7, null, new Bundle(), i2, i3, i4);
                }
                reportChange(1, null, i);
                this.mContext.sendBroadcast(ContentResolver.ACTION_SYNC_CONN_STATUS_CHANGED);
                queueBackup();
            }
        }
    }

    public boolean getMasterSyncAutomatically(int i) {
        synchronized (this.mAuthorities) {
            Boolean bool = (Boolean) this.mMasterSyncAutomatically.get(i);
            Log.d("SyncManager", "userId - " + i + " auto - " + bool);
            if (SemPersonaManager.isSecureFolderId(i)) {
                return bool == null ? false : bool.booleanValue();
            }
            return bool == null ? this.mDefaultMasterSyncAutomatically : bool.booleanValue();
        }
    }

    public int getAuthorityCount() {
        int size;
        synchronized (this.mAuthorities) {
            size = this.mAuthorities.size();
        }
        return size;
    }

    public AuthorityInfo getAuthority(int i) {
        AuthorityInfo authorityInfo;
        synchronized (this.mAuthorities) {
            authorityInfo = (AuthorityInfo) this.mAuthorities.get(i);
        }
        return authorityInfo;
    }

    public boolean isSyncActive(EndPoint endPoint) {
        synchronized (this.mAuthorities) {
            Iterator it = getCurrentSyncs(endPoint.userId).iterator();
            while (it.hasNext()) {
                AuthorityInfo authority = getAuthority(((SyncInfo) it.next()).authorityId);
                if (authority != null && authority.target.matchesSpec(endPoint)) {
                    return true;
                }
            }
            return false;
        }
    }

    public void markPending(EndPoint endPoint, boolean z) {
        synchronized (this.mAuthorities) {
            AuthorityInfo orCreateAuthorityLocked = getOrCreateAuthorityLocked(endPoint, -1, true);
            if (orCreateAuthorityLocked == null) {
                return;
            }
            getOrCreateSyncStatusLocked(orCreateAuthorityLocked.ident).pending = z;
            reportChange(2, endPoint);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0083, code lost:
    
        if (r9 > 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0085, code lost:
    
        if (r9 <= 0) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0087, code lost:
    
        r9 = r9 - 1;
        r10 = r1.keyAt(r9);
        r2 = (com.android.server.content.SyncStorageEngine.AuthorityInfo) r1.valueAt(r9);
        r3 = r8.mAuthorityRemovedListener;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0095, code lost:
    
        if (r3 == null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0097, code lost:
    
        r3.onAuthorityRemoved(r2.target);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x009c, code lost:
    
        r8.mAuthorities.remove(r10);
        r2 = r8.mSyncStatus.size();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a7, code lost:
    
        if (r2 <= 0) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a9, code lost:
    
        r2 = r2 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b1, code lost:
    
        if (r8.mSyncStatus.keyAt(r2) != r10) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b3, code lost:
    
        r3 = r8.mSyncStatus;
        r3.remove(r3.keyAt(r2));
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00bd, code lost:
    
        r2 = r8.mSyncHistory.size();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00c3, code lost:
    
        if (r2 <= 0) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00c5, code lost:
    
        r2 = r2 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00d1, code lost:
    
        if (((com.android.server.content.SyncStorageEngine.SyncHistoryItem) r8.mSyncHistory.get(r2)).authorityId != r10) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00d3, code lost:
    
        r8.mSyncHistory.remove(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00d9, code lost:
    
        writeAccountInfoLocked();
        writeStatusLocked();
        writeStatisticsLocked();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void removeStaleAccounts(android.accounts.Account[] r9, int r10) {
        /*
            r8 = this;
            android.util.SparseArray r0 = r8.mAuthorities
            monitor-enter(r0)
            java.lang.String r1 = "SyncManager"
            r2 = 2
            boolean r1 = android.util.Log.isLoggable(r1, r2)     // Catch: java.lang.Throwable -> Le4
            if (r1 == 0) goto L13
            java.lang.String r1 = "SyncManager"
            java.lang.String r3 = "Updating for new accounts..."
            android.util.Slog.v(r1, r3)     // Catch: java.lang.Throwable -> Le4
        L13:
            android.util.SparseArray r1 = new android.util.SparseArray     // Catch: java.lang.Throwable -> Le4
            r1.<init>()     // Catch: java.lang.Throwable -> Le4
            java.util.HashMap r3 = r8.mAccounts     // Catch: java.lang.Throwable -> Le4
            java.util.Collection r3 = r3.values()     // Catch: java.lang.Throwable -> Le4
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Throwable -> Le4
        L22:
            boolean r4 = r3.hasNext()     // Catch: java.lang.Throwable -> Le4
            if (r4 == 0) goto L7f
            java.lang.Object r4 = r3.next()     // Catch: java.lang.Throwable -> Le4
            com.android.server.content.SyncStorageEngine$AccountInfo r4 = (com.android.server.content.SyncStorageEngine.AccountInfo) r4     // Catch: java.lang.Throwable -> Le4
            android.accounts.AccountAndUser r5 = r4.accountAndUser     // Catch: java.lang.Throwable -> Le4
            int r6 = r5.userId     // Catch: java.lang.Throwable -> Le4
            if (r6 == r10) goto L35
            goto L22
        L35:
            if (r9 == 0) goto L3f
            android.accounts.Account r5 = r5.account     // Catch: java.lang.Throwable -> Le4
            boolean r5 = com.android.internal.util.ArrayUtils.contains(r9, r5)     // Catch: java.lang.Throwable -> Le4
            if (r5 != 0) goto L22
        L3f:
            java.lang.String r5 = "SyncManager"
            boolean r5 = android.util.Log.isLoggable(r5, r2)     // Catch: java.lang.Throwable -> Le4
            if (r5 == 0) goto L5f
            java.lang.String r5 = "SyncManager"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Le4
            r6.<init>()     // Catch: java.lang.Throwable -> Le4
            java.lang.String r7 = "Account removed: "
            r6.append(r7)     // Catch: java.lang.Throwable -> Le4
            android.accounts.AccountAndUser r7 = r4.accountAndUser     // Catch: java.lang.Throwable -> Le4
            r6.append(r7)     // Catch: java.lang.Throwable -> Le4
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> Le4
            android.util.Slog.v(r5, r6)     // Catch: java.lang.Throwable -> Le4
        L5f:
            java.util.HashMap r4 = r4.authorities     // Catch: java.lang.Throwable -> Le4
            java.util.Collection r4 = r4.values()     // Catch: java.lang.Throwable -> Le4
            java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.Throwable -> Le4
        L69:
            boolean r5 = r4.hasNext()     // Catch: java.lang.Throwable -> Le4
            if (r5 == 0) goto L7b
            java.lang.Object r5 = r4.next()     // Catch: java.lang.Throwable -> Le4
            com.android.server.content.SyncStorageEngine$AuthorityInfo r5 = (com.android.server.content.SyncStorageEngine.AuthorityInfo) r5     // Catch: java.lang.Throwable -> Le4
            int r6 = r5.ident     // Catch: java.lang.Throwable -> Le4
            r1.put(r6, r5)     // Catch: java.lang.Throwable -> Le4
            goto L69
        L7b:
            r3.remove()     // Catch: java.lang.Throwable -> Le4
            goto L22
        L7f:
            int r9 = r1.size()     // Catch: java.lang.Throwable -> Le4
            if (r9 <= 0) goto Le2
        L85:
            if (r9 <= 0) goto Ld9
            int r9 = r9 + (-1)
            int r10 = r1.keyAt(r9)     // Catch: java.lang.Throwable -> Le4
            java.lang.Object r2 = r1.valueAt(r9)     // Catch: java.lang.Throwable -> Le4
            com.android.server.content.SyncStorageEngine$AuthorityInfo r2 = (com.android.server.content.SyncStorageEngine.AuthorityInfo) r2     // Catch: java.lang.Throwable -> Le4
            com.android.server.content.SyncStorageEngine$OnAuthorityRemovedListener r3 = r8.mAuthorityRemovedListener     // Catch: java.lang.Throwable -> Le4
            if (r3 == 0) goto L9c
            com.android.server.content.SyncStorageEngine$EndPoint r2 = r2.target     // Catch: java.lang.Throwable -> Le4
            r3.onAuthorityRemoved(r2)     // Catch: java.lang.Throwable -> Le4
        L9c:
            android.util.SparseArray r2 = r8.mAuthorities     // Catch: java.lang.Throwable -> Le4
            r2.remove(r10)     // Catch: java.lang.Throwable -> Le4
            android.util.SparseArray r2 = r8.mSyncStatus     // Catch: java.lang.Throwable -> Le4
            int r2 = r2.size()     // Catch: java.lang.Throwable -> Le4
        La7:
            if (r2 <= 0) goto Lbd
            int r2 = r2 + (-1)
            android.util.SparseArray r3 = r8.mSyncStatus     // Catch: java.lang.Throwable -> Le4
            int r3 = r3.keyAt(r2)     // Catch: java.lang.Throwable -> Le4
            if (r3 != r10) goto La7
            android.util.SparseArray r3 = r8.mSyncStatus     // Catch: java.lang.Throwable -> Le4
            int r4 = r3.keyAt(r2)     // Catch: java.lang.Throwable -> Le4
            r3.remove(r4)     // Catch: java.lang.Throwable -> Le4
            goto La7
        Lbd:
            java.util.ArrayList r2 = r8.mSyncHistory     // Catch: java.lang.Throwable -> Le4
            int r2 = r2.size()     // Catch: java.lang.Throwable -> Le4
        Lc3:
            if (r2 <= 0) goto L85
            int r2 = r2 + (-1)
            java.util.ArrayList r3 = r8.mSyncHistory     // Catch: java.lang.Throwable -> Le4
            java.lang.Object r3 = r3.get(r2)     // Catch: java.lang.Throwable -> Le4
            com.android.server.content.SyncStorageEngine$SyncHistoryItem r3 = (com.android.server.content.SyncStorageEngine.SyncHistoryItem) r3     // Catch: java.lang.Throwable -> Le4
            int r3 = r3.authorityId     // Catch: java.lang.Throwable -> Le4
            if (r3 != r10) goto Lc3
            java.util.ArrayList r3 = r8.mSyncHistory     // Catch: java.lang.Throwable -> Le4
            r3.remove(r2)     // Catch: java.lang.Throwable -> Le4
            goto Lc3
        Ld9:
            r8.writeAccountInfoLocked()     // Catch: java.lang.Throwable -> Le4
            r8.writeStatusLocked()     // Catch: java.lang.Throwable -> Le4
            r8.writeStatisticsLocked()     // Catch: java.lang.Throwable -> Le4
        Le2:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le4
            return
        Le4:
            r8 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le4
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.content.SyncStorageEngine.removeStaleAccounts(android.accounts.Account[], int):void");
    }

    public SyncInfo addActiveSync(SyncManager.ActiveSyncContext activeSyncContext) {
        SyncInfo syncInfo;
        synchronized (this.mAuthorities) {
            if (Log.isLoggable("SyncManager", 2)) {
                Slog.v("SyncManager", "setActiveSync: account= auth=" + activeSyncContext.mSyncOperation.target + " src=" + activeSyncContext.mSyncOperation.syncSource + " extras=" + activeSyncContext.mSyncOperation.getExtrasAsString());
            }
            AuthorityInfo orCreateAuthorityLocked = getOrCreateAuthorityLocked(activeSyncContext.mSyncOperation.target, -1, true);
            int i = orCreateAuthorityLocked.ident;
            EndPoint endPoint = orCreateAuthorityLocked.target;
            syncInfo = new SyncInfo(i, endPoint.account, endPoint.provider, activeSyncContext.mStartTime);
            getCurrentSyncs(orCreateAuthorityLocked.target.userId).add(syncInfo);
        }
        reportActiveChange(activeSyncContext.mSyncOperation.target);
        return syncInfo;
    }

    public void removeActiveSync(SyncInfo syncInfo, int i) {
        synchronized (this.mAuthorities) {
            if (Log.isLoggable("SyncManager", 2)) {
                Slog.v("SyncManager", "removeActiveSync: account=" + syncInfo.account + " user=" + i + " auth=" + syncInfo.authority);
            }
            getCurrentSyncs(i).remove(syncInfo);
        }
        reportActiveChange(new EndPoint(syncInfo.account, syncInfo.authority, i));
    }

    public void reportActiveChange(EndPoint endPoint) {
        reportChange(4, endPoint);
    }

    public long insertStartSyncEvent(SyncOperation syncOperation, long j) {
        synchronized (this.mAuthorities) {
            if (Log.isLoggable("SyncManager", 2)) {
                Slog.v("SyncManager", "insertStartSyncEvent: " + syncOperation);
            }
            AuthorityInfo authorityLocked = getAuthorityLocked(syncOperation.target, "insertStartSyncEvent");
            if (authorityLocked == null) {
                return -1L;
            }
            SyncHistoryItem syncHistoryItem = new SyncHistoryItem();
            syncHistoryItem.initialization = syncOperation.isInitialization();
            syncHistoryItem.authorityId = authorityLocked.ident;
            int i = this.mNextHistoryId;
            int i2 = i + 1;
            this.mNextHistoryId = i2;
            syncHistoryItem.historyId = i;
            if (i2 < 0) {
                this.mNextHistoryId = 0;
            }
            syncHistoryItem.eventTime = j;
            syncHistoryItem.source = syncOperation.syncSource;
            syncHistoryItem.reason = syncOperation.reason;
            syncHistoryItem.extras = syncOperation.getClonedExtras();
            syncHistoryItem.event = 0;
            syncHistoryItem.syncExemptionFlag = syncOperation.syncExemptionFlag;
            this.mSyncHistory.add(0, syncHistoryItem);
            while (this.mSyncHistory.size() > 100) {
                this.mSyncHistory.remove(r7.size() - 1);
            }
            long j2 = syncHistoryItem.historyId;
            if (Log.isLoggable("SyncManager", 2)) {
                Slog.v("SyncManager", "returning historyId " + j2);
            }
            reportChange(8, syncOperation.owningPackage, syncOperation.target.userId);
            return j2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0122 A[Catch: all -> 0x022a, TryCatch #0 {, blocks: (B:4:0x000b, B:6:0x0014, B:7:0x002b, B:9:0x0033, B:14:0x0048, B:15:0x005f, B:18:0x0061, B:29:0x00e9, B:31:0x00f3, B:33:0x0110, B:35:0x0122, B:37:0x0128, B:39:0x012f, B:40:0x017b, B:42:0x01bd, B:46:0x01c9, B:47:0x01cd, B:48:0x01d4, B:49:0x01d9, B:51:0x01ec, B:53:0x0206, B:54:0x021f, B:57:0x020a, B:59:0x0213, B:60:0x01f0, B:62:0x01f8, B:64:0x013f, B:66:0x0147, B:69:0x014e, B:70:0x016c, B:71:0x00fb, B:73:0x00ff, B:74:0x00a8, B:75:0x00b3, B:76:0x00be, B:77:0x00c9, B:78:0x00d4, B:79:0x00df), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01bd A[Catch: all -> 0x022a, TryCatch #0 {, blocks: (B:4:0x000b, B:6:0x0014, B:7:0x002b, B:9:0x0033, B:14:0x0048, B:15:0x005f, B:18:0x0061, B:29:0x00e9, B:31:0x00f3, B:33:0x0110, B:35:0x0122, B:37:0x0128, B:39:0x012f, B:40:0x017b, B:42:0x01bd, B:46:0x01c9, B:47:0x01cd, B:48:0x01d4, B:49:0x01d9, B:51:0x01ec, B:53:0x0206, B:54:0x021f, B:57:0x020a, B:59:0x0213, B:60:0x01f0, B:62:0x01f8, B:64:0x013f, B:66:0x0147, B:69:0x014e, B:70:0x016c, B:71:0x00fb, B:73:0x00ff, B:74:0x00a8, B:75:0x00b3, B:76:0x00be, B:77:0x00c9, B:78:0x00d4, B:79:0x00df), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01ec A[Catch: all -> 0x022a, TryCatch #0 {, blocks: (B:4:0x000b, B:6:0x0014, B:7:0x002b, B:9:0x0033, B:14:0x0048, B:15:0x005f, B:18:0x0061, B:29:0x00e9, B:31:0x00f3, B:33:0x0110, B:35:0x0122, B:37:0x0128, B:39:0x012f, B:40:0x017b, B:42:0x01bd, B:46:0x01c9, B:47:0x01cd, B:48:0x01d4, B:49:0x01d9, B:51:0x01ec, B:53:0x0206, B:54:0x021f, B:57:0x020a, B:59:0x0213, B:60:0x01f0, B:62:0x01f8, B:64:0x013f, B:66:0x0147, B:69:0x014e, B:70:0x016c, B:71:0x00fb, B:73:0x00ff, B:74:0x00a8, B:75:0x00b3, B:76:0x00be, B:77:0x00c9, B:78:0x00d4, B:79:0x00df), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0206 A[Catch: all -> 0x022a, TryCatch #0 {, blocks: (B:4:0x000b, B:6:0x0014, B:7:0x002b, B:9:0x0033, B:14:0x0048, B:15:0x005f, B:18:0x0061, B:29:0x00e9, B:31:0x00f3, B:33:0x0110, B:35:0x0122, B:37:0x0128, B:39:0x012f, B:40:0x017b, B:42:0x01bd, B:46:0x01c9, B:47:0x01cd, B:48:0x01d4, B:49:0x01d9, B:51:0x01ec, B:53:0x0206, B:54:0x021f, B:57:0x020a, B:59:0x0213, B:60:0x01f0, B:62:0x01f8, B:64:0x013f, B:66:0x0147, B:69:0x014e, B:70:0x016c, B:71:0x00fb, B:73:0x00ff, B:74:0x00a8, B:75:0x00b3, B:76:0x00be, B:77:0x00c9, B:78:0x00d4, B:79:0x00df), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x020a A[Catch: all -> 0x022a, TryCatch #0 {, blocks: (B:4:0x000b, B:6:0x0014, B:7:0x002b, B:9:0x0033, B:14:0x0048, B:15:0x005f, B:18:0x0061, B:29:0x00e9, B:31:0x00f3, B:33:0x0110, B:35:0x0122, B:37:0x0128, B:39:0x012f, B:40:0x017b, B:42:0x01bd, B:46:0x01c9, B:47:0x01cd, B:48:0x01d4, B:49:0x01d9, B:51:0x01ec, B:53:0x0206, B:54:0x021f, B:57:0x020a, B:59:0x0213, B:60:0x01f0, B:62:0x01f8, B:64:0x013f, B:66:0x0147, B:69:0x014e, B:70:0x016c, B:71:0x00fb, B:73:0x00ff, B:74:0x00a8, B:75:0x00b3, B:76:0x00be, B:77:0x00c9, B:78:0x00d4, B:79:0x00df), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01f0 A[Catch: all -> 0x022a, TryCatch #0 {, blocks: (B:4:0x000b, B:6:0x0014, B:7:0x002b, B:9:0x0033, B:14:0x0048, B:15:0x005f, B:18:0x0061, B:29:0x00e9, B:31:0x00f3, B:33:0x0110, B:35:0x0122, B:37:0x0128, B:39:0x012f, B:40:0x017b, B:42:0x01bd, B:46:0x01c9, B:47:0x01cd, B:48:0x01d4, B:49:0x01d9, B:51:0x01ec, B:53:0x0206, B:54:0x021f, B:57:0x020a, B:59:0x0213, B:60:0x01f0, B:62:0x01f8, B:64:0x013f, B:66:0x0147, B:69:0x014e, B:70:0x016c, B:71:0x00fb, B:73:0x00ff, B:74:0x00a8, B:75:0x00b3, B:76:0x00be, B:77:0x00c9, B:78:0x00d4, B:79:0x00df), top: B:3:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x013f A[Catch: all -> 0x022a, TryCatch #0 {, blocks: (B:4:0x000b, B:6:0x0014, B:7:0x002b, B:9:0x0033, B:14:0x0048, B:15:0x005f, B:18:0x0061, B:29:0x00e9, B:31:0x00f3, B:33:0x0110, B:35:0x0122, B:37:0x0128, B:39:0x012f, B:40:0x017b, B:42:0x01bd, B:46:0x01c9, B:47:0x01cd, B:48:0x01d4, B:49:0x01d9, B:51:0x01ec, B:53:0x0206, B:54:0x021f, B:57:0x020a, B:59:0x0213, B:60:0x01f0, B:62:0x01f8, B:64:0x013f, B:66:0x0147, B:69:0x014e, B:70:0x016c, B:71:0x00fb, B:73:0x00ff, B:74:0x00a8, B:75:0x00b3, B:76:0x00be, B:77:0x00c9, B:78:0x00d4, B:79:0x00df), top: B:3:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void stopSyncEvent(long r19, long r21, java.lang.String r23, long r24, long r26, java.lang.String r28, int r29) {
        /*
            Method dump skipped, instructions count: 557
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.content.SyncStorageEngine.stopSyncEvent(long, long, java.lang.String, long, long, java.lang.String, int):void");
    }

    public final List getCurrentSyncs(int i) {
        List currentSyncsLocked;
        synchronized (this.mAuthorities) {
            currentSyncsLocked = getCurrentSyncsLocked(i);
        }
        return currentSyncsLocked;
    }

    public List getCurrentSyncsCopy(int i, boolean z) {
        ArrayList arrayList;
        SyncInfo syncInfo;
        synchronized (this.mAuthorities) {
            List<SyncInfo> currentSyncsLocked = getCurrentSyncsLocked(i);
            arrayList = new ArrayList();
            for (SyncInfo syncInfo2 : currentSyncsLocked) {
                if (!z) {
                    syncInfo = SyncInfo.createAccountRedacted(syncInfo2.authorityId, syncInfo2.authority, syncInfo2.startTime);
                } else {
                    syncInfo = new SyncInfo(syncInfo2);
                }
                arrayList.add(syncInfo);
            }
        }
        return arrayList;
    }

    public final List getCurrentSyncsLocked(int i) {
        ArrayList arrayList = (ArrayList) this.mCurrentSyncs.get(i);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        this.mCurrentSyncs.put(i, arrayList2);
        return arrayList2;
    }

    public Pair getCopyOfAuthorityWithSyncStatus(EndPoint endPoint) {
        Pair createCopyPairOfAuthorityWithSyncStatusLocked;
        synchronized (this.mAuthorities) {
            createCopyPairOfAuthorityWithSyncStatusLocked = createCopyPairOfAuthorityWithSyncStatusLocked(getOrCreateAuthorityLocked(endPoint, -1, true));
        }
        return createCopyPairOfAuthorityWithSyncStatusLocked;
    }

    public SyncStatusInfo getStatusByAuthority(EndPoint endPoint) {
        if (endPoint.account == null || endPoint.provider == null) {
            return null;
        }
        synchronized (this.mAuthorities) {
            int size = this.mSyncStatus.size();
            for (int i = 0; i < size; i++) {
                SyncStatusInfo syncStatusInfo = (SyncStatusInfo) this.mSyncStatus.valueAt(i);
                AuthorityInfo authorityInfo = (AuthorityInfo) this.mAuthorities.get(syncStatusInfo.authorityId);
                if (authorityInfo != null && authorityInfo.target.matchesSpec(endPoint)) {
                    return syncStatusInfo;
                }
            }
            return null;
        }
    }

    public boolean isSyncPending(EndPoint endPoint) {
        synchronized (this.mAuthorities) {
            int size = this.mSyncStatus.size();
            for (int i = 0; i < size; i++) {
                SyncStatusInfo syncStatusInfo = (SyncStatusInfo) this.mSyncStatus.valueAt(i);
                AuthorityInfo authorityInfo = (AuthorityInfo) this.mAuthorities.get(syncStatusInfo.authorityId);
                if (authorityInfo != null && authorityInfo.target.matchesSpec(endPoint) && syncStatusInfo.pending) {
                    return true;
                }
            }
            return false;
        }
    }

    public ArrayList getSyncHistory() {
        ArrayList arrayList;
        synchronized (this.mAuthorities) {
            int size = this.mSyncHistory.size();
            arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                arrayList.add((SyncHistoryItem) this.mSyncHistory.get(i));
            }
        }
        return arrayList;
    }

    public DayStats[] getDayStatistics() {
        DayStats[] dayStatsArr;
        synchronized (this.mAuthorities) {
            DayStats[] dayStatsArr2 = this.mDayStats;
            int length = dayStatsArr2.length;
            dayStatsArr = new DayStats[length];
            System.arraycopy(dayStatsArr2, 0, dayStatsArr, 0, length);
        }
        return dayStatsArr;
    }

    public final Pair createCopyPairOfAuthorityWithSyncStatusLocked(AuthorityInfo authorityInfo) {
        return Pair.create(new AuthorityInfo(authorityInfo), new SyncStatusInfo(getOrCreateSyncStatusLocked(authorityInfo.ident)));
    }

    public final int getCurrentDayLocked() {
        this.mCal.setTimeInMillis(System.currentTimeMillis());
        int i = this.mCal.get(6);
        if (this.mYear != this.mCal.get(1)) {
            this.mYear = this.mCal.get(1);
            this.mCal.clear();
            this.mCal.set(1, this.mYear);
            this.mYearInDays = (int) (this.mCal.getTimeInMillis() / BackupManagerConstants.DEFAULT_FULL_BACKUP_INTERVAL_MILLISECONDS);
        }
        return i + this.mYearInDays;
    }

    public final AuthorityInfo getAuthorityLocked(EndPoint endPoint, String str) {
        AccountAndUser accountAndUser = new AccountAndUser(endPoint.account, endPoint.userId);
        AccountInfo accountInfo = (AccountInfo) this.mAccounts.get(accountAndUser);
        if (accountInfo == null) {
            if (str != null && Log.isLoggable("SyncManager", 2)) {
                Slog.v("SyncManager", str + ": unknown account " + accountAndUser);
            }
            return null;
        }
        AuthorityInfo authorityInfo = (AuthorityInfo) accountInfo.authorities.get(endPoint.provider);
        if (authorityInfo != null) {
            return authorityInfo;
        }
        if (str != null && Log.isLoggable("SyncManager", 2)) {
            Slog.v("SyncManager", str + ": unknown provider " + endPoint.provider);
        }
        return null;
    }

    public final AuthorityInfo getOrCreateAuthorityLocked(EndPoint endPoint, int i, boolean z) {
        AccountAndUser accountAndUser = new AccountAndUser(endPoint.account, endPoint.userId);
        AccountInfo accountInfo = (AccountInfo) this.mAccounts.get(accountAndUser);
        if (accountInfo == null) {
            accountInfo = new AccountInfo(accountAndUser);
            this.mAccounts.put(accountAndUser, accountInfo);
        }
        AuthorityInfo authorityInfo = (AuthorityInfo) accountInfo.authorities.get(endPoint.provider);
        if (authorityInfo != null) {
            return authorityInfo;
        }
        AuthorityInfo createAuthorityLocked = createAuthorityLocked(endPoint, i, z);
        accountInfo.authorities.put(endPoint.provider, createAuthorityLocked);
        return createAuthorityLocked;
    }

    public final AuthorityInfo createAuthorityLocked(EndPoint endPoint, int i, boolean z) {
        if (i < 0) {
            i = this.mNextAuthorityId;
            this.mNextAuthorityId = i + 1;
            z = true;
        }
        if (Log.isLoggable("SyncManager", 2)) {
            Slog.v("SyncManager", "created a new AuthorityInfo for " + endPoint);
        }
        AuthorityInfo authorityInfo = new AuthorityInfo(endPoint, i);
        this.mAuthorities.put(i, authorityInfo);
        if (z) {
            writeAccountInfoLocked();
        }
        return authorityInfo;
    }

    public void removeAuthority(EndPoint endPoint) {
        synchronized (this.mAuthorities) {
            removeAuthorityLocked(endPoint.account, endPoint.userId, endPoint.provider, true);
        }
    }

    public final void removeAuthorityLocked(Account account, int i, String str, boolean z) {
        AuthorityInfo authorityInfo;
        AccountInfo accountInfo = (AccountInfo) this.mAccounts.get(new AccountAndUser(account, i));
        if (accountInfo == null || (authorityInfo = (AuthorityInfo) accountInfo.authorities.remove(str)) == null) {
            return;
        }
        OnAuthorityRemovedListener onAuthorityRemovedListener = this.mAuthorityRemovedListener;
        if (onAuthorityRemovedListener != null) {
            onAuthorityRemovedListener.onAuthorityRemoved(authorityInfo.target);
        }
        this.mAuthorities.remove(authorityInfo.ident);
        if (z) {
            writeAccountInfoLocked();
        }
    }

    public final SyncStatusInfo getOrCreateSyncStatusLocked(int i) {
        SyncStatusInfo syncStatusInfo = (SyncStatusInfo) this.mSyncStatus.get(i);
        if (syncStatusInfo != null) {
            return syncStatusInfo;
        }
        SyncStatusInfo syncStatusInfo2 = new SyncStatusInfo(i);
        this.mSyncStatus.put(i, syncStatusInfo2);
        return syncStatusInfo2;
    }

    public void writeAllState() {
        synchronized (this.mAuthorities) {
            writeStatusLocked();
            writeStatisticsLocked();
        }
    }

    public boolean shouldGrantSyncAdaptersAccountAccess() {
        return this.mGrantSyncAdaptersAccountAccess;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01ca A[Catch: all -> 0x01fa, TRY_ENTER, TryCatch #17 {all -> 0x01fa, blocks: (B:103:0x01ca, B:113:0x01ce, B:116:0x01e7), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01dd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:112:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01ce A[Catch: all -> 0x01fa, TRY_LEAVE, TryCatch #17 {all -> 0x01fa, blocks: (B:103:0x01ca, B:113:0x01ce, B:116:0x01e7), top: B:2:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01f6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:125:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0172 A[LOOP:1: B:38:0x00e4->B:43:0x0172, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x016f A[EDGE_INSN: B:44:0x016f->B:45:0x016f BREAK  A[LOOP:1: B:38:0x00e4->B:43:0x0172], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0207 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void readAccountInfoLocked() {
        /*
            Method dump skipped, instructions count: 523
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.content.SyncStorageEngine.readAccountInfoLocked():void");
    }

    public final void maybeDeleteLegacyPendingInfoLocked(File file) {
        File file2 = new File(file, "pending.bin");
        if (file2.exists()) {
            file2.delete();
        }
    }

    public final boolean maybeMigrateSettingsForRenamedAuthorities() {
        ArrayList arrayList = new ArrayList();
        int size = this.mAuthorities.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            AuthorityInfo authorityInfo = (AuthorityInfo) this.mAuthorities.valueAt(i);
            String str = (String) sAuthorityRenames.get(authorityInfo.target.provider);
            if (str != null) {
                arrayList.add(authorityInfo);
                if (authorityInfo.enabled) {
                    EndPoint endPoint = authorityInfo.target;
                    EndPoint endPoint2 = new EndPoint(endPoint.account, str, endPoint.userId);
                    if (getAuthorityLocked(endPoint2, "cleanup") == null) {
                        getOrCreateAuthorityLocked(endPoint2, -1, false).enabled = true;
                        z = true;
                    }
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            EndPoint endPoint3 = ((AuthorityInfo) it.next()).target;
            removeAuthorityLocked(endPoint3.account, endPoint3.userId, endPoint3.provider, false);
            z = true;
        }
        return z;
    }

    public final void parseListenForTickles(TypedXmlPullParser typedXmlPullParser) {
        int i;
        try {
            i = typedXmlPullParser.getAttributeInt((String) null, "user");
        } catch (XmlPullParserException e) {
            Slog.e("SyncManager", "error parsing the user for listen-for-tickles", e);
            i = 0;
        }
        this.mMasterSyncAutomatically.put(i, Boolean.valueOf(typedXmlPullParser.getAttributeBoolean((String) null, "enabled", true)));
    }

    public final AuthorityInfo parseAuthority(TypedXmlPullParser typedXmlPullParser, int i, AccountAuthorityValidator accountAuthorityValidator) {
        int i2;
        int i3;
        String str;
        int parseInt;
        AuthorityInfo authorityInfo = null;
        try {
            i2 = typedXmlPullParser.getAttributeInt((String) null, "id");
        } catch (XmlPullParserException e) {
            Slog.e("SyncManager", "error parsing the id of the authority", e);
            i2 = -1;
        }
        if (i2 >= 0) {
            String attributeValue = typedXmlPullParser.getAttributeValue((String) null, "authority");
            boolean attributeBoolean = typedXmlPullParser.getAttributeBoolean((String) null, "enabled", true);
            String attributeValue2 = typedXmlPullParser.getAttributeValue((String) null, "syncable");
            String attributeValue3 = typedXmlPullParser.getAttributeValue((String) null, "account");
            String attributeValue4 = typedXmlPullParser.getAttributeValue((String) null, "type");
            int attributeInt = typedXmlPullParser.getAttributeInt((String) null, "user", 0);
            String attributeValue5 = typedXmlPullParser.getAttributeValue((String) null, "package");
            String attributeValue6 = typedXmlPullParser.getAttributeValue((String) null, "class");
            if (attributeValue4 == null && attributeValue5 == null) {
                attributeValue2 = String.valueOf(-1);
                attributeValue4 = "com.google";
            }
            authorityInfo = (AuthorityInfo) this.mAuthorities.get(i2);
            if (Log.isLoggable("SyncManagerFile", 2)) {
                str = "SyncManager";
                StringBuilder sb = new StringBuilder();
                i3 = i2;
                sb.append("Adding authority: account=");
                sb.append(attributeValue3);
                sb.append(" accountType=");
                sb.append(attributeValue4);
                sb.append(" auth=");
                sb.append(attributeValue);
                sb.append(" package=");
                sb.append(attributeValue5);
                sb.append(" class=");
                sb.append(attributeValue6);
                sb.append(" user=");
                sb.append(attributeInt);
                sb.append(" enabled=");
                sb.append(attributeBoolean);
                sb.append(" syncable=");
                sb.append(attributeValue2);
                Slog.v("SyncManagerFile", sb.toString());
            } else {
                i3 = i2;
                str = "SyncManager";
            }
            if (authorityInfo == null) {
                if (Log.isLoggable("SyncManagerFile", 2)) {
                    Slog.v("SyncManagerFile", "Creating authority entry");
                }
                if (attributeValue3 != null && attributeValue != null) {
                    EndPoint endPoint = new EndPoint(new Account(attributeValue3, attributeValue4), attributeValue, attributeInt);
                    if (accountAuthorityValidator.isAccountValid(endPoint.account, attributeInt) && accountAuthorityValidator.isAuthorityValid(attributeValue, attributeInt)) {
                        AuthorityInfo orCreateAuthorityLocked = getOrCreateAuthorityLocked(endPoint, i3, false);
                        if (i > 0) {
                            orCreateAuthorityLocked.periodicSyncs.clear();
                        }
                        authorityInfo = orCreateAuthorityLocked;
                    } else {
                        EventLog.writeEvent(1397638484, "35028827", -1, "account:" + endPoint.account + " provider:" + attributeValue + " user:" + attributeInt);
                    }
                }
            }
            if (authorityInfo != null) {
                authorityInfo.enabled = attributeBoolean;
                if (attributeValue2 == null) {
                    parseInt = -1;
                } else {
                    try {
                        parseInt = Integer.parseInt(attributeValue2);
                    } catch (NumberFormatException unused) {
                        if ("unknown".equals(attributeValue2)) {
                            authorityInfo.syncable = -1;
                        } else {
                            authorityInfo.syncable = Boolean.parseBoolean(attributeValue2) ? 1 : 0;
                        }
                    }
                }
                authorityInfo.syncable = parseInt;
            } else {
                Slog.w(str, "Failure adding authority: auth=" + attributeValue + " enabled=" + attributeBoolean + " syncable=" + attributeValue2);
            }
        }
        return authorityInfo;
    }

    public final PeriodicSync parsePeriodicSync(TypedXmlPullParser typedXmlPullParser, AuthorityInfo authorityInfo) {
        long j;
        Bundle bundle = new Bundle();
        try {
            long attributeLong = typedXmlPullParser.getAttributeLong((String) null, "period");
            try {
                j = typedXmlPullParser.getAttributeLong((String) null, "flex");
            } catch (XmlPullParserException e) {
                long calculateDefaultFlexTime = calculateDefaultFlexTime(attributeLong);
                Slog.e("SyncManager", "Error formatting value parsed for periodic sync flex, using default: " + calculateDefaultFlexTime, e);
                j = calculateDefaultFlexTime;
            }
            EndPoint endPoint = authorityInfo.target;
            PeriodicSync periodicSync = new PeriodicSync(endPoint.account, endPoint.provider, bundle, attributeLong, j);
            authorityInfo.periodicSyncs.add(periodicSync);
            return periodicSync;
        } catch (XmlPullParserException e2) {
            Slog.e("SyncManager", "error parsing the period of a periodic sync", e2);
            return null;
        }
    }

    public final void parseExtra(TypedXmlPullParser typedXmlPullParser, Bundle bundle) {
        String attributeValue = typedXmlPullParser.getAttributeValue((String) null, "name");
        String attributeValue2 = typedXmlPullParser.getAttributeValue((String) null, "type");
        try {
            if ("long".equals(attributeValue2)) {
                bundle.putLong(attributeValue, typedXmlPullParser.getAttributeLong((String) null, "value1"));
            } else if ("integer".equals(attributeValue2)) {
                bundle.putInt(attributeValue, typedXmlPullParser.getAttributeInt((String) null, "value1"));
            } else if ("double".equals(attributeValue2)) {
                bundle.putDouble(attributeValue, typedXmlPullParser.getAttributeDouble((String) null, "value1"));
            } else if ("float".equals(attributeValue2)) {
                bundle.putFloat(attributeValue, typedXmlPullParser.getAttributeFloat((String) null, "value1"));
            } else if ("boolean".equals(attributeValue2)) {
                bundle.putBoolean(attributeValue, typedXmlPullParser.getAttributeBoolean((String) null, "value1"));
            } else if ("string".equals(attributeValue2)) {
                bundle.putString(attributeValue, typedXmlPullParser.getAttributeValue((String) null, "value1"));
            } else if ("account".equals(attributeValue2)) {
                bundle.putParcelable(attributeValue, new Account(typedXmlPullParser.getAttributeValue((String) null, "value1"), typedXmlPullParser.getAttributeValue((String) null, "value2")));
            }
        } catch (XmlPullParserException e) {
            Slog.e("SyncManager", "error parsing bundle value", e);
        }
    }

    public final void writeAccountInfoLocked() {
        if (Log.isLoggable("SyncManagerFile", 2)) {
            Slog.v("SyncManagerFile", "Writing new " + this.mAccountInfoFile.getBaseFile());
        }
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream startWrite = this.mAccountInfoFile.startWrite();
            try {
                TypedXmlSerializer resolveSerializer = Xml.resolveSerializer(startWrite);
                resolveSerializer.startDocument((String) null, Boolean.TRUE);
                resolveSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
                resolveSerializer.startTag((String) null, "accounts");
                resolveSerializer.attributeInt((String) null, "version", 3);
                resolveSerializer.attributeInt((String) null, "nextAuthorityId", this.mNextAuthorityId);
                resolveSerializer.attributeInt((String) null, "offsetInSeconds", this.mSyncRandomOffset);
                int size = this.mMasterSyncAutomatically.size();
                for (int i = 0; i < size; i++) {
                    int keyAt = this.mMasterSyncAutomatically.keyAt(i);
                    Boolean bool = (Boolean) this.mMasterSyncAutomatically.valueAt(i);
                    resolveSerializer.startTag((String) null, "listenForTickles");
                    resolveSerializer.attributeInt((String) null, "user", keyAt);
                    resolveSerializer.attributeBoolean((String) null, "enabled", bool.booleanValue());
                    resolveSerializer.endTag((String) null, "listenForTickles");
                }
                int size2 = this.mAuthorities.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    AuthorityInfo authorityInfo = (AuthorityInfo) this.mAuthorities.valueAt(i2);
                    EndPoint endPoint = authorityInfo.target;
                    resolveSerializer.startTag((String) null, "authority");
                    resolveSerializer.attributeInt((String) null, "id", authorityInfo.ident);
                    resolveSerializer.attributeInt((String) null, "user", endPoint.userId);
                    resolveSerializer.attributeBoolean((String) null, "enabled", authorityInfo.enabled);
                    resolveSerializer.attribute((String) null, "account", endPoint.account.name);
                    resolveSerializer.attribute((String) null, "type", endPoint.account.type);
                    resolveSerializer.attribute((String) null, "authority", endPoint.provider);
                    resolveSerializer.attributeInt((String) null, "syncable", authorityInfo.syncable);
                    resolveSerializer.endTag((String) null, "authority");
                }
                resolveSerializer.endTag((String) null, "accounts");
                resolveSerializer.endDocument();
                this.mAccountInfoFile.finishWrite(startWrite);
            } catch (IOException e) {
                e = e;
                fileOutputStream = startWrite;
                Slog.w("SyncManager", "Error writing accounts", e);
                if (fileOutputStream != null) {
                    this.mAccountInfoFile.failWrite(fileOutputStream);
                }
            }
        } catch (IOException e2) {
            e = e2;
        }
    }

    public final void readStatusParcelLocked(File file) {
        Parcel obtain;
        try {
            byte[] readFully = new AtomicFile(file).readFully();
            obtain = Parcel.obtain();
            obtain.unmarshall(readFully, 0, readFully.length);
            obtain.setDataPosition(0);
        } catch (IOException unused) {
            Slog.i("SyncManager", "No initial status");
            return;
        }
        while (true) {
            int readInt = obtain.readInt();
            if (readInt != 0) {
                if (readInt == 100) {
                    try {
                        SyncStatusInfo syncStatusInfo = new SyncStatusInfo(obtain);
                        if (this.mAuthorities.indexOfKey(syncStatusInfo.authorityId) >= 0) {
                            syncStatusInfo.pending = false;
                            this.mSyncStatus.put(syncStatusInfo.authorityId, syncStatusInfo);
                        }
                    } catch (Exception e) {
                        Slog.e("SyncManager", "Unable to parse some sync status.", e);
                    }
                } else {
                    Slog.w("SyncManager", "Unknown status token: " + readInt);
                    return;
                }
                Slog.i("SyncManager", "No initial status");
                return;
            }
            return;
        }
    }

    public final void upgradeStatusIfNeededLocked() {
        File file = new File(this.mSyncDir, "status.bin");
        if (file.exists() && !this.mStatusFile.exists()) {
            readStatusParcelLocked(file);
            writeStatusLocked();
        }
        if (file.exists() && this.mStatusFile.exists()) {
            file.delete();
        }
    }

    public void readStatusLocked() {
        upgradeStatusIfNeededLocked();
        if (this.mStatusFile.exists()) {
            try {
                FileInputStream openRead = this.mStatusFile.openRead();
                try {
                    readStatusInfoLocked(openRead);
                    if (openRead != null) {
                        openRead.close();
                    }
                } finally {
                }
            } catch (Exception e) {
                Slog.e("SyncManager", "Unable to read status info file.", e);
            }
        }
    }

    public final void readStatusInfoLocked(InputStream inputStream) {
        ProtoInputStream protoInputStream = new ProtoInputStream(inputStream);
        while (true) {
            int nextField = protoInputStream.nextField();
            if (nextField == -1) {
                return;
            }
            if (nextField == 1) {
                long start = protoInputStream.start(2246267895809L);
                SyncStatusInfo readSyncStatusInfoLocked = readSyncStatusInfoLocked(protoInputStream);
                protoInputStream.end(start);
                if (this.mAuthorities.indexOfKey(readSyncStatusInfoLocked.authorityId) >= 0) {
                    readSyncStatusInfoLocked.pending = false;
                    this.mSyncStatus.put(readSyncStatusInfoLocked.authorityId, readSyncStatusInfoLocked);
                }
            } else if (nextField == 2) {
                this.mIsJobNamespaceMigrated = protoInputStream.readBoolean(1133871366146L);
            } else if (nextField == 3) {
                this.mIsJobAttributionFixed = protoInputStream.readBoolean(1133871366147L);
            }
        }
    }

    public final SyncStatusInfo readSyncStatusInfoLocked(ProtoInputStream protoInputStream) {
        SyncStatusInfo syncStatusInfo;
        int i = 0;
        if (protoInputStream.nextField(1120986464258L)) {
            syncStatusInfo = new SyncStatusInfo(protoInputStream.readInt(1120986464258L));
        } else {
            syncStatusInfo = new SyncStatusInfo(0);
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (true) {
            int nextField = protoInputStream.nextField();
            if (nextField != -1) {
                switch (nextField) {
                    case 2:
                        Slog.w("SyncManager", "Failed to read the authority id via fast-path; some data might not have been read.");
                        syncStatusInfo = new SyncStatusInfo(protoInputStream.readInt(1120986464258L), syncStatusInfo);
                        break;
                    case 3:
                        syncStatusInfo.lastSuccessTime = protoInputStream.readLong(1112396529667L);
                        break;
                    case 4:
                        syncStatusInfo.lastSuccessSource = protoInputStream.readInt(1120986464260L);
                        break;
                    case 5:
                        syncStatusInfo.lastFailureTime = protoInputStream.readLong(1112396529669L);
                        break;
                    case 6:
                        syncStatusInfo.lastFailureSource = protoInputStream.readInt(1120986464262L);
                        break;
                    case 7:
                        syncStatusInfo.lastFailureMesg = protoInputStream.readString(1138166333447L);
                        break;
                    case 8:
                        syncStatusInfo.initialFailureTime = protoInputStream.readLong(1112396529672L);
                        break;
                    case 9:
                        syncStatusInfo.pending = protoInputStream.readBoolean(1133871366153L);
                        break;
                    case 10:
                        syncStatusInfo.initialize = protoInputStream.readBoolean(1133871366154L);
                        break;
                    case 11:
                        syncStatusInfo.addPeriodicSyncTime(protoInputStream.readLong(2211908157451L));
                        break;
                    case 12:
                        long start = protoInputStream.start(2246267895820L);
                        Pair parseLastEventInfoLocked = parseLastEventInfoLocked(protoInputStream);
                        if (parseLastEventInfoLocked != null) {
                            arrayList.add(parseLastEventInfoLocked);
                        }
                        protoInputStream.end(start);
                        break;
                    case 13:
                        syncStatusInfo.lastTodayResetTime = protoInputStream.readLong(1112396529677L);
                        break;
                    case 14:
                        long start2 = protoInputStream.start(1146756268046L);
                        readSyncStatusStatsLocked(protoInputStream, syncStatusInfo.totalStats);
                        protoInputStream.end(start2);
                        break;
                    case 15:
                        long start3 = protoInputStream.start(1146756268047L);
                        readSyncStatusStatsLocked(protoInputStream, syncStatusInfo.todayStats);
                        protoInputStream.end(start3);
                        break;
                    case 16:
                        long start4 = protoInputStream.start(1146756268048L);
                        readSyncStatusStatsLocked(protoInputStream, syncStatusInfo.yesterdayStats);
                        protoInputStream.end(start4);
                        break;
                    case 17:
                        long readLong = protoInputStream.readLong(2211908157457L);
                        long[] jArr = syncStatusInfo.perSourceLastSuccessTimes;
                        if (i == jArr.length) {
                            Slog.w("SyncManager", "Attempted to read more per source last success times than expected; data might be corrupted.");
                            break;
                        } else {
                            jArr[i] = readLong;
                            i++;
                            break;
                        }
                    case 18:
                        long readLong2 = protoInputStream.readLong(2211908157458L);
                        long[] jArr2 = syncStatusInfo.perSourceLastFailureTimes;
                        if (i2 == jArr2.length) {
                            Slog.w("SyncManager", "Attempted to read more per source last failure times than expected; data might be corrupted.");
                            break;
                        } else {
                            jArr2[i2] = readLong2;
                            i2++;
                            break;
                        }
                }
            } else {
                syncStatusInfo.populateLastEventsInformation(arrayList);
                return syncStatusInfo;
            }
        }
    }

    public final Pair parseLastEventInfoLocked(ProtoInputStream protoInputStream) {
        long j = 0;
        String str = null;
        while (true) {
            int nextField = protoInputStream.nextField();
            if (nextField == -1) {
                break;
            }
            if (nextField == 1) {
                j = protoInputStream.readLong(1112396529665L);
            } else if (nextField == 2) {
                str = protoInputStream.readString(1138166333442L);
            }
        }
        if (str == null) {
            return null;
        }
        return new Pair(Long.valueOf(j), str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0080, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void readSyncStatusStatsLocked(android.util.proto.ProtoInputStream r3, android.content.SyncStatusInfo.Stats r4) {
        /*
            r2 = this;
        L0:
            int r2 = r3.nextField()
            switch(r2) {
                case -1: goto L80;
                case 0: goto L7;
                case 1: goto L74;
                case 2: goto L68;
                case 3: goto L5c;
                case 4: goto L50;
                case 5: goto L44;
                case 6: goto L38;
                case 7: goto L2c;
                case 8: goto L20;
                case 9: goto L14;
                case 10: goto L8;
                default: goto L7;
            }
        L7:
            goto L0
        L8:
            r0 = 1120986464266(0x1050000000a, double:5.53840901447E-312)
            int r2 = r3.readInt(r0)
            r4.numSourceFeed = r2
            goto L0
        L14:
            r0 = 1120986464265(0x10500000009, double:5.538409014464E-312)
            int r2 = r3.readInt(r0)
            r4.numSourcePeriodic = r2
            goto L0
        L20:
            r0 = 1120986464264(0x10500000008, double:5.53840901446E-312)
            int r2 = r3.readInt(r0)
            r4.numSourceUser = r2
            goto L0
        L2c:
            r0 = 1120986464263(0x10500000007, double:5.538409014454E-312)
            int r2 = r3.readInt(r0)
            r4.numSourcePoll = r2
            goto L0
        L38:
            r0 = 1120986464262(0x10500000006, double:5.53840901445E-312)
            int r2 = r3.readInt(r0)
            r4.numSourceLocal = r2
            goto L0
        L44:
            r0 = 1120986464261(0x10500000005, double:5.538409014444E-312)
            int r2 = r3.readInt(r0)
            r4.numSourceOther = r2
            goto L0
        L50:
            r0 = 1120986464260(0x10500000004, double:5.53840901444E-312)
            int r2 = r3.readInt(r0)
            r4.numCancels = r2
            goto L0
        L5c:
            r0 = 1120986464259(0x10500000003, double:5.538409014434E-312)
            int r2 = r3.readInt(r0)
            r4.numFailures = r2
            goto L0
        L68:
            r0 = 1120986464258(0x10500000002, double:5.53840901443E-312)
            int r2 = r3.readInt(r0)
            r4.numSyncs = r2
            goto L0
        L74:
            r0 = 1112396529665(0x10300000001, double:5.495969098605E-312)
            long r0 = r3.readLong(r0)
            r4.totalElapsedTime = r0
            goto L0
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.content.SyncStorageEngine.readSyncStatusStatsLocked(android.util.proto.ProtoInputStream, android.content.SyncStatusInfo$Stats):void");
    }

    public void writeStatusLocked() {
        FileOutputStream fileOutputStream;
        Throwable th;
        Throwable e;
        if (Log.isLoggable("SyncManagerFile", 2)) {
            Slog.v("SyncManagerFile", "Writing new " + this.mStatusFile.getBaseFile());
        }
        this.mHandler.removeMessages(1);
        try {
            fileOutputStream = this.mStatusFile.startWrite();
        } catch (IOException | IllegalArgumentException e2) {
            fileOutputStream = null;
            e = e2;
        } catch (Throwable th2) {
            fileOutputStream = null;
            th = th2;
            this.mStatusFile.failWrite(fileOutputStream);
            throw th;
        }
        try {
            try {
                writeStatusInfoLocked(fileOutputStream);
                this.mStatusFile.finishWrite(fileOutputStream);
                this.mStatusFile.failWrite(null);
            } catch (Throwable th3) {
                th = th3;
                this.mStatusFile.failWrite(fileOutputStream);
                throw th;
            }
        } catch (IOException | IllegalArgumentException e3) {
            e = e3;
            Slog.e("SyncManager", "Unable to write sync status to proto.", e);
            this.mStatusFile.failWrite(fileOutputStream);
        }
    }

    public final void writeStatusInfoLocked(OutputStream outputStream) {
        ProtoOutputStream protoOutputStream = new ProtoOutputStream(outputStream);
        int size = this.mSyncStatus.size();
        for (int i = 0; i < size; i++) {
            SyncStatusInfo syncStatusInfo = (SyncStatusInfo) this.mSyncStatus.valueAt(i);
            long start = protoOutputStream.start(2246267895809L);
            protoOutputStream.write(1120986464258L, syncStatusInfo.authorityId);
            protoOutputStream.write(1112396529667L, syncStatusInfo.lastSuccessTime);
            protoOutputStream.write(1120986464260L, syncStatusInfo.lastSuccessSource);
            protoOutputStream.write(1112396529669L, syncStatusInfo.lastFailureTime);
            protoOutputStream.write(1120986464262L, syncStatusInfo.lastFailureSource);
            protoOutputStream.write(1138166333447L, syncStatusInfo.lastFailureMesg);
            protoOutputStream.write(1112396529672L, syncStatusInfo.initialFailureTime);
            protoOutputStream.write(1133871366153L, syncStatusInfo.pending);
            protoOutputStream.write(1133871366154L, syncStatusInfo.initialize);
            int periodicSyncTimesSize = syncStatusInfo.getPeriodicSyncTimesSize();
            for (int i2 = 0; i2 < periodicSyncTimesSize; i2++) {
                protoOutputStream.write(2211908157451L, syncStatusInfo.getPeriodicSyncTime(i2));
            }
            int eventCount = syncStatusInfo.getEventCount();
            for (int i3 = 0; i3 < eventCount; i3++) {
                long start2 = protoOutputStream.start(2246267895820L);
                protoOutputStream.write(1112396529665L, syncStatusInfo.getEventTime(i3));
                protoOutputStream.write(1138166333442L, syncStatusInfo.getEvent(i3));
                protoOutputStream.end(start2);
            }
            protoOutputStream.write(1112396529677L, syncStatusInfo.lastTodayResetTime);
            long start3 = protoOutputStream.start(1146756268046L);
            writeStatusStatsLocked(protoOutputStream, syncStatusInfo.totalStats);
            protoOutputStream.end(start3);
            long start4 = protoOutputStream.start(1146756268047L);
            writeStatusStatsLocked(protoOutputStream, syncStatusInfo.todayStats);
            protoOutputStream.end(start4);
            long start5 = protoOutputStream.start(1146756268048L);
            writeStatusStatsLocked(protoOutputStream, syncStatusInfo.yesterdayStats);
            protoOutputStream.end(start5);
            int length = syncStatusInfo.perSourceLastSuccessTimes.length;
            for (int i4 = 0; i4 < length; i4++) {
                protoOutputStream.write(2211908157457L, syncStatusInfo.perSourceLastSuccessTimes[i4]);
            }
            int length2 = syncStatusInfo.perSourceLastFailureTimes.length;
            for (int i5 = 0; i5 < length2; i5++) {
                protoOutputStream.write(2211908157458L, syncStatusInfo.perSourceLastFailureTimes[i5]);
            }
            protoOutputStream.end(start);
        }
        protoOutputStream.write(1133871366146L, this.mIsJobNamespaceMigrated);
        protoOutputStream.write(1133871366147L, this.mIsJobAttributionFixed);
        protoOutputStream.flush();
    }

    public final void writeStatusStatsLocked(ProtoOutputStream protoOutputStream, SyncStatusInfo.Stats stats) {
        protoOutputStream.write(1112396529665L, stats.totalElapsedTime);
        protoOutputStream.write(1120986464258L, stats.numSyncs);
        protoOutputStream.write(1120986464259L, stats.numFailures);
        protoOutputStream.write(1120986464260L, stats.numCancels);
        protoOutputStream.write(1120986464261L, stats.numSourceOther);
        protoOutputStream.write(1120986464262L, stats.numSourceLocal);
        protoOutputStream.write(1120986464263L, stats.numSourcePoll);
        protoOutputStream.write(1120986464264L, stats.numSourceUser);
        protoOutputStream.write(1120986464265L, stats.numSourcePeriodic);
        protoOutputStream.write(1120986464266L, stats.numSourceFeed);
    }

    public final void requestSync(AuthorityInfo authorityInfo, int i, Bundle bundle, int i2, int i3, int i4) {
        OnSyncRequestListener onSyncRequestListener;
        if (Process.myUid() == 1000 && (onSyncRequestListener = this.mSyncRequestListener) != null) {
            onSyncRequestListener.onSyncRequest(authorityInfo.target, i, bundle, i2, i3, i4);
            return;
        }
        SyncRequest.Builder extras = new SyncRequest.Builder().syncOnce().setExtras(bundle);
        EndPoint endPoint = authorityInfo.target;
        extras.setSyncAdapter(endPoint.account, endPoint.provider);
        ContentResolver.requestSync(extras.build());
    }

    public final void requestSync(Account account, int i, int i2, String str, Bundle bundle, int i3, int i4, int i5) {
        OnSyncRequestListener onSyncRequestListener;
        if (Process.myUid() == 1000 && (onSyncRequestListener = this.mSyncRequestListener) != null) {
            onSyncRequestListener.onSyncRequest(new EndPoint(account, str, i), i2, bundle, i3, i4, i5);
        } else {
            ContentResolver.requestSync(account, str, bundle);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
    
        android.util.Slog.w("SyncManager", "Unknown stats token: " + r7);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void readStatsParcelLocked(java.io.File r7) {
        /*
            r6 = this;
            java.lang.String r0 = "SyncManager"
            android.os.Parcel r1 = android.os.Parcel.obtain()
            android.util.AtomicFile r2 = new android.util.AtomicFile     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            r2.<init>(r7)     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            byte[] r7 = r2.readFully()     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            int r2 = r7.length     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            r3 = 0
            r1.unmarshall(r7, r3, r2)     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            r1.setDataPosition(r3)     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
        L17:
            int r7 = r1.readInt()     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            if (r7 == 0) goto L73
            r2 = 101(0x65, float:1.42E-43)
            r4 = 100
            if (r7 == r2) goto L3b
            if (r7 != r4) goto L26
            goto L3b
        L26:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            r6.<init>()     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            java.lang.String r2 = "Unknown stats token: "
            r6.append(r2)     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            r6.append(r7)     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            android.util.Slog.w(r0, r6)     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            goto L73
        L3b:
            int r2 = r1.readInt()     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            if (r7 != r4) goto L45
            int r2 = r2 + (-2009)
            int r2 = r2 + 14245
        L45:
            com.android.server.content.SyncStorageEngine$DayStats r7 = new com.android.server.content.SyncStorageEngine$DayStats     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            r7.<init>(r2)     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            int r2 = r1.readInt()     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            r7.successCount = r2     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            long r4 = r1.readLong()     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            r7.successTime = r4     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            int r2 = r1.readInt()     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            r7.failureCount = r2     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            long r4 = r1.readLong()     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            r7.failureTime = r4     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            com.android.server.content.SyncStorageEngine$DayStats[] r2 = r6.mDayStats     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            int r4 = r2.length     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            if (r3 >= r4) goto L17
            r2[r3] = r7     // Catch: java.lang.Throwable -> L6c java.io.IOException -> L6e
            int r3 = r3 + 1
            goto L17
        L6c:
            r6 = move-exception
            goto L77
        L6e:
            java.lang.String r6 = "No initial statistics"
            android.util.Slog.i(r0, r6)     // Catch: java.lang.Throwable -> L6c
        L73:
            r1.recycle()
            return
        L77:
            r1.recycle()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.content.SyncStorageEngine.readStatsParcelLocked(java.io.File):void");
    }

    public final void upgradeStatisticsIfNeededLocked() {
        File file = new File(this.mSyncDir, "stats.bin");
        if (file.exists() && !this.mStatisticsFile.exists()) {
            readStatsParcelLocked(file);
            writeStatisticsLocked();
        }
        if (file.exists() && this.mStatisticsFile.exists()) {
            file.delete();
        }
    }

    public final void readStatisticsLocked() {
        upgradeStatisticsIfNeededLocked();
        if (this.mStatisticsFile.exists()) {
            try {
                FileInputStream openRead = this.mStatisticsFile.openRead();
                try {
                    readDayStatsLocked(openRead);
                    if (openRead != null) {
                        openRead.close();
                    }
                } finally {
                }
            } catch (Exception e) {
                Slog.e("SyncManager", "Unable to read day stats file.", e);
            }
        }
    }

    public final void readDayStatsLocked(InputStream inputStream) {
        ProtoInputStream protoInputStream = new ProtoInputStream(inputStream);
        int i = 0;
        while (true) {
            int nextField = protoInputStream.nextField();
            if (nextField == -1) {
                return;
            }
            if (nextField == 1) {
                long start = protoInputStream.start(2246267895809L);
                DayStats readIndividualDayStatsLocked = readIndividualDayStatsLocked(protoInputStream);
                protoInputStream.end(start);
                DayStats[] dayStatsArr = this.mDayStats;
                dayStatsArr[i] = readIndividualDayStatsLocked;
                i++;
                if (i == dayStatsArr.length) {
                    return;
                }
            }
        }
    }

    public final DayStats readIndividualDayStatsLocked(ProtoInputStream protoInputStream) {
        DayStats dayStats;
        if (protoInputStream.nextField(1120986464257L)) {
            dayStats = new DayStats(protoInputStream.readInt(1120986464257L));
        } else {
            dayStats = new DayStats(0);
        }
        while (true) {
            int nextField = protoInputStream.nextField();
            if (nextField == -1) {
                return dayStats;
            }
            if (nextField == 1) {
                Slog.w("SyncManager", "Failed to read the day via fast-path; some data might not have been read.");
                DayStats dayStats2 = new DayStats(protoInputStream.readInt(1120986464257L));
                dayStats2.successCount = dayStats.successCount;
                dayStats2.successTime = dayStats.successTime;
                dayStats2.failureCount = dayStats.failureCount;
                dayStats2.failureTime = dayStats.failureTime;
                dayStats = dayStats2;
            } else if (nextField == 2) {
                dayStats.successCount = protoInputStream.readInt(1120986464258L);
            } else if (nextField == 3) {
                dayStats.successTime = protoInputStream.readLong(1112396529667L);
            } else if (nextField == 4) {
                dayStats.failureCount = protoInputStream.readInt(1120986464260L);
            } else if (nextField == 5) {
                dayStats.failureTime = protoInputStream.readLong(1112396529669L);
            }
        }
    }

    public void writeStatisticsLocked() {
        FileOutputStream fileOutputStream;
        Throwable th;
        Throwable e;
        if (Log.isLoggable("SyncManagerFile", 2)) {
            Slog.v("SyncManager", "Writing new " + this.mStatisticsFile.getBaseFile());
        }
        this.mHandler.removeMessages(2);
        try {
            fileOutputStream = this.mStatisticsFile.startWrite();
        } catch (IOException | IllegalArgumentException e2) {
            fileOutputStream = null;
            e = e2;
        } catch (Throwable th2) {
            fileOutputStream = null;
            th = th2;
            this.mStatisticsFile.failWrite(fileOutputStream);
            throw th;
        }
        try {
            try {
                writeDayStatsLocked(fileOutputStream);
                this.mStatisticsFile.finishWrite(fileOutputStream);
                this.mStatisticsFile.failWrite(null);
            } catch (Throwable th3) {
                th = th3;
                this.mStatisticsFile.failWrite(fileOutputStream);
                throw th;
            }
        } catch (IOException | IllegalArgumentException e3) {
            e = e3;
            Slog.e("SyncManager", "Unable to write day stats to proto.", e);
            this.mStatisticsFile.failWrite(fileOutputStream);
        }
    }

    public final void writeDayStatsLocked(OutputStream outputStream) {
        ProtoOutputStream protoOutputStream = new ProtoOutputStream(outputStream);
        int length = this.mDayStats.length;
        for (int i = 0; i < length; i++) {
            DayStats dayStats = this.mDayStats[i];
            if (dayStats == null) {
                break;
            }
            long start = protoOutputStream.start(2246267895809L);
            protoOutputStream.write(1120986464257L, dayStats.day);
            protoOutputStream.write(1120986464258L, dayStats.successCount);
            protoOutputStream.write(1112396529667L, dayStats.successTime);
            protoOutputStream.write(1120986464260L, dayStats.failureCount);
            protoOutputStream.write(1112396529669L, dayStats.failureTime);
            protoOutputStream.end(start);
        }
        protoOutputStream.flush();
    }

    public void queueBackup() {
        BackupManager.dataChanged("android");
    }

    public void setClockValid() {
        if (this.mIsClockValid) {
            return;
        }
        this.mIsClockValid = true;
        Slog.w("SyncManager", "Clock is valid now.");
    }

    public boolean isClockValid() {
        return this.mIsClockValid;
    }

    public void resetTodayStats(boolean z) {
        if (z) {
            Log.w("SyncManager", "Force resetting today stats.");
        }
        synchronized (this.mAuthorities) {
            int size = this.mSyncStatus.size();
            for (int i = 0; i < size; i++) {
                ((SyncStatusInfo) this.mSyncStatus.valueAt(i)).maybeResetTodayStats(isClockValid(), z);
            }
            writeStatusLocked();
        }
    }
}
