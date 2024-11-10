package com.android.server.cocktailbar;

import android.app.AlarmManager;
import android.app.AppGlobals;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.UserInfo;
import android.content.res.XmlResourceParser;
import android.database.ContentObserver;
import android.os.Binder;
import android.os.Bundle;
import android.os.Debug;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.IDeviceIdleController;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.storage.StorageManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.AtomicFile;
import android.util.Slog;
import android.util.SparseArray;
import android.widget.RemoteViews;
import com.android.internal.os.BackgroundThread;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.widget.IRemoteViewsFactory;
import com.android.server.cocktailbar.constant.Constants;
import com.android.server.cocktailbar.mode.CocktailBarModeManager;
import com.android.server.cocktailbar.policy.cocktail.CocktailPolicyManager;
import com.android.server.cocktailbar.settings.CocktailBarSettings;
import com.android.server.cocktailbar.utils.CocktailBarConfig;
import com.android.server.cocktailbar.utils.CocktailBarHistory;
import com.android.server.cocktailbar.utils.CocktailBarUtils;
import com.android.server.cocktailbar.utils.ServiceImplCommandLogger;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import com.samsung.android.cocktailbar.Cocktail;
import com.samsung.android.cocktailbar.CocktailInfo;
import com.samsung.android.cocktailbar.CocktailProviderInfo;
import com.samsung.android.cocktailbar.ICocktailHost;
import com.samsung.android.emergencymode.SemEmergencyManager;
import com.samsung.android.feature.SemFloatingFeature;
import com.samsung.android.knox.analytics.util.KnoxAnalyticsDataConverter;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import libcore.io.IoUtils;

/* loaded from: classes.dex */
public class CocktailBarManagerServiceImpl {
    public static final boolean DEBUG = Debug.semIsProductDev();
    public static final boolean EMERGENCY_MODE_ENABLED;
    public static final int MIN_UPDATE_PERIOD;
    public static final String TAG = "CocktailBarManagerServiceImpl";
    public final AlarmManager mAlarmManager;
    public final CocktailPolicyManager mCocktailPolicyManager;
    public CocktailBarSettingsObserver mCocktailSettingsObserver;
    public final CocktailBarConfig mConfig;
    public final Context mContext;
    public int mDefaultDisplayDensity;
    public Handler mHandler;
    public int mHostCategory;
    public final CocktailBarModeManager mModeManager;
    public int mNextCocktailId;
    public CocktailBarSettings mSettings;
    public boolean mStateLoaded;
    public final int mUserId;
    public final UserManager mUserManager;
    public final SparseArray mCocktailArr = new SparseArray();
    public final HashMap mRemoteViewsServicesCocktails = new HashMap();
    public int mNextUserId = -10;
    public HashMap mHost = new HashMap();
    public boolean mInitialzed = false;
    public EnabledPackageMap mEnabledCocktailPackages = new EnabledPackageMap();
    public ServiceImplCommandLogger mCommandLogger = new ServiceImplCommandLogger();
    public final Runnable mSaveStateRunnable = new Runnable() { // from class: com.android.server.cocktailbar.CocktailBarManagerServiceImpl.2
        @Override // java.lang.Runnable
        public void run() {
            synchronized (CocktailBarManagerServiceImpl.this.mCocktailArr) {
                CocktailBarManagerServiceImpl.this.ensureStateLoadedLocked();
                CocktailBarManagerServiceImpl.this.saveStateLocked();
            }
        }
    };
    public final IPackageManager mPm = AppGlobals.getPackageManager();
    public final Handler mEdgeStartHandler = new EdgeStartHandler(Looper.getMainLooper());
    public IDeviceIdleController mLocalDeviceIdleController = IDeviceIdleController.Stub.asInterface(ServiceManager.getService("deviceidle"));
    public Locale mLocale = Locale.getDefault();

    static {
        MIN_UPDATE_PERIOD = Debug.semIsProductDev() ? 1800000 : 0;
        EMERGENCY_MODE_ENABLED = SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE") || SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING") || SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING");
    }

    public CocktailBarManagerServiceImpl(Context context, Handler handler, CocktailBarModeManager cocktailBarModeManager, CocktailPolicyManager cocktailPolicyManager, int i) {
        this.mNextCocktailId = 0;
        this.mContext = context;
        this.mUserId = i;
        this.mNextCocktailId = (i << 16) | this.mNextCocktailId;
        this.mConfig = CocktailBarConfig.getInstance(context);
        this.mModeManager = cocktailBarModeManager;
        this.mCocktailPolicyManager = cocktailPolicyManager;
        this.mHandler = handler;
        this.mAlarmManager = (AlarmManager) context.getSystemService("alarm");
        this.mUserManager = (UserManager) context.getSystemService("user");
        if (isLocalBinder()) {
            this.mCocktailSettingsObserver = new CocktailBarSettingsObserver(this.mHandler);
        } else {
            this.mHandler.post(new Runnable() { // from class: com.android.server.cocktailbar.CocktailBarManagerServiceImpl.1
                @Override // java.lang.Runnable
                public void run() {
                    CocktailBarManagerServiceImpl cocktailBarManagerServiceImpl = CocktailBarManagerServiceImpl.this;
                    CocktailBarManagerServiceImpl cocktailBarManagerServiceImpl2 = CocktailBarManagerServiceImpl.this;
                    cocktailBarManagerServiceImpl.mCocktailSettingsObserver = new CocktailBarSettingsObserver(cocktailBarManagerServiceImpl2.mHandler);
                }
            });
        }
        this.mDefaultDisplayDensity = context.getResources().getConfiguration().densityDpi;
        systemReady();
    }

    public final void systemReady() {
        synchronized (this.mCocktailArr) {
            ensureStateLoadedLocked();
        }
    }

    public void systemDestroy() {
        this.mCocktailSettingsObserver.unregisterContentObserver();
        this.mCocktailSettingsObserver = null;
        removeAllUpdatedCocktails();
        unlinkAllHost();
        synchronized (this.mCocktailArr) {
            resetLoadedDataLocked();
        }
    }

    public void deleteHost(String str) {
        unlinkHost(str);
        HashMap hashMap = this.mHost;
        if (hashMap != null && !hashMap.isEmpty()) {
            String str2 = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("deleteHost: host remain ");
            HashMap hashMap2 = this.mHost;
            sb.append(hashMap2 == null ? "null" : Integer.valueOf(hashMap2.size()));
            Slog.d(str2, sb.toString());
            return;
        }
        removeAllUpdatedCocktails();
    }

    public final void unlinkHost(String str) {
        HashMap hashMap = this.mHost;
        if (hashMap == null) {
            Slog.d(TAG, "unlinkHost: no registered host");
            return;
        }
        synchronized (hashMap) {
            if (this.mHost.containsKey(str)) {
                CocktailHostInfo cocktailHostInfo = (CocktailHostInfo) this.mHost.get(str);
                if (cocktailHostInfo != null) {
                    cocktailHostInfo.unlinkBinder();
                }
                this.mHost.remove(str);
            } else {
                Slog.d(TAG, "unlinkHost: no registered host for " + str);
            }
        }
    }

    public final void unlinkAllHost() {
        HashMap hashMap = this.mHost;
        if (hashMap == null) {
            Slog.d(TAG, "unlinkAllHost: no registered host");
            return;
        }
        synchronized (hashMap) {
            if (this.mHost.isEmpty()) {
                Slog.d(TAG, "unlinkAllHost: no registered host");
                return;
            }
            Iterator it = this.mHost.entrySet().iterator();
            while (it.hasNext()) {
                ((CocktailHostInfo) ((Map.Entry) it.next()).getValue()).unlinkBinder();
            }
            this.mHost = null;
        }
    }

    public void setCocktailHostCallbacks(HashMap hashMap, HashMap hashMap2, boolean z) {
        if (this.mHost == null) {
            this.mHost = new HashMap();
        }
        synchronized (this.mHost) {
            Iterator it = this.mHost.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String str = (String) entry.getKey();
                ICocktailHost iCocktailHost = (ICocktailHost) hashMap.get(entry.getKey());
                if (iCocktailHost != null) {
                    CocktailHostInfo cocktailHostInfo = (CocktailHostInfo) this.mHost.get(str);
                    if (cocktailHostInfo != null && !cocktailHostInfo.isEqualBinder(iCocktailHost)) {
                        cocktailHostInfo.unlinkBinder();
                        this.mHost.put(str, new CocktailHostInfo(str, iCocktailHost, ((Integer) hashMap2.get(str)).intValue()));
                    }
                } else {
                    CocktailHostInfo cocktailHostInfo2 = (CocktailHostInfo) this.mHost.get(str);
                    if (cocktailHostInfo2 != null) {
                        cocktailHostInfo2.unlinkBinder();
                    }
                    it.remove();
                }
            }
            for (Map.Entry entry2 : hashMap.entrySet()) {
                if (entry2.getValue() == null) {
                    this.mHost.put((String) entry2.getKey(), new CocktailHostInfo((String) entry2.getKey(), (ICocktailHost) entry2.getValue(), ((Integer) hashMap2.get(entry2.getKey())).intValue()));
                }
            }
            boolean z2 = false;
            this.mHostCategory = 0;
            for (Map.Entry entry3 : this.mHost.entrySet()) {
                this.mHostCategory = ((CocktailHostInfo) entry3.getValue()).category | this.mHostCategory;
            }
            if (this.mInitialzed && !z) {
                z2 = true;
            }
            this.mInitialzed = z2;
        }
    }

    public void startListening(ICocktailHost iCocktailHost, String str, int i) {
        synchronized (this.mCocktailArr) {
            boolean ensureStateLoadedLocked = ensureStateLoadedLocked();
            Slog.d(TAG, "startListening: " + ensureStateLoadedLocked + this.mUserId + " init=" + this.mInitialzed);
        }
        if (this.mHost == null) {
            this.mHost = new HashMap();
        }
        synchronized (this.mHost) {
            CocktailHostInfo cocktailHostInfo = (CocktailHostInfo) this.mHost.get(str);
            if (cocktailHostInfo != null) {
                if (!cocktailHostInfo.isEqualBinder(iCocktailHost)) {
                    cocktailHostInfo.unlinkBinder();
                    this.mHost.put(str, new CocktailHostInfo(str, iCocktailHost, i));
                } else {
                    cocktailHostInfo.category = i;
                }
            } else {
                this.mHost.put(str, new CocktailHostInfo(str, iCocktailHost, i));
            }
            this.mHostCategory = 0;
            Iterator it = this.mHost.entrySet().iterator();
            while (it.hasNext()) {
                this.mHostCategory = ((CocktailHostInfo) ((Map.Entry) it.next()).getValue()).category | this.mHostCategory;
            }
        }
        if (this.mHostCategory == 0) {
            return;
        }
        if (!this.mInitialzed) {
            int currentModeId = this.mModeManager.getCurrentModeId();
            int refreshCocktailBarMode = this.mModeManager.refreshCocktailBarMode();
            if (currentModeId != refreshCocktailBarMode) {
                this.mModeManager.setMode(this.mUserId, refreshCocktailBarMode);
            } else if (refreshCocktailBarMode == 1) {
                sendInitialBroadcasts();
            }
            this.mInitialzed = true;
            return;
        }
        updateCocktailAttribute();
    }

    public final void updateCocktailAttribute() {
        synchronized (this.mCocktailArr) {
            if (!ensureStateLoadedLocked()) {
                Slog.i(TAG, "updateCocktailAttribute : not loaded u=" + this.mUserId);
                return;
            }
            int size = this.mCocktailArr.size();
            for (int i = 0; i < size; i++) {
                Cocktail cocktail = (Cocktail) this.mCocktailArr.valueAt(i);
                checkCocktailAttributeLocked(cocktail, this.mHostCategory);
                if (cocktail.getState() != 2) {
                    if (!this.mCocktailPolicyManager.isUpdatedCocktail(cocktail.getCocktailId(), this.mUserId) && this.mSettings.isEnabledCocktail(cocktail.getCocktailId())) {
                        sendEnableAndUpdateBroadcastLocked(cocktail, true);
                    }
                } else if (this.mCocktailPolicyManager.isUpdatedCocktail(cocktail.getCocktailId(), this.mUserId)) {
                    removeCocktailLocked(cocktail);
                }
            }
        }
    }

    public final void checkCocktailAttributeLocked(Cocktail cocktail, int i) {
        cocktail.setState((i == 0 || (cocktail.getProviderInfo().category & i) != 0) ? 0 : 2);
    }

    public final String updateCocktailBarSetting(String str) {
        synchronized (this.mCocktailArr) {
            if (!ensureStateLoadedLocked()) {
                Slog.i(TAG, "updateCocktailBarSetting : not loaded u=" + this.mUserId + " lastEnabled=" + str);
                return "";
            }
            String enabledCocktailsStr = this.mSettings.getEnabledCocktailsStr();
            if (enabledCocktailsStr != null && !str.equals(enabledCocktailsStr)) {
                updateFromSettingsLocked();
                str = enabledCocktailsStr;
            }
            return str;
        }
    }

    public final void updateFromSettingsLocked() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        this.mSettings.getChangedCocktailIdsListLocked(arrayList, arrayList2);
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            Cocktail cocktail = (Cocktail) this.mCocktailArr.get(((Integer) it.next()).intValue());
            if (cocktail != null) {
                removeCocktailLocked(cocktail);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Cocktail cocktail2 = (Cocktail) this.mCocktailArr.get(((Integer) it2.next()).intValue());
            if (cocktail2 != null) {
                sendEnableAndUpdateBroadcastLocked(cocktail2, true);
            }
        }
    }

    public boolean requestToUpdateCocktail(int i) {
        if (DEBUG) {
            Slog.i(TAG, "requestToUpdateCocktail : cocktailId = " + i);
        }
        synchronized (this.mCocktailArr) {
            if (!ensureStateLoadedLocked()) {
                Slog.i(TAG, "requestToUpdateCocktail : not loaded u=" + this.mUserId + " cocktail=" + i);
                return false;
            }
            return requestToUpdateCocktailLocked((Cocktail) this.mCocktailArr.get(i));
        }
    }

    public boolean requestToDisableCocktail(int i) {
        if (DEBUG) {
            Slog.i(TAG, "requestToDisableCocktail : cocktailId = " + i);
        }
        synchronized (this.mCocktailArr) {
            if (!ensureStateLoadedLocked()) {
                Slog.i(TAG, "requestToDisableCocktail : not loaded u=" + this.mUserId + " cocktail=" + i);
                return false;
            }
            return requestToDisableCocktailLocked((Cocktail) this.mCocktailArr.get(i));
        }
    }

    public boolean requestToUpdateCocktailByCategory(int i) {
        if (DEBUG) {
            Slog.i(TAG, "requestToUpdateCocktailByCategory : category = " + i);
        }
        synchronized (this.mCocktailArr) {
            if (!ensureStateLoadedLocked()) {
                Slog.i(TAG, "requestToUpdateCocktailByCategory : not loaded u=" + this.mUserId + " category=" + i);
                return false;
            }
            int size = this.mCocktailArr.size();
            boolean z = false;
            for (int i2 = 0; i2 < size; i2++) {
                Cocktail cocktail = (Cocktail) this.mCocktailArr.valueAt(i2);
                if (cocktail.getProviderInfo().category == i) {
                    z |= requestToUpdateCocktailLocked(cocktail);
                }
            }
            return z;
        }
    }

    public boolean requestToDisableCocktailByCategory(int i) {
        if (DEBUG) {
            Slog.i(TAG, "requestToDisableCocktailByCategory : category = " + i);
        }
        synchronized (this.mCocktailArr) {
            if (!ensureStateLoadedLocked()) {
                Slog.i(TAG, "requestToDisableCocktailByCategory : not loaded u=" + this.mUserId + " category=" + i);
                return false;
            }
            int size = this.mCocktailArr.size();
            boolean z = false;
            for (int i2 = 0; i2 < size; i2++) {
                Cocktail cocktail = (Cocktail) this.mCocktailArr.valueAt(i2);
                if (cocktail.getProviderInfo().category == i) {
                    z |= requestToDisableCocktailLocked(cocktail);
                }
            }
            return z;
        }
    }

    public final boolean requestToUpdateCocktailLocked(Cocktail cocktail) {
        int i;
        if (cocktail == null) {
            return false;
        }
        CocktailProviderInfo providerInfo = cocktail.getProviderInfo();
        if (providerInfo != null && ((i = providerInfo.category) == 4 || i == 32 || i == 128)) {
            this.mCocktailPolicyManager.enableUpdatableCocktail(cocktail.getCocktailId(), this.mUserId);
        }
        sendEnableAndUpdateBroadcastLocked(cocktail, true);
        return true;
    }

    public final boolean requestToDisableCocktailLocked(Cocktail cocktail) {
        int i;
        if (cocktail == null) {
            return false;
        }
        CocktailProviderInfo providerInfo = cocktail.getProviderInfo();
        if (providerInfo != null && (((i = providerInfo.category) == 4 || i == 32 || i == 128) && !this.mCocktailPolicyManager.isUpdatedCocktail(cocktail.getCocktailId(), this.mUserId))) {
            return false;
        }
        removeCocktailLocked(cocktail);
        return true;
    }

    public void setMode(int i, String str, int i2) {
        synchronized (this.mCocktailArr) {
            setModeLocked(i, str, i2);
        }
    }

    public final void setModeLocked(int i, String str, int i2) {
        if (i == 1) {
            if (ensureStateLoadedLocked()) {
                sendInitialBroadcastsLocked();
                return;
            }
            return;
        }
        if (i2 == 2) {
            removeAllUpdatedCocktailsLocked();
        } else {
            Iterator it = findCocktailsByCategoryLocked(4).iterator();
            while (it.hasNext()) {
                Cocktail cocktail = (Cocktail) it.next();
                if (this.mCocktailPolicyManager.isUpdatedCocktail(cocktail.getCocktailId(), this.mUserId)) {
                    removeCocktailLocked(cocktail);
                }
            }
        }
        Iterator it2 = findCocktailsByPrivateModeLocked(str).iterator();
        while (it2.hasNext()) {
            Cocktail cocktail2 = (Cocktail) it2.next();
            this.mCocktailPolicyManager.enableUpdatableCocktail(cocktail2.getCocktailId(), this.mUserId);
            sendEnableAndUpdateBroadcastLocked(cocktail2, true);
        }
    }

    public void unsetMode(int i, String str) {
        synchronized (this.mCocktailArr) {
            unsetModeLocked(i, str);
        }
    }

    public final void unsetModeLocked(int i, String str) {
        if (i != 1) {
            Iterator it = findCocktailsByPrivateModeLocked(str).iterator();
            while (it.hasNext()) {
                removeCocktailLocked((Cocktail) it.next());
            }
        }
    }

    public final ArrayList findCocktailsByCategoryLocked(int i) {
        ArrayList arrayList = new ArrayList();
        int size = this.mCocktailArr.size();
        for (int i2 = 0; i2 < size; i2++) {
            Cocktail cocktail = (Cocktail) this.mCocktailArr.valueAt(i2);
            if ((cocktail.getProviderInfo().category & i) != 0) {
                arrayList.add(cocktail);
            }
        }
        return arrayList;
    }

    public final ArrayList findCocktailsByPrivateModeLocked(String str) {
        ArrayList arrayList = new ArrayList();
        int size = this.mCocktailArr.size();
        for (int i = 0; i < size; i++) {
            Cocktail cocktail = (Cocktail) this.mCocktailArr.valueAt(i);
            String str2 = cocktail.getProviderInfo().privateMode;
            if (str2 != null && str2.equals(str)) {
                arrayList.add(cocktail);
            }
        }
        return arrayList;
    }

    public void removeAllUpdatedCocktails() {
        synchronized (this.mCocktailArr) {
            removeAllUpdatedCocktailsLocked();
        }
    }

    public final void removeAllUpdatedCocktailsLocked() {
        int size = this.mCocktailArr.size();
        for (int i = 0; i < size; i++) {
            Cocktail cocktail = (Cocktail) this.mCocktailArr.valueAt(i);
            if (this.mCocktailPolicyManager.isUpdatedCocktail(cocktail.getCocktailId(), this.mUserId)) {
                removeCocktailLocked(cocktail);
            }
        }
    }

    public final boolean ensureStateLoadedLocked() {
        if (!this.mStateLoaded) {
            if (!isUserRunningAndUnlocked(this.mUserId)) {
                Slog.d(TAG, "ensureStateLoadedLocked: User " + this.mUserId + " must be unlocked for widgets to be available");
                return false;
            }
            if (isProfileWithLockedParent(this.mUserId)) {
                Slog.d(TAG, "ensureStateLoadedLocked: Profile " + this.mUserId + " must have unlocked parent");
                return false;
            }
            resetLoadedDataLocked();
            if (!this.mConfig.reload()) {
                Slog.d(TAG, "ensureStateLoadedLocked: Profile " + this.mUserId + " service not loaded yet");
                return false;
            }
            for (int defaultVersion = this.mConfig.getDefaultVersion(); defaultVersion <= this.mConfig.getVersion(); defaultVersion++) {
                loadCocktailListLocked(defaultVersion);
            }
            loadStateLocked();
            this.mSettings = new CocktailBarSettings(this.mContext, this.mCocktailArr, this.mUserId);
            this.mStateLoaded = this.mCocktailArr.size() != 0;
        }
        return true;
    }

    public final boolean isUserRunningAndUnlocked(int i) {
        return this.mUserManager.isUserRunning(i) && StorageManager.isUserKeyUnlocked(i);
    }

    public final boolean isProfileWithLockedParent(int i) {
        UserInfo profileParent;
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            UserInfo userInfo = this.mUserManager.getUserInfo(i);
            if (userInfo != null && userInfo.isManagedProfile() && (profileParent = this.mUserManager.getProfileParent(i)) != null) {
                if (!isUserRunningAndUnlocked(profileParent.getUserHandle().getIdentifier())) {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                    return true;
                }
            }
            Binder.restoreCallingIdentity(clearCallingIdentity);
            return false;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    public final void resetLoadedDataLocked() {
        this.mCocktailArr.clear();
        this.mNextCocktailId = (this.mUserId << 16) | 0;
    }

    public void onConfigurationChanged() {
        Locale locale;
        Locale locale2 = Locale.getDefault();
        int i = this.mContext.getResources().getConfiguration().densityDpi;
        if (locale2 == null || (locale = this.mLocale) == null || !locale2.equals(locale) || i != this.mDefaultDisplayDensity) {
            this.mLocale = locale2;
            this.mDefaultDisplayDensity = i;
            synchronized (this.mCocktailArr) {
                if (!ensureStateLoadedLocked()) {
                    Slog.i(TAG, "onConfigurationChanged : not loaded u=" + this.mUserId);
                    return;
                }
                for (int size = this.mCocktailArr.size() - 1; size >= 0; size--) {
                    Cocktail cocktail = (Cocktail) this.mCocktailArr.valueAt(size);
                    ComponentName provider = cocktail.getProvider();
                    updateProvidersInfoForPackageLocked(provider != null ? provider.getPackageName() : null, cocktail.getVersion());
                }
                saveStateAsync();
            }
        }
    }

    public final void loadCocktailListLocked(int i) {
        List queryIntentReceivers = queryIntentReceivers(new Intent(Cocktail.getUpdateIntentName(i)), this.mUserId);
        int size = queryIntentReceivers == null ? 0 : queryIntentReceivers.size();
        int categoryIds = CocktailProviderInfo.getCategoryIds(this.mConfig.getCategoryFilter());
        if (DEBUG) {
            StringBuffer stringBuffer = new StringBuffer("loadCocktailListLocked: uid=");
            stringBuffer.append(this.mUserId);
            stringBuffer.append(" v=");
            stringBuffer.append(i);
            stringBuffer.append(" N=");
            stringBuffer.append(size);
            stringBuffer.append(" cat=");
            stringBuffer.append(categoryIds);
            stringBuffer.append(queryIntentReceivers);
            Slog.i(TAG, stringBuffer.toString());
        }
        for (int i2 = 0; i2 < size; i2++) {
            addProviderLocked((ResolveInfo) queryIntentReceivers.get(i2), categoryIds, i);
        }
    }

    public final Cocktail addProviderLocked(ResolveInfo resolveInfo, int i, int i2) {
        if ((resolveInfo.activityInfo.applicationInfo.flags & 262144) != 0) {
            if (DEBUG) {
                Slog.i(TAG, "addProviderLocked : Application FLAG_EXTERNAL_STORAGE");
            }
            return null;
        }
        if (SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE") || SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING") || SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING")) {
            if (!SemEmergencyManager.isEmergencyMode(this.mContext)) {
                if (!resolveInfo.activityInfo.isEnabled()) {
                    if (DEBUG) {
                        Slog.i(TAG, "addProviderLocked : disable");
                    }
                    return null;
                }
            } else if (DEBUG) {
                Slog.i(TAG, "addProviderLocked : even if the package is disable in emergency mode, allow creating cocktail");
            }
        } else if (!resolveInfo.activityInfo.isEnabled()) {
            if (DEBUG) {
                Slog.i(TAG, "addProviderLocked : disable");
            }
            return null;
        }
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        ComponentName componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
        if (lookupProviderLocked(componentName) != null) {
            Slog.e(TAG, "addProviderLocked : already existed(" + componentName.toString() + ")");
            return null;
        }
        Cocktail parseProviderInfoXmlLocked = parseProviderInfoXmlLocked(componentName, resolveInfo, i, i2);
        if (parseProviderInfoXmlLocked != null) {
            parseProviderInfoXmlLocked.setVersion(i2);
            if (parseProviderInfoXmlLocked.getProviderInfo().category == 512) {
                this.mCocktailPolicyManager.establishPolicy(parseProviderInfoXmlLocked, 6, 1);
            }
            this.mCocktailArr.put(parseProviderInfoXmlLocked.getCocktailId(), parseProviderInfoXmlLocked);
            if (DEBUG) {
                Slog.i(TAG, "addProviderLocked : success");
            }
            return parseProviderInfoXmlLocked;
        }
        Slog.e(TAG, "addProviderLocked : parseProviderInfoXmlLocked cocktail is null" + componentName.toString());
        return null;
    }

    public final Cocktail parseProviderInfoXmlLocked(ComponentName componentName, ResolveInfo resolveInfo, int i, int i2) {
        int i3 = this.mNextCocktailId + 1;
        this.mNextCocktailId = i3;
        Cocktail cocktail = new Cocktail(i3);
        if (parseAndUpdateProviderInfoXml(cocktail, componentName, resolveInfo, i, i2)) {
            checkCocktailAttributeLocked(cocktail, this.mHostCategory);
            return cocktail;
        }
        this.mNextCocktailId--;
        return null;
    }

    public final boolean parseAndUpdateProviderInfoXml(Cocktail cocktail, ComponentName componentName, ResolveInfo resolveInfo, int i, int i2) {
        int next;
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        boolean z = false;
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                XmlResourceParser loadXmlMetaData = activityInfo.loadXmlMetaData(this.mContext.getPackageManager(), "com.samsung.android.cocktail.provider");
                try {
                    if (loadXmlMetaData == null) {
                        Slog.w(TAG, "No com.samsung.android.cocktail.provider meta-data for CocktailBar provider '" + componentName + '\'');
                        if (loadXmlMetaData != null) {
                            loadXmlMetaData.close();
                        }
                        return false;
                    }
                    do {
                        next = loadXmlMetaData.next();
                        if (next == 1) {
                            break;
                        }
                    } while (next != 2);
                    if ("cocktail-provider".equals(loadXmlMetaData.getName())) {
                        CocktailProviderInfo create = CocktailProviderInfo.create(this.mContext, resolveInfo, componentName, loadXmlMetaData, i, i2);
                        if (create != null && CocktailBarUtils.CocktailBarWhiteList.isAllowedCocktailCategory(create, this.mUserId)) {
                            cocktail.setProviderInfo(create);
                            cocktail.setUid(activityInfo.applicationInfo.uid);
                            z = true;
                        }
                        loadXmlMetaData.close();
                        return z;
                    }
                    Slog.w(TAG, "Meta-data does not start with cocktail-provider tag for CocktailBar provider '" + componentName + '\'');
                    loadXmlMetaData.close();
                    return false;
                } catch (Exception e) {
                    e = e;
                    xmlResourceParser = loadXmlMetaData;
                    Slog.w(TAG, "XML parsing failed for CocktailBar provider '" + componentName + '\'', e);
                    if (xmlResourceParser != null) {
                        xmlResourceParser.close();
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    xmlResourceParser = loadXmlMetaData;
                    if (xmlResourceParser != null) {
                        xmlResourceParser.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public final boolean addProvidersForPackageLocked(String str, int i) {
        boolean z = DEBUG;
        if (z) {
            Slog.i(TAG, "addProvidersForPackageLocked : pkgName = " + str + " v=" + i);
        }
        String updateIntentName = Cocktail.getUpdateIntentName(i);
        Intent intent = new Intent(updateIntentName);
        intent.setPackage(str);
        List queryIntentReceivers = queryIntentReceivers(intent, this.mUserId);
        int size = queryIntentReceivers == null ? 0 : queryIntentReceivers.size();
        if (z) {
            Slog.i(TAG, "addProvidersForPackageLocked : queryIntentReceivers=" + size);
        }
        int categoryIds = CocktailProviderInfo.getCategoryIds(this.mConfig.getCategoryFilter());
        boolean z2 = false;
        boolean z3 = false;
        for (int i2 = 0; i2 < size; i2++) {
            ResolveInfo resolveInfo = (ResolveInfo) queryIntentReceivers.get(i2);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            boolean z4 = DEBUG;
            if (z4) {
                Slog.i(TAG, "addProvidersForPackageLocked : " + str + " ai=" + activityInfo.packageName);
            }
            if ((activityInfo.applicationInfo.flags & 262144) != 0) {
                if (z4) {
                    Slog.i(TAG, "addProvidersForPackageLocked : application FLAG_EXTERNAL_STORAGE" + activityInfo.packageName);
                }
            } else if (TextUtils.equals(str, activityInfo.packageName)) {
                Cocktail addProviderLocked = addProviderLocked(resolveInfo, categoryIds, i);
                if (addProviderLocked != null) {
                    if (addProviderLocked.getProviderInfo().category == 4) {
                        z3 = true;
                    }
                    sendUpdateIntentLocked(addProviderLocked, updateIntentName, false);
                    z2 = true;
                } else if (z4) {
                    Slog.i(TAG, "addProvidersForPackageLocked : Cocktail is null for " + str);
                }
            }
        }
        if (z2 && z3) {
            updateToolLauncher();
        }
        return z2;
    }

    public final boolean updateProvidersForPackageLocked(String str, int i, Set set) {
        boolean z;
        int i2;
        int i3;
        String str2;
        Cocktail cocktail;
        boolean z2;
        boolean z3;
        boolean z4 = DEBUG;
        String str3 = "updateProvidersForPackageLocked : ";
        if (z4) {
            Slog.i(TAG, "updateProvidersForPackageLocked : " + str);
        }
        if (str == null) {
            Slog.i(TAG, "updateProvidersForPackageLocked : invalide packageName");
            return false;
        }
        HashSet hashSet = new HashSet();
        String updateIntentName = Cocktail.getUpdateIntentName(i);
        Intent intent = new Intent(updateIntentName);
        intent.setPackage(str);
        List queryIntentReceivers = queryIntentReceivers(intent, this.mUserId);
        int size = queryIntentReceivers == null ? 0 : queryIntentReceivers.size();
        if (z4) {
            Slog.i(TAG, "updateProvidersForPackageLocked : queryIntentReceivers=" + size);
        }
        int categoryIds = CocktailProviderInfo.getCategoryIds(this.mConfig.getCategoryFilter());
        boolean z5 = false;
        int i4 = 0;
        boolean z6 = false;
        while (i4 < size) {
            ResolveInfo resolveInfo = (ResolveInfo) queryIntentReceivers.get(i4);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            if (DEBUG) {
                String str4 = TAG;
                StringBuilder sb = new StringBuilder();
                sb.append(str3);
                sb.append(str);
                z = z5;
                sb.append(" ai=");
                sb.append(activityInfo.packageName);
                Slog.i(str4, sb.toString());
            } else {
                z = z5;
            }
            if ((activityInfo.applicationInfo.flags & 262144) == 0 && TextUtils.equals(str, activityInfo.packageName)) {
                ComponentName componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
                Cocktail lookupProviderLocked = lookupProviderLocked(componentName);
                if (lookupProviderLocked == null) {
                    Cocktail addProviderLocked = addProviderLocked(resolveInfo, categoryIds, i);
                    if (addProviderLocked != null) {
                        hashSet.add(activityInfo.name);
                        if (addProviderLocked.getProviderInfo().category == 4) {
                            z6 = true;
                        }
                        if (this.mSettings.isEnabledCocktail(addProviderLocked.getCocktailId())) {
                            z3 = true;
                            sendEnableAndUpdateBroadcastLocked(addProviderLocked, true);
                        } else {
                            z3 = true;
                            sendUpdateIntentLocked(addProviderLocked, updateIntentName, false);
                        }
                        z5 = z3;
                        i2 = i4;
                        i3 = categoryIds;
                        str2 = str3;
                    }
                } else if (lookupProviderLocked.getVersion() == i) {
                    str2 = str3;
                    i2 = i4;
                    i3 = categoryIds;
                    parseAndUpdateProviderInfoXml(lookupProviderLocked, componentName, resolveInfo, categoryIds, i);
                    hashSet.add(activityInfo.name);
                    if (lookupProviderLocked.getProviderInfo().category == 4) {
                        cocktail = lookupProviderLocked;
                        z2 = true;
                        z6 = true;
                    } else {
                        if (lookupProviderLocked.getProviderInfo().category == 512) {
                            cocktail = lookupProviderLocked;
                            this.mCocktailPolicyManager.establishPolicy(cocktail, 6, 2);
                        } else {
                            cocktail = lookupProviderLocked;
                        }
                        z2 = true;
                    }
                    cocktail.setPackageUpdated(z2);
                    sendUpdateIntentLocked(cocktail, updateIntentName, false);
                    z5 = true;
                } else {
                    i2 = i4;
                    i3 = categoryIds;
                    str2 = str3;
                    Slog.i(TAG, "updateProvidersForPackageLocked : can not get right cocktail");
                    z5 = z;
                }
                i4 = i2 + 1;
                str3 = str2;
                categoryIds = i3;
            }
            i2 = i4;
            i3 = categoryIds;
            str2 = str3;
            z5 = z;
            i4 = i2 + 1;
            str3 = str2;
            categoryIds = i3;
        }
        boolean z7 = z5;
        for (int size2 = this.mCocktailArr.size() - 1; size2 >= 0; size2--) {
            Cocktail cocktail2 = (Cocktail) this.mCocktailArr.valueAt(size2);
            if (cocktail2.getVersion() == i && TextUtils.equals(str, getPackageNameFromCocktail(cocktail2))) {
                if (!hashSet.contains(cocktail2.getProvider() != null ? cocktail2.getProvider().getClassName() : null)) {
                    if (set != null) {
                        set.add(cocktail2.getProvider());
                    }
                    if (cocktail2.getProviderInfo().category == 4) {
                        z6 = true;
                    }
                    z7 = removeProviderLocked(size2, cocktail2);
                }
            }
        }
        if (z7) {
            if (z6) {
                updateToolLauncher();
            }
            if (SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE") && SemEmergencyManager.isEmergencyMode(this.mContext)) {
                return false;
            }
        }
        return z7;
    }

    public final boolean updateProvidersInfoForPackageLocked(String str, int i) {
        int i2;
        String str2 = str;
        if (DEBUG) {
            Slog.i(TAG, "updateProvidersInfoForPackageLocked : " + str2 + " version=" + i);
        }
        if (str2 == null) {
            Slog.i(TAG, "updateProvidersInfoForPackageLocked invalid packageName version=" + i);
            return false;
        }
        HashSet hashSet = new HashSet();
        String updateIntentName = Cocktail.getUpdateIntentName(i);
        Intent intent = new Intent(updateIntentName);
        intent.setPackage(str2);
        List queryIntentReceivers = queryIntentReceivers(intent, this.mUserId);
        int size = queryIntentReceivers == null ? 0 : queryIntentReceivers.size();
        int categoryIds = CocktailProviderInfo.getCategoryIds(this.mConfig.getCategoryFilter());
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        while (i3 < size) {
            ResolveInfo resolveInfo = (ResolveInfo) queryIntentReceivers.get(i3);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            if (DEBUG) {
                Slog.i(TAG, "updateProvidersInfoForPackageLocked : " + str2 + " ai=" + activityInfo.packageName);
            }
            if ((activityInfo.applicationInfo.flags & 262144) == 0 && TextUtils.equals(str2, activityInfo.packageName)) {
                ComponentName componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
                Cocktail lookupProviderLocked = lookupProviderLocked(componentName);
                if (lookupProviderLocked == null) {
                    Cocktail addProviderLocked = addProviderLocked(resolveInfo, categoryIds, i);
                    if (addProviderLocked != null) {
                        hashSet.add(activityInfo.name);
                        if (addProviderLocked.getProviderInfo().category == 4) {
                            z2 = true;
                        }
                        if (this.mSettings.isEnabledCocktail(addProviderLocked.getCocktailId())) {
                            sendEnableAndUpdateBroadcastLocked(addProviderLocked, true);
                        } else {
                            sendUpdateIntentLocked(addProviderLocked, updateIntentName, false);
                        }
                        z = true;
                    }
                } else {
                    if (lookupProviderLocked.getVersion() == i) {
                        i2 = i3;
                        parseAndUpdateProviderInfoXml(lookupProviderLocked, componentName, resolveInfo, categoryIds, i);
                        hashSet.add(activityInfo.name);
                        if (lookupProviderLocked.getProviderInfo().category == 4) {
                            z2 = true;
                        } else if (lookupProviderLocked.getProviderInfo().category == 512) {
                            this.mCocktailPolicyManager.establishPolicy(lookupProviderLocked, 6, 2);
                        }
                        sendUpdateIntentLocked(lookupProviderLocked, updateIntentName, false);
                        z = true;
                    } else {
                        i2 = i3;
                        Slog.i(TAG, "updateProvidersInfoForPackageLocked : can not get right cocktail");
                    }
                    i3 = i2 + 1;
                    str2 = str;
                }
            }
            i2 = i3;
            i3 = i2 + 1;
            str2 = str;
        }
        if (z) {
            if (z2) {
                updateToolLauncher();
            }
            if (SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE") && SemEmergencyManager.isEmergencyMode(this.mContext)) {
                return false;
            }
        }
        return z;
    }

    public final boolean removeProvidersForPackageLocked(String str) {
        if (DEBUG) {
            Slog.i(TAG, "removeProvidersForPackageLocked : pkgName = " + str);
        }
        boolean z = false;
        boolean z2 = false;
        for (int size = this.mCocktailArr.size() - 1; size >= 0; size--) {
            Cocktail cocktail = (Cocktail) this.mCocktailArr.valueAt(size);
            if (TextUtils.equals(str, getPackageNameFromCocktail(cocktail))) {
                z = removeProviderLocked(size, cocktail);
                if (cocktail.getProviderInfo().category == 4) {
                    z2 = true;
                }
            }
        }
        if (z) {
            if (z2) {
                updateToolLauncher();
            }
            Intent intent = new Intent("com.samsung.android.app.cocktailbarservice.action.COCKTAIL_BAR_COCKTAIL_UNINSTALLED");
            intent.addFlags(268435456);
            intent.setPackage(Constants.COCKTAIL_BAR_PACKAGE_NAME);
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                this.mContext.sendBroadcastAsUser(intent, new UserHandle(this.mUserId));
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return z;
    }

    public final boolean removeProviderLocked(int i, Cocktail cocktail) {
        removeCocktailLocked(cocktail.getCocktailId());
        if (cocktail.getProviderInfo().category == 512) {
            this.mCocktailPolicyManager.establishPolicy(cocktail, 6, 3);
        }
        if (SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE") && SemEmergencyManager.isEmergencyMode(this.mContext)) {
            return false;
        }
        this.mEnabledCocktailPackages.removeEnabledProvider(cocktail.getProvider());
        this.mCocktailArr.remove(cocktail.getCocktailId());
        return true;
    }

    public final List queryIntentReceivers(Intent intent, int i) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            int i2 = (isProfileWithUnlockedParent(i) ? 269222016 : 268435584) | 1024;
            if (EMERGENCY_MODE_ENABLED && SemEmergencyManager.isEmergencyMode(this.mContext)) {
                return this.mPm.queryIntentReceivers(intent, intent.resolveTypeIfNeeded(this.mContext.getContentResolver()), 640L, i).getList();
            }
            return this.mPm.queryIntentReceivers(intent, intent.resolveTypeIfNeeded(this.mContext.getContentResolver()), i2, i).getList();
        } catch (RemoteException unused) {
            return Collections.emptyList();
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final boolean isProfileWithUnlockedParent(int i) {
        UserInfo profileParent;
        UserInfo userInfo = this.mUserManager.getUserInfo(i);
        return userInfo != null && userInfo.isManagedProfile() && (profileParent = this.mUserManager.getProfileParent(i)) != null && this.mUserManager.isUserUnlockingOrUnlocked(profileParent.getUserHandle());
    }

    public final Cocktail lookupProviderLocked(ComponentName componentName) {
        if (componentName == null) {
            return null;
        }
        int size = this.mCocktailArr.size();
        for (int i = 0; i < size; i++) {
            Cocktail cocktail = (Cocktail) this.mCocktailArr.valueAt(i);
            if (componentName.equals(cocktail.getProvider() != null ? cocktail.getProvider() : null)) {
                return cocktail;
            }
        }
        return null;
    }

    public final Cocktail lookupCocktailLocked(int i, int i2, String str) {
        Cocktail cocktail;
        if (str != null && (cocktail = (Cocktail) this.mCocktailArr.get(i)) != null && cocktail.getUid() == i2 && TextUtils.equals(str, getPackageNameFromCocktail(cocktail))) {
            return cocktail;
        }
        return null;
    }

    public final void loadStateLocked() {
        FileInputStream fileInputStream = null;
        try {
            try {
                fileInputStream = savedStateFile().openRead();
                readStateFromFileLocked(fileInputStream);
            } catch (FileNotFoundException e) {
                Slog.w(TAG, "Failed to read state: " + e);
            }
        } finally {
            IoUtils.closeQuietly(fileInputStream);
        }
    }

    public final void saveStateAsync() {
        BackgroundThread.getHandler().post(this.mSaveStateRunnable);
    }

    public final void saveStateLocked() {
        AtomicFile savedStateFile = savedStateFile();
        try {
            FileOutputStream startWrite = savedStateFile.startWrite();
            if (writeStateToFileLocked(startWrite)) {
                savedStateFile.finishWrite(startWrite);
            } else {
                savedStateFile.failWrite(startWrite);
                Slog.w(TAG, "Failed to save state, restoring backup.");
            }
        } catch (IOException e) {
            Slog.w(TAG, "Failed open state file for write: " + e);
        }
    }

    public final boolean writeStateToFileLocked(FileOutputStream fileOutputStream) {
        try {
            FastXmlSerializer fastXmlSerializer = new FastXmlSerializer();
            fastXmlSerializer.setOutput(fileOutputStream, "utf-8");
            fastXmlSerializer.startDocument(null, Boolean.TRUE);
            fastXmlSerializer.startTag(null, "gs");
            int size = this.mCocktailArr.size();
            for (int i = 0; i < size; i++) {
                CocktailProviderInfo providerInfo = ((Cocktail) this.mCocktailArr.valueAt(i)).getProviderInfo();
                if (providerInfo != null) {
                    fastXmlSerializer.startTag(null, KnoxAnalyticsDataConverter.PAYLOAD);
                    fastXmlSerializer.attribute(null, "pkg", providerInfo.provider.getPackageName());
                    fastXmlSerializer.attribute(null, "cl", providerInfo.provider.getClassName());
                    fastXmlSerializer.endTag(null, KnoxAnalyticsDataConverter.PAYLOAD);
                }
            }
            fastXmlSerializer.endTag(null, "gs");
            fastXmlSerializer.endDocument();
            return true;
        } catch (IOException e) {
            Slog.w(TAG, "Failed to write state: " + e);
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:205:0x029a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:212:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0467 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:254:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d5 A[Catch: all -> 0x00e3, Exception -> 0x00e7, IndexOutOfBoundsException -> 0x0189, IOException -> 0x021f, XmlPullParserException -> 0x02b5, NumberFormatException -> 0x034b, NullPointerException -> 0x03e1, TRY_LEAVE, TryCatch #16 {NumberFormatException -> 0x034b, blocks: (B:4:0x000a, B:5:0x0019, B:7:0x0020, B:9:0x002c, B:14:0x0038, B:16:0x0041, B:35:0x0054, B:22:0x0088, B:25:0x00a1, B:27:0x00a9, B:29:0x00d5, B:18:0x0067, B:21:0x0072, B:33:0x0078), top: B:3:0x000a, outer: #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:335:0x04f1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:342:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e0 A[LOOP:0: B:5:0x0019->B:40:0x00e0, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00dd A[EDGE_INSN: B:41:0x00dd->B:42:0x00dd BREAK  A[LOOP:0: B:5:0x0019->B:40:0x00e0], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0458  */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v12, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v41, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v43 */
    /* JADX WARN: Type inference failed for: r5v50, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v52 */
    /* JADX WARN: Type inference failed for: r5v60, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v62 */
    /* JADX WARN: Type inference failed for: r5v81 */
    /* JADX WARN: Type inference failed for: r5v82 */
    /* JADX WARN: Type inference failed for: r5v83 */
    /* JADX WARN: Type inference failed for: r5v84 */
    /* JADX WARN: Type inference failed for: r5v85 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void readStateFromFileLocked(java.io.FileInputStream r18) {
        /*
            Method dump skipped, instructions count: 1292
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.cocktailbar.CocktailBarManagerServiceImpl.readStateFromFileLocked(java.io.FileInputStream):void");
    }

    public static File getSettingsFile(int i) {
        return new File(Environment.getUserSystemDirectory(i), "cocktails.xml");
    }

    public final AtomicFile savedStateFile() {
        File userSystemDirectory = Environment.getUserSystemDirectory(this.mUserId);
        File settingsFile = getSettingsFile(this.mUserId);
        if (!settingsFile.exists() && this.mUserId == 0) {
            if (!userSystemDirectory.exists() && !userSystemDirectory.mkdirs()) {
                Slog.w(TAG, "savedStateFile Failed mkdirs");
            }
            if (!new File("/data/system/cocktails.xml").renameTo(settingsFile)) {
                Slog.w(TAG, "savedStateFile Failed rename to setting file.");
            }
        }
        return new AtomicFile(settingsFile);
    }

    public void initialize() {
        if (DEBUG) {
            Slog.i(TAG, "initialize");
        }
        synchronized (this.mCocktailArr) {
            ensureStateLoadedLocked();
        }
        int currentModeId = this.mModeManager.getCurrentModeId();
        int refreshCocktailBarMode = this.mModeManager.refreshCocktailBarMode();
        if (currentModeId != refreshCocktailBarMode) {
            this.mModeManager.setMode(this.mUserId, refreshCocktailBarMode);
        } else if (refreshCocktailBarMode == 1) {
            sendInitialBroadcasts();
        }
        this.mInitialzed = true;
    }

    public final void sendInitialBroadcasts() {
        synchronized (this.mCocktailArr) {
            int size = this.mCocktailArr.size();
            for (int i = 0; i < size; i++) {
                checkCocktailAttributeLocked((Cocktail) this.mCocktailArr.valueAt(i), this.mHostCategory);
            }
            sendInitialBroadcastsLocked();
        }
    }

    public final void sendInitialBroadcastsLocked() {
        if (!ensureStateLoadedLocked()) {
            Slog.i(TAG, "sendInitialBroadcastsLocked : not loaded u=" + this.mUserId);
            return;
        }
        ArrayList enableCocktailIds = this.mSettings.getEnableCocktailIds();
        ArrayList arrayList = new ArrayList();
        Iterator it = enableCocktailIds.iterator();
        while (it.hasNext()) {
            int intValue = ((Integer) it.next()).intValue();
            Cocktail cocktail = (Cocktail) this.mCocktailArr.get(intValue);
            if (cocktail != null && cocktail.getState() == 0 && cocktail.getProvider() != null) {
                String packageName = cocktail.getProvider().getPackageName();
                if (this.mEnabledCocktailPackages.getEnabledCount(packageName) == 0) {
                    this.mEnabledCocktailPackages.putEnabledProvider(cocktail.getProvider());
                    arrayList.add(cocktail.getProvider().getPackageName());
                    try {
                        if (DEBUG) {
                            Slog.i(TAG, "sendInitialBroadcastsLocked : addPowerSaveWhitelistApp cocktailId = " + intValue + packageName);
                        }
                        long clearCallingIdentity = Binder.clearCallingIdentity();
                        try {
                            CocktailBarHistory.getInstance().recordPowerWhitelistHistory(cocktail.getCocktailId(), "sendInitialBroadcastsLocked addPowerSaveWhitelistApp");
                            this.mLocalDeviceIdleController.addPowerSaveWhitelistApp(packageName);
                            Binder.restoreCallingIdentity(clearCallingIdentity);
                        } catch (Throwable th) {
                            Binder.restoreCallingIdentity(clearCallingIdentity);
                            throw th;
                            break;
                        }
                    } catch (RemoteException e) {
                        Slog.d(TAG, "sendInitialBroadcastsLocked: fail to add pm white list " + packageName);
                        e.printStackTrace();
                    }
                } else {
                    this.mEnabledCocktailPackages.putEnabledProvider(cocktail.getProvider());
                }
            } else {
                StringBuffer stringBuffer = new StringBuffer("sendInitialBroadcastsLocked : invalid cocktail ");
                stringBuffer.append(intValue);
                stringBuffer.append(" c=");
                stringBuffer.append(cocktail);
                if (cocktail != null) {
                    stringBuffer.append(" state=");
                    stringBuffer.append(cocktail.getState());
                    stringBuffer.append(" p=");
                    stringBuffer.append(cocktail.getProvider());
                }
                Slog.d(TAG, stringBuffer.toString());
            }
            sendEnableAndUpdateBroadcastLocked(cocktail, true);
        }
    }

    public final void sendEnableAndUpdateBroadcastLocked(Cocktail cocktail, boolean z) {
        if (!ensureStateLoadedLocked()) {
            Slog.i(TAG, "sendEnableAndUpdateBroadcastLocked : not loaded u=" + this.mUserId + " cocktail=" + cocktail);
            return;
        }
        if (cocktail != null) {
            if (cocktail.getState() == 2) {
                Slog.i(TAG, "sendEnableAndUpdateBroadcastLocked : cocktail(" + cocktail.getCocktailId() + ") is disabled");
                return;
            }
            if (z || this.mCocktailPolicyManager.canSendUpdateIntent(cocktail, this.mSettings)) {
                sendEnableIntentLocked(cocktail);
                sendUpdateIntentLocked(cocktail, cocktail.getUpdateIntentName(), true);
            }
        }
    }

    public final void sendEnableIntentLocked(Cocktail cocktail) {
        boolean z = DEBUG;
        if (z) {
            Slog.i(TAG, "sendEnableIntentLocked : cocktailId = " + cocktail.getCocktailId());
        }
        if (cocktail.getState() != 0) {
            Slog.i(TAG, "sendEnableIntentLocked : cocktail(" + cocktail.getCocktailId() + ") has state(" + cocktail.getState() + ")");
            return;
        }
        if (cocktail.getProvider() == null) {
            Slog.i(TAG, "sendEnableIntentLocked : invalid provider info cocktailId = " + cocktail.getCocktailId());
            return;
        }
        registerForBroadcastsLocked(cocktail);
        Intent intent = new Intent("com.samsung.android.cocktail.action.COCKTAIL_ENABLED");
        intent.addFlags(268435456);
        intent.setComponent(cocktail.getProvider());
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mContext.sendBroadcastAsUser(intent, new UserHandle(this.mUserId));
            cocktail.setState(1);
            String packageName = cocktail.getProvider().getPackageName();
            CocktailBarHistory.getInstance().recordSemCocktailProviderBr("sendEnableIntentLocked : PackageName - " + packageName + ", " + cocktail.dump());
            if (this.mEnabledCocktailPackages.getEnabledCount(packageName) == 0) {
                this.mEnabledCocktailPackages.putEnabledProvider(cocktail.getProvider());
                if (z) {
                    try {
                        Slog.i(TAG, "sendEnableIntentLocked : addPowerSaveWhitelistApp cocktailId = " + cocktail.getCocktailId() + packageName);
                    } catch (RemoteException e) {
                        Slog.d(TAG, "sendEnableIntentLocked: fail to add power save whitelist " + packageName);
                        e.printStackTrace();
                    }
                }
                CocktailBarHistory.getInstance().recordPowerWhitelistHistory(cocktail.getCocktailId(), "sendEnableIntentLocked addPowerSaveWhitelistApp");
                this.mLocalDeviceIdleController.addPowerSaveWhitelistApp(packageName);
            } else {
                this.mEnabledCocktailPackages.putEnabledProvider(cocktail.getProvider());
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final void sendUpdateIntentLocked(Cocktail cocktail, String str, boolean z) {
        if (cocktail.getState() == 2) {
            Slog.i(TAG, "sendUpdateIntentLocked : cocktail(" + cocktail.getCocktailId() + ") is disabled");
            return;
        }
        if (z || this.mCocktailPolicyManager.canSendUpdateIntent(cocktail, this.mSettings)) {
            if (DEBUG) {
                Slog.i(TAG, "sendUpdateIntentLocked : cocktailId = " + cocktail.getCocktailId());
            }
            Intent intent = new Intent(str);
            intent.addFlags(268435456);
            intent.putExtra("cocktailIds", new int[]{cocktail.getCocktailId()});
            intent.setComponent(cocktail.getProvider());
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                this.mContext.sendBroadcastAsUser(intent, new UserHandle(this.mUserId));
                CocktailBarHistory.getInstance().recordSemCocktailProviderBr("sendUpdateIntentLocked : PackageName - " + cocktail.getProvider().getPackageName() + ", " + cocktail.dump());
                Binder.restoreCallingIdentity(clearCallingIdentity);
                this.mCocktailPolicyManager.enableUpdatableCocktail(cocktail.getCocktailId(), this.mUserId);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(clearCallingIdentity);
                throw th;
            }
        }
    }

    public final void sendDisableIntentLocked(Cocktail cocktail) {
        boolean z = DEBUG;
        if (z) {
            Slog.i(TAG, "sendDisableIntentLocked : cocktailId = " + cocktail.getCocktailId());
        }
        if (cocktail.getProvider() == null) {
            Slog.i(TAG, "sendDisableIntentLocked : invalied provider info cocktailId = " + cocktail.getCocktailId());
            return;
        }
        cancelBroadcasts(cocktail);
        Intent intent = new Intent("com.samsung.android.cocktail.action.COCKTAIL_DISABLED");
        intent.addFlags(268435456);
        intent.setComponent(cocktail.getProvider());
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mContext.sendBroadcastAsUser(intent, new UserHandle(this.mUserId));
            if (cocktail.getState() != 2) {
                cocktail.setState(0);
            }
            String packageName = cocktail.getProvider().getPackageName();
            CocktailBarHistory.getInstance().recordSemCocktailProviderBr("sendDisableIntentLocked : PackageName - " + packageName + ", " + cocktail.dump());
            int enabledCount = this.mEnabledCocktailPackages.getEnabledCount(packageName);
            this.mEnabledCocktailPackages.removeEnabledProvider(cocktail.getProvider());
            int enabledCount2 = this.mEnabledCocktailPackages.getEnabledCount(packageName);
            if (enabledCount >= 1 && enabledCount2 == 0) {
                if (z) {
                    try {
                        Slog.i(TAG, "sendDisableIntentLocked : removePowerSaveWhitelistApp cocktailId = " + cocktail.getCocktailId() + packageName);
                    } catch (RemoteException | UnsupportedOperationException e) {
                        Slog.d(TAG, "sendDisableIntentLocked: fail to remove pm white list " + packageName);
                        e.printStackTrace();
                    }
                }
                CocktailBarHistory.getInstance().recordPowerWhitelistHistory(cocktail.getCocktailId(), "sendDisableIntentLocked removePowerSaveWhitelistApp");
                this.mLocalDeviceIdleController.removePowerSaveWhitelistApp(packageName);
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final void sendCocktailChangedVisibilityIntentLocked(Cocktail cocktail, int i) {
        if (DEBUG) {
            Slog.i(TAG, "sendCocktailChangedVisibilityIntentLocked");
        }
        Intent intent = new Intent("com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED");
        intent.putExtra("cocktailId", cocktail.getCocktailId());
        intent.putExtra("cocktailVisibility", i);
        intent.addFlags(268435456);
        intent.setComponent(cocktail.getProvider());
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mContext.sendBroadcastAsUser(intent, new UserHandle(this.mUserId));
            CocktailBarHistory.getInstance().recordSemCocktailProviderBr("sendCocktailChangedVisibilityIntentLocked : PackageName - " + cocktail.getProvider().getPackageName() + ", " + cocktail.dump());
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final void registerForBroadcastsLocked(Cocktail cocktail) {
        if (DEBUG) {
            Slog.i(TAG, "registerForBroadcastsLocked");
        }
        CocktailProviderInfo providerInfo = cocktail.getProviderInfo();
        if (providerInfo == null || providerInfo.updatePeriodMillis <= 0) {
            return;
        }
        boolean z = cocktail.getBroadcast() != null;
        Intent intent = new Intent(cocktail.getUpdateIntentName());
        intent.putExtra("cocktailIds", new int[]{cocktail.getCocktailId()});
        intent.setComponent(providerInfo.provider);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            PendingIntent broadcastAsUser = PendingIntent.getBroadcastAsUser(this.mContext, 1, intent, 201326592, new UserHandle(this.mUserId));
            if (z) {
                return;
            }
            cocktail.setBroadcast(broadcastAsUser);
            long j = providerInfo.updatePeriodMillis;
            int i = MIN_UPDATE_PERIOD;
            if (j < i) {
                j = i;
            }
            long j2 = j;
            clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                this.mAlarmManager.setInexactRepeating(2, SystemClock.elapsedRealtime() + j2, j2, broadcastAsUser);
            } finally {
            }
        } finally {
        }
    }

    public final void cancelBroadcasts(Cocktail cocktail) {
        PendingIntent broadcast = cocktail.getBroadcast();
        if (broadcast != null) {
            this.mAlarmManager.cancel(broadcast);
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                broadcast.cancel();
                Binder.restoreCallingIdentity(clearCallingIdentity);
                cocktail.setBroadcast((PendingIntent) null);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(clearCallingIdentity);
                throw th;
            }
        }
    }

    public final void updateToolLauncher() {
        HashMap hashMap = this.mHost;
        if (hashMap == null || hashMap.isEmpty()) {
            Slog.i(TAG, "updateToolLauncher : no active host");
            return;
        }
        synchronized (this.mHost) {
            Iterator it = this.mHost.entrySet().iterator();
            while (it.hasNext()) {
                CocktailHostInfo cocktailHostInfo = (CocktailHostInfo) ((Map.Entry) it.next()).getValue();
                this.mCommandLogger.recordHostCommand(cocktailHostInfo.mPackageName, "updateToolLauncher uid=", this.mUserId);
                try {
                    cocktailHostInfo.callbackHost.updateToolLauncher(this.mUserId);
                } catch (RemoteException unused) {
                    it.remove();
                }
            }
        }
    }

    public final boolean checkSize(RemoteViews remoteViews) {
        if (remoteViews == null || remoteViews.estimateMemoryUsage() <= 10000000) {
            return true;
        }
        Slog.w(TAG, "checkSize : size =" + remoteViews.estimateMemoryUsage());
        return false;
    }

    public void updateCocktail(String str, int i, CocktailInfo cocktailInfo) {
        if (DEBUG) {
            Slog.i(TAG, "updateCocktail : cocktailId = " + i);
        }
        synchronized (this.mCocktailArr) {
            if (!ensureStateLoadedLocked()) {
                Slog.d(TAG, "updateCocktail: u=" + this.mUserId + " cocktail=" + i);
                return;
            }
            Cocktail lookupCocktailLocked = lookupCocktailLocked(i, Binder.getCallingUid(), str);
            if (lookupCocktailLocked == null) {
                Slog.i(TAG, "updateCocktail : invalid cocktailId=" + i);
                return;
            }
            if (!checkSize(cocktailInfo.getContentView())) {
                Slog.i(TAG, "updateCocktail : content's view is too large.");
                return;
            }
            if (!checkSize(cocktailInfo.getHelpView())) {
                Slog.i(TAG, "updateCocktail : helpcontent's view is too large.");
                return;
            }
            HashMap hashMap = this.mHost;
            if (hashMap != null && !hashMap.isEmpty()) {
                if (this.mCocktailPolicyManager.canUpdateCocktail(lookupCocktailLocked, this.mSettings, this.mUserId, this.mModeManager)) {
                    synchronized (this.mHost) {
                        Iterator it = this.mHost.entrySet().iterator();
                        while (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            CocktailHostInfo cocktailHostInfo = (CocktailHostInfo) entry.getValue();
                            try {
                                if ((cocktailHostInfo.category & lookupCocktailLocked.getProviderInfo().category) != 0) {
                                    CocktailBarHistory.getInstance().recordPanelUpdateHistory(i, "updateCocktail");
                                    this.mCommandLogger.recordHostCommand(cocktailHostInfo.mPackageName, "updateCocktail id=", i);
                                    lookupCocktailLocked.updateCocktailInfo(cocktailInfo);
                                    lookupCocktailLocked.setPackageSuspended(this.mPm.isPackageSuspendedForUser(getPackageNameFromCocktail(lookupCocktailLocked), this.mUserId));
                                    cocktailHostInfo.callbackHost.updateCocktail(i, lookupCocktailLocked, this.mUserId);
                                    lookupCocktailLocked.setPackageUpdated(false);
                                } else {
                                    Slog.d(TAG, "updateCocktail: category not matched " + i + ((String) entry.getKey()) + " cat=" + cocktailHostInfo.category + " requestedCat=" + lookupCocktailLocked.getProviderInfo().category);
                                }
                            } catch (RemoteException unused) {
                                it.remove();
                            } catch (IllegalArgumentException unused2) {
                                Slog.e(TAG, "Package is not founded");
                            }
                        }
                    }
                } else {
                    Slog.i(TAG, "updateCocktail : " + i + " reject");
                }
                return;
            }
            Slog.i(TAG, "updateCocktail : no active host");
        }
    }

    public void partiallyUpdateCocktail(String str, int i, RemoteViews remoteViews) {
        if (DEBUG) {
            Slog.i(TAG, "partiallyUpdateCocktail : cocktailId = " + i);
        }
        synchronized (this.mCocktailArr) {
            if (!ensureStateLoadedLocked()) {
                Slog.d(TAG, "partiallyUpdateCocktail: user not loaded u=" + this.mUserId + " cocktail=" + i);
                return;
            }
            Cocktail lookupCocktailLocked = lookupCocktailLocked(i, Binder.getCallingUid(), str);
            if (lookupCocktailLocked == null) {
                Slog.i(TAG, "partiallyUpdateCocktail : invalid cocktailId=" + i);
                return;
            }
            if (!checkSize(remoteViews)) {
                Slog.i(TAG, "updateCocktail : helpcontent's view is too large.");
                return;
            }
            HashMap hashMap = this.mHost;
            if (hashMap != null && !hashMap.isEmpty()) {
                if (this.mCocktailPolicyManager.canUpdateCocktail(lookupCocktailLocked, this.mSettings, this.mUserId, this.mModeManager)) {
                    synchronized (this.mHost) {
                        Iterator it = this.mHost.entrySet().iterator();
                        while (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            CocktailHostInfo cocktailHostInfo = (CocktailHostInfo) entry.getValue();
                            try {
                                if ((cocktailHostInfo.category & lookupCocktailLocked.getProviderInfo().category) != 0) {
                                    this.mCommandLogger.recordHostCommand(cocktailHostInfo.mPackageName, "partiallyUpdateCocktail id=", i);
                                    lookupCocktailLocked.updateCocktailContentView(remoteViews, true);
                                    cocktailHostInfo.callbackHost.partiallyUpdateCocktail(i, remoteViews, this.mUserId);
                                } else {
                                    Slog.d(TAG, "partiallyUpdateCocktail: category not matched " + ((String) entry.getKey()) + " cat=" + cocktailHostInfo.category + " requestedCat=" + lookupCocktailLocked.getProviderInfo().category);
                                }
                            } catch (RemoteException unused) {
                                it.remove();
                            }
                        }
                    }
                } else {
                    Slog.i(TAG, "partiallyUpdateCocktail : " + i + " reject");
                }
                return;
            }
            Slog.i(TAG, "partiallyUpdateCocktail : no active host");
        }
    }

    public void partiallyUpdateHelpView(String str, int i, RemoteViews remoteViews) {
        if (DEBUG) {
            Slog.i(TAG, "partiallyUpdateHelpView : cocktailId = " + i);
        }
        synchronized (this.mCocktailArr) {
            if (!ensureStateLoadedLocked()) {
                Slog.d(TAG, "partiallyUpdateHelpView: user not loaded u=" + this.mUserId + " cocktail=" + i);
                return;
            }
            Cocktail lookupCocktailLocked = lookupCocktailLocked(i, Binder.getCallingUid(), str);
            if (lookupCocktailLocked == null) {
                Slog.i(TAG, "partiallyUpdateHelpView : invalid cocktailId=" + i);
                return;
            }
            HashMap hashMap = this.mHost;
            if (hashMap != null && !hashMap.isEmpty()) {
                lookupCocktailLocked.updateCocktailHelpView(remoteViews, true);
                if (this.mCocktailPolicyManager.canUpdateCocktail(lookupCocktailLocked, this.mSettings, this.mUserId, this.mModeManager)) {
                    synchronized (this.mHost) {
                        Iterator it = this.mHost.entrySet().iterator();
                        while (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            CocktailHostInfo cocktailHostInfo = (CocktailHostInfo) entry.getValue();
                            try {
                                if ((cocktailHostInfo.category & lookupCocktailLocked.getProviderInfo().category) != 0) {
                                    this.mCommandLogger.recordHostCommand(cocktailHostInfo.mPackageName, "partiallyUpdateHelpView id=", i);
                                    ((CocktailHostInfo) entry.getValue()).callbackHost.partiallyUpdateHelpView(i, remoteViews, this.mUserId);
                                } else {
                                    Slog.d(TAG, "partiallyUpdateHelpView: category not matched " + ((String) entry.getKey()) + " cat=" + cocktailHostInfo.category + " requestedCat=" + lookupCocktailLocked.getProviderInfo().category);
                                }
                            } catch (RemoteException unused) {
                                it.remove();
                            }
                        }
                    }
                } else {
                    Slog.i(TAG, "partiallyUpdateHelpView : " + i + " reject");
                }
                return;
            }
            Slog.i(TAG, "partiallyUpdateHelpView : no active host");
        }
    }

    public void showCocktail(String str, int i) {
        if (DEBUG) {
            Slog.i(TAG, "showCocktail : cocktailId = " + i);
        }
        synchronized (this.mCocktailArr) {
            if (!ensureStateLoadedLocked()) {
                Slog.d(TAG, "showCocktail: not loaded u=" + this.mUserId + " cocktail=" + i);
                return;
            }
            Cocktail lookupCocktailLocked = lookupCocktailLocked(i, Binder.getCallingUid(), str);
            if (lookupCocktailLocked != null && lookupCocktailLocked.getCocktailInfo() != null) {
                HashMap hashMap = this.mHost;
                if (hashMap != null && !hashMap.isEmpty()) {
                    if (this.mCocktailPolicyManager.canShowCocktail(lookupCocktailLocked, this.mSettings, this.mUserId, this.mModeManager)) {
                        synchronized (this.mHost) {
                            Iterator it = this.mHost.entrySet().iterator();
                            while (it.hasNext()) {
                                Map.Entry entry = (Map.Entry) it.next();
                                CocktailHostInfo cocktailHostInfo = (CocktailHostInfo) entry.getValue();
                                try {
                                    if ((cocktailHostInfo.category & lookupCocktailLocked.getProviderInfo().category) != 0) {
                                        this.mCommandLogger.recordHostCommand(cocktailHostInfo.mPackageName, "showCocktail id=", i);
                                        ((CocktailHostInfo) entry.getValue()).callbackHost.showCocktail(i, this.mUserId);
                                    } else {
                                        Slog.d(TAG, "showCocktail: category not matched " + ((String) entry.getKey()) + " cat=" + cocktailHostInfo.category + " requestedCat=" + lookupCocktailLocked.getProviderInfo().category);
                                    }
                                } catch (RemoteException unused) {
                                    it.remove();
                                }
                            }
                        }
                    } else {
                        Slog.i(TAG, "showCocktail : " + i + " reject");
                    }
                    return;
                }
                Slog.i(TAG, "showCocktail : no active host");
                return;
            }
            Slog.i(TAG, "showCocktail : invalid cocktailId=" + i);
        }
    }

    public void closeCocktail(String str, int i, int i2) {
        if (DEBUG) {
            Slog.i(TAG, "closeCocktail : cocktailId = " + i + " category = " + i2);
        }
        synchronized (this.mCocktailArr) {
            if (!ensureStateLoadedLocked()) {
                Slog.i(TAG, "closeCocktail : not loaded u=" + this.mUserId + " cocktail=" + i);
                return;
            }
            Cocktail lookupCocktailLocked = lookupCocktailLocked(i, Binder.getCallingUid(), str);
            if (lookupCocktailLocked != null && lookupCocktailLocked.getCocktailInfo() != null) {
                HashMap hashMap = this.mHost;
                if (hashMap != null && !hashMap.isEmpty()) {
                    lookupCocktailLocked.getCocktailInfo().setCategory(i2);
                    if (this.mCocktailPolicyManager.canCloseCocktail(lookupCocktailLocked, this.mSettings, this.mUserId, this.mModeManager)) {
                        synchronized (this.mHost) {
                            Iterator it = this.mHost.entrySet().iterator();
                            while (it.hasNext()) {
                                Map.Entry entry = (Map.Entry) it.next();
                                CocktailHostInfo cocktailHostInfo = (CocktailHostInfo) entry.getValue();
                                try {
                                    if ((cocktailHostInfo.category & lookupCocktailLocked.getProviderInfo().category) != 0) {
                                        this.mCommandLogger.recordHostCommand(cocktailHostInfo.mPackageName, "closeCocktail id=", i);
                                        ((CocktailHostInfo) entry.getValue()).callbackHost.closeCocktail(i, i2, this.mUserId);
                                    } else {
                                        Slog.d(TAG, "closeCocktail: category not matched " + ((String) entry.getKey()) + " cat=" + cocktailHostInfo.category + " requestedCat=" + lookupCocktailLocked.getProviderInfo().category);
                                    }
                                } catch (RemoteException unused) {
                                    it.remove();
                                }
                            }
                        }
                    } else {
                        Slog.i(TAG, "closeCocktail : " + i + " reject");
                    }
                    return;
                }
                Slog.i(TAG, "closeCocktail : no active host");
                return;
            }
            Slog.i(TAG, "closeCocktail : invalid cocktailId=" + i);
        }
    }

    public void notifyCocktailViewDataChanged(String str, int i, int i2) {
        synchronized (this.mCocktailArr) {
            Cocktail lookupCocktailLocked = lookupCocktailLocked(i, Binder.getCallingUid(), str);
            if (lookupCocktailLocked != null) {
                notifyCocktailViewDataChangedInstanceLocked(lookupCocktailLocked, i2);
            }
        }
    }

    public final void notifyCocktailViewDataChangedInstanceLocked(Cocktail cocktail, int i) {
        HashMap hashMap = this.mHost;
        if (hashMap != null && !hashMap.isEmpty() && cocktail != null) {
            try {
                synchronized (this.mHost) {
                    for (Map.Entry entry : this.mHost.entrySet()) {
                        this.mCommandLogger.recordHostCommand(((CocktailHostInfo) entry.getValue()).mPackageName, "notifyCocktailViewDataChangedInstanceLocked id=", cocktail.getCocktailId());
                        ((CocktailHostInfo) entry.getValue()).callbackHost.viewDataChanged(cocktail.getCocktailId(), i, this.mUserId);
                    }
                }
            } catch (RemoteException unused) {
            }
        }
        if (this.mHost == null) {
            for (Map.Entry entry2 : this.mRemoteViewsServicesCocktails.entrySet()) {
                if (cocktail != null && ((HashSet) entry2.getValue()).contains(Integer.valueOf(cocktail.getCocktailId()))) {
                    Intent intent = ((Intent.FilterComparison) entry2.getKey()).getIntent();
                    ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.android.server.cocktailbar.CocktailBarManagerServiceImpl.3
                        @Override // android.content.ServiceConnection
                        public void onServiceDisconnected(ComponentName componentName) {
                        }

                        @Override // android.content.ServiceConnection
                        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                            IRemoteViewsFactory asInterface = IRemoteViewsFactory.Stub.asInterface(iBinder);
                            try {
                                if (asInterface != null) {
                                    asInterface.onDataSetChangedAsync();
                                } else {
                                    Slog.d(CocktailBarManagerServiceImpl.TAG, "notifyCocktailViewDataChangedInstanceLocked: IRemoteViewsFactory is null for " + componentName);
                                }
                            } catch (RemoteException e) {
                                e.printStackTrace();
                            } catch (RuntimeException e2) {
                                e2.printStackTrace();
                            }
                            CocktailBarManagerServiceImpl.this.mContext.unbindService(this);
                        }
                    };
                    int userId = UserHandle.getUserId(cocktail.getUid());
                    long clearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        this.mContext.bindServiceAsUser(intent, serviceConnection, 1, new UserHandle(userId));
                    } finally {
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                    }
                }
            }
        }
    }

    public void setOnPullPendingIntent(String str, int i, int i2, PendingIntent pendingIntent) {
        synchronized (this.mCocktailArr) {
            if (!ensureStateLoadedLocked()) {
                Slog.d(TAG, "setOnPullPendingIntent: u=" + this.mUserId + " cocktail=" + i);
                return;
            }
            Cocktail lookupCocktailLocked = lookupCocktailLocked(i, Binder.getCallingUid(), str);
            if (lookupCocktailLocked != null && lookupCocktailLocked.getCocktailInfo() != null) {
                if (lookupCocktailLocked.getProviderInfo() != null && (lookupCocktailLocked.getProviderInfo().category & 256) == 0) {
                    HashMap hashMap = this.mHost;
                    if (hashMap != null && !hashMap.isEmpty()) {
                        if (this.mCocktailPolicyManager.canUpdateCocktail(lookupCocktailLocked, this.mSettings, this.mUserId, this.mModeManager)) {
                            synchronized (this.mHost) {
                                Iterator it = this.mHost.entrySet().iterator();
                                while (it.hasNext()) {
                                    Map.Entry entry = (Map.Entry) it.next();
                                    CocktailHostInfo cocktailHostInfo = (CocktailHostInfo) entry.getValue();
                                    try {
                                        if ((cocktailHostInfo.category & lookupCocktailLocked.getProviderInfo().category) != 0) {
                                            this.mCommandLogger.recordHostCommand(cocktailHostInfo.mPackageName, "setPullToRefresh id=", i);
                                            ((CocktailHostInfo) entry.getValue()).callbackHost.setPullToRefresh(i, i2, pendingIntent, this.mUserId);
                                        } else {
                                            Slog.d(TAG, "setOnPullPendingIntent: category not matched " + ((String) entry.getKey()) + " cat=" + cocktailHostInfo.category + " requestedCat=" + lookupCocktailLocked.getProviderInfo().category);
                                        }
                                    } catch (RemoteException unused) {
                                        it.remove();
                                    }
                                }
                            }
                        } else {
                            Slog.i(TAG, "setOnPullPendingIntent : " + i + " reject");
                        }
                        return;
                    }
                    Slog.i(TAG, "setOnPullPendingIntent : no active host");
                    return;
                }
                Slog.i(TAG, "setOnPullPendingIntent: not supported provider  " + i);
                return;
            }
            Slog.i(TAG, "setOnPullPendingIntent : invalid cocktailId=" + i);
        }
    }

    public void disableCocktail(ComponentName componentName) {
        if (componentName == null) {
            throw new IllegalArgumentException("invalid provider");
        }
        synchronized (this.mCocktailArr) {
            if (!ensureStateLoadedLocked()) {
                Slog.i(TAG, "disableCocktail : not loaded" + this.mUserId);
                return;
            }
            Cocktail lookupProviderLocked = lookupProviderLocked(componentName);
            if (lookupProviderLocked != null) {
                ArrayList enableCocktailIds = this.mSettings.getEnableCocktailIds();
                final ArrayList arrayList = new ArrayList();
                int size = enableCocktailIds.size();
                boolean z = false;
                for (int i = 0; i < size; i++) {
                    Cocktail cocktail = (Cocktail) this.mCocktailArr.get(((Integer) enableCocktailIds.get(i)).intValue());
                    if (cocktail != null && cocktail.getProvider() != null) {
                        if (cocktail.getCocktailId() == lookupProviderLocked.getCocktailId()) {
                            z = true;
                        } else {
                            arrayList.add(cocktail.getProvider().getClassName());
                        }
                    }
                }
                if (z) {
                    removeCocktailLocked(lookupProviderLocked);
                    this.mHandler.post(new Runnable() { // from class: com.android.server.cocktailbar.CocktailBarManagerServiceImpl.4
                        @Override // java.lang.Runnable
                        public void run() {
                            CocktailBarManagerServiceImpl.this.mSettings.setEnabledCocktailsLocked(arrayList);
                        }
                    });
                }
            }
        }
    }

    public int getCocktailId(ComponentName componentName) {
        if (componentName == null) {
            throw new IllegalArgumentException("invalid provider");
        }
        synchronized (this.mCocktailArr) {
            Cocktail lookupProviderLocked = lookupProviderLocked(componentName);
            if (lookupProviderLocked == null) {
                return 0;
            }
            return lookupProviderLocked.getCocktailId();
        }
    }

    public int[] getCocktailIds(ComponentName componentName) {
        if (componentName == null) {
            throw new IllegalArgumentException("invalid provider");
        }
        synchronized (this.mCocktailArr) {
            Cocktail lookupProviderLocked = lookupProviderLocked(componentName);
            if (lookupProviderLocked == null || Binder.getCallingUid() != lookupProviderLocked.getUid()) {
                return new int[0];
            }
            return getCocktailIds(lookupProviderLocked);
        }
    }

    public ComponentName getComponentName(Integer num) {
        synchronized (this.mCocktailArr) {
            Cocktail cocktail = (Cocktail) this.mCocktailArr.get(num.intValue());
            if (cocktail == null) {
                return null;
            }
            return cocktail.getProvider();
        }
    }

    public boolean isBoundCocktailPackage(String str) {
        CocktailBarSettings cocktailBarSettings = this.mSettings;
        if (cocktailBarSettings == null) {
            Slog.d(TAG, "isBoundCocktailPackage: user settings not loaded " + this.mUserId + str);
            return false;
        }
        return cocktailBarSettings.isEnabledCocktail(str);
    }

    public boolean isEnabledCocktail(String str, ComponentName componentName) {
        if (componentName == null) {
            throw new IllegalArgumentException("invalid provider");
        }
        synchronized (this.mCocktailArr) {
            if (!ensureStateLoadedLocked()) {
                Slog.d(TAG, "isEnabledCocktail: uset not loaded " + this.mUserId + componentName);
            }
            Cocktail lookupProviderLocked = lookupProviderLocked(componentName);
            if (lookupProviderLocked == null || Binder.getCallingUid() != lookupProviderLocked.getUid()) {
                return false;
            }
            return this.mSettings.isEnabledCocktail(lookupProviderLocked.getCocktailId());
        }
    }

    public boolean isCocktailEnabled(String str, ComponentName componentName) {
        if (componentName == null) {
            throw new IllegalArgumentException("invalid provider");
        }
        synchronized (this.mCocktailArr) {
            if (!ensureStateLoadedLocked()) {
                Slog.d(TAG, "isCocktailEnabled: uset not loaded " + this.mUserId + componentName);
            }
            Cocktail lookupProviderLocked = lookupProviderLocked(componentName);
            if (lookupProviderLocked == null) {
                return false;
            }
            return this.mSettings.isEnabledCocktail(lookupProviderLocked.getCocktailId());
        }
    }

    public final int[] getCocktailIds(Cocktail cocktail) {
        return new int[]{cocktail.getCocktailId()};
    }

    public void updateCocktail(int i) {
        synchronized (this.mCocktailArr) {
            Cocktail cocktail = (Cocktail) this.mCocktailArr.get(i);
            if (cocktail != null) {
                sendEnableAndUpdateBroadcastLocked(cocktail, true);
            }
        }
    }

    public void removeCocktail(int i) {
        synchronized (this.mCocktailArr) {
            removeCocktailLocked(i);
        }
    }

    public void changeVisibleEdgeService(boolean z) {
        HashMap hashMap = this.mHost;
        if (hashMap == null || hashMap.isEmpty()) {
            Slog.i(TAG, "changeVisibleEdgeService : no active host");
            return;
        }
        synchronized (this.mHost) {
            Iterator it = this.mHost.entrySet().iterator();
            while (it.hasNext()) {
                CocktailHostInfo cocktailHostInfo = (CocktailHostInfo) ((Map.Entry) it.next()).getValue();
                this.mCommandLogger.recordHostCommand(cocktailHostInfo.mPackageName, "changeVisibleEdgeService uid=", this.mUserId);
                try {
                    cocktailHostInfo.callbackHost.changeVisibleEdgeService(z, this.mUserId);
                } catch (RemoteException unused) {
                    it.remove();
                }
            }
        }
    }

    public void noteResumeComponent(ComponentName componentName) {
        HashMap hashMap = this.mHost;
        if (hashMap == null || hashMap.isEmpty()) {
            Slog.i(TAG, "noteResumeComponent : no active host");
            return;
        }
        synchronized (this.mHost) {
            Iterator it = this.mHost.entrySet().iterator();
            while (it.hasNext()) {
                try {
                    ((CocktailHostInfo) ((Map.Entry) it.next()).getValue()).callbackHost.noteResumeComponent(componentName);
                } catch (RemoteException unused) {
                    it.remove();
                }
            }
        }
    }

    public void notePauseComponent(ComponentName componentName) {
        HashMap hashMap = this.mHost;
        if (hashMap == null || hashMap.isEmpty()) {
            Slog.i(TAG, "notePauseComponent : no active host");
            return;
        }
        synchronized (this.mHost) {
            Iterator it = this.mHost.entrySet().iterator();
            while (it.hasNext()) {
                try {
                    ((CocktailHostInfo) ((Map.Entry) it.next()).getValue()).callbackHost.notePauseComponent(componentName);
                } catch (RemoteException unused) {
                    it.remove();
                }
            }
        }
    }

    public final void removeCocktailLocked(Cocktail cocktail) {
        if (DEBUG) {
            Slog.i(TAG, "removeCocktailLocked : cocktailId = " + cocktail.getCocktailId());
        }
        this.mCocktailPolicyManager.disableUpdatableCocktail(cocktail.getCocktailId(), this.mUserId);
        decrementCocktailServiceRefCount(cocktail);
        cocktail.updateCocktailInfo((CocktailInfo) null);
        removeCocktailInHostLocked(cocktail.getCocktailId());
        sendDisableIntentLocked(cocktail);
    }

    public final void removeCocktailLocked(int i) {
        if (DEBUG) {
            Slog.i(TAG, "removeCocktailLocked : cocktailId = " + i);
        }
        Cocktail cocktail = (Cocktail) this.mCocktailArr.get(i);
        if (cocktail != null) {
            this.mCocktailPolicyManager.disableUpdatableCocktail(cocktail.getCocktailId(), this.mUserId);
            decrementCocktailServiceRefCount(cocktail);
            cocktail.updateCocktailInfo((CocktailInfo) null);
            removeCocktailInHostLocked(i);
        }
    }

    public final void removeCocktailInHostLocked(int i) {
        HashMap hashMap = this.mHost;
        if (hashMap == null || hashMap.isEmpty()) {
            Slog.i(TAG, "removeCocktailInHostLocked : no active host");
            return;
        }
        synchronized (this.mHost) {
            Iterator it = this.mHost.entrySet().iterator();
            while (it.hasNext()) {
                CocktailHostInfo cocktailHostInfo = (CocktailHostInfo) ((Map.Entry) it.next()).getValue();
                this.mCommandLogger.recordHostCommand(cocktailHostInfo.mPackageName, "removeCocktailInHostLocked id=", i);
                try {
                    cocktailHostInfo.callbackHost.removeCocktail(i, this.mUserId);
                } catch (RemoteException unused) {
                    it.remove();
                }
            }
        }
    }

    public final int getUidForPackage(String str) {
        PackageInfo packageInfo;
        ApplicationInfo applicationInfo;
        try {
            packageInfo = this.mPm.getPackageInfo(str, 0L, this.mUserId);
        } catch (RemoteException unused) {
            packageInfo = null;
        }
        if (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null) {
            throw new PackageManager.NameNotFoundException();
        }
        return applicationInfo.uid;
    }

    public void setEnabledCocktailIds(int[] iArr) {
        synchronized (this.mCocktailArr) {
            if (!ensureStateLoadedLocked()) {
                Slog.d(TAG, "setEnabledCocktailIds: settings not loaded yet" + this.mUserId + this.mStateLoaded);
                return;
            }
            final ArrayList arrayList = new ArrayList();
            for (int i : iArr) {
                Cocktail cocktail = (Cocktail) this.mCocktailArr.get(i);
                if (cocktail != null && cocktail.getProvider() != null) {
                    arrayList.add(cocktail.getProvider().getClassName());
                }
            }
            this.mHandler.post(new Runnable() { // from class: com.android.server.cocktailbar.CocktailBarManagerServiceImpl.5
                @Override // java.lang.Runnable
                public void run() {
                    CocktailBarManagerServiceImpl.this.mSettings.setEnabledCocktailsLocked(arrayList);
                }
            });
        }
    }

    public ArrayList getEnabledCocktailIds() {
        synchronized (this.mCocktailArr) {
            if (!ensureStateLoadedLocked()) {
                Slog.i(TAG, "getEnabledCocktailIds : not loaded" + this.mUserId);
                return new ArrayList();
            }
            return this.mSettings.getEnableCocktailIds();
        }
    }

    public void getAllCocktailIds(ArrayList arrayList) {
        synchronized (this.mCocktailArr) {
            int size = this.mCocktailArr.size();
            for (int i = 0; i < size; i++) {
                arrayList.add(Integer.valueOf(((Cocktail) this.mCocktailArr.valueAt(i)).getCocktailId()));
            }
        }
    }

    public Cocktail getCocktail(int i) {
        Cocktail cocktailLocked;
        synchronized (this.mCocktailArr) {
            cocktailLocked = getCocktailLocked(i);
        }
        return cocktailLocked;
    }

    public final Cocktail getCocktailLocked(int i) {
        Cocktail cocktail = (Cocktail) this.mCocktailArr.get(i);
        if (cocktail != null) {
            return cocktail;
        }
        return null;
    }

    public void notifyKeyguardState(boolean z) {
        HashMap hashMap = this.mHost;
        if (hashMap == null || hashMap.isEmpty()) {
            Slog.i(TAG, "removeCocktailInHostLocked : no active host");
            return;
        }
        synchronized (this.mHost) {
            Iterator it = this.mHost.entrySet().iterator();
            while (it.hasNext()) {
                CocktailHostInfo cocktailHostInfo = (CocktailHostInfo) ((Map.Entry) it.next()).getValue();
                this.mCommandLogger.recordHostCommand(cocktailHostInfo.mPackageName, "notifyKeyguardState uid=", this.mUserId);
                try {
                    cocktailHostInfo.callbackHost.notifyKeyguardState(z, this.mUserId);
                } catch (RemoteException unused) {
                    it.remove();
                }
            }
        }
    }

    public void notifyCocktailVisibiltyChanged(int i, int i2) {
        if (DEBUG) {
            Slog.i(TAG, "notifyCocktailVisibiltyChanged : cocktailId = " + i);
        }
        synchronized (this.mCocktailArr) {
            Cocktail cocktail = (Cocktail) this.mCocktailArr.get(i);
            if (cocktail != null) {
                sendCocktailChangedVisibilityIntentLocked(cocktail, i2);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0291 A[Catch: all -> 0x0362, TryCatch #2 {, blocks: (B:4:0x0009, B:6:0x000f, B:7:0x002f, B:9:0x0035, B:11:0x0039, B:13:0x003f, B:15:0x0051, B:17:0x005d, B:18:0x007d, B:67:0x00bd, B:68:0x00bf, B:78:0x00dd, B:80:0x00ed, B:82:0x00f5, B:83:0x00fd, B:85:0x0100, B:87:0x010b, B:91:0x0110, B:94:0x0124, B:98:0x014c, B:99:0x014d, B:100:0x0150, B:27:0x0157, B:28:0x0159, B:38:0x0177, B:40:0x0187, B:42:0x018f, B:43:0x0197, B:45:0x019a, B:51:0x01aa, B:47:0x01a3, B:55:0x01be, B:59:0x01e6, B:61:0x01e7, B:62:0x0322, B:141:0x01f6, B:142:0x01f8, B:152:0x0216, B:154:0x0226, B:156:0x022e, B:157:0x0236, B:159:0x0239, B:165:0x0249, B:161:0x0242, B:169:0x025d, B:173:0x0285, B:174:0x0286, B:175:0x0289, B:105:0x0291, B:106:0x0293, B:116:0x02b1, B:118:0x02c1, B:120:0x02c9, B:121:0x02d1, B:123:0x02d4, B:129:0x02e4, B:125:0x02dd, B:133:0x02f8, B:137:0x0321, B:186:0x0324, B:187:0x033a, B:188:0x033b, B:189:0x0342, B:190:0x0343, B:191:0x0359, B:192:0x035a, B:193:0x0361, B:144:0x01f9, B:146:0x0203, B:148:0x0209, B:150:0x0213, B:30:0x015a, B:32:0x0164, B:34:0x016a, B:36:0x0174, B:70:0x00c0, B:72:0x00ca, B:74:0x00d0, B:76:0x00da, B:108:0x0294, B:110:0x029e, B:112:0x02a4, B:114:0x02ae), top: B:3:0x0009, inners: #1, #3, #4, #7, #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01f6 A[Catch: all -> 0x0362, TryCatch #2 {, blocks: (B:4:0x0009, B:6:0x000f, B:7:0x002f, B:9:0x0035, B:11:0x0039, B:13:0x003f, B:15:0x0051, B:17:0x005d, B:18:0x007d, B:67:0x00bd, B:68:0x00bf, B:78:0x00dd, B:80:0x00ed, B:82:0x00f5, B:83:0x00fd, B:85:0x0100, B:87:0x010b, B:91:0x0110, B:94:0x0124, B:98:0x014c, B:99:0x014d, B:100:0x0150, B:27:0x0157, B:28:0x0159, B:38:0x0177, B:40:0x0187, B:42:0x018f, B:43:0x0197, B:45:0x019a, B:51:0x01aa, B:47:0x01a3, B:55:0x01be, B:59:0x01e6, B:61:0x01e7, B:62:0x0322, B:141:0x01f6, B:142:0x01f8, B:152:0x0216, B:154:0x0226, B:156:0x022e, B:157:0x0236, B:159:0x0239, B:165:0x0249, B:161:0x0242, B:169:0x025d, B:173:0x0285, B:174:0x0286, B:175:0x0289, B:105:0x0291, B:106:0x0293, B:116:0x02b1, B:118:0x02c1, B:120:0x02c9, B:121:0x02d1, B:123:0x02d4, B:129:0x02e4, B:125:0x02dd, B:133:0x02f8, B:137:0x0321, B:186:0x0324, B:187:0x033a, B:188:0x033b, B:189:0x0342, B:190:0x0343, B:191:0x0359, B:192:0x035a, B:193:0x0361, B:144:0x01f9, B:146:0x0203, B:148:0x0209, B:150:0x0213, B:30:0x015a, B:32:0x0164, B:34:0x016a, B:36:0x0174, B:70:0x00c0, B:72:0x00ca, B:74:0x00d0, B:76:0x00da, B:108:0x0294, B:110:0x029e, B:112:0x02a4, B:114:0x02ae), top: B:3:0x0009, inners: #1, #3, #4, #7, #11 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean bindRemoteViewsService(java.lang.String r23, int r24, android.content.Intent r25, android.app.IApplicationThread r26, android.os.IBinder r27, android.app.IServiceConnection r28, int r29) {
        /*
            Method dump skipped, instructions count: 869
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.cocktailbar.CocktailBarManagerServiceImpl.bindRemoteViewsService(java.lang.String, int, android.content.Intent, android.app.IApplicationThread, android.os.IBinder, android.app.IServiceConnection, int):boolean");
    }

    public final void destroyRemoteViewsService(final Intent intent, Cocktail cocktail) {
        ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.android.server.cocktailbar.CocktailBarManagerServiceImpl.6
            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                IRemoteViewsFactory asInterface = IRemoteViewsFactory.Stub.asInterface(iBinder);
                try {
                    if (asInterface != null) {
                        asInterface.onDestroy(intent);
                    } else {
                        Slog.d(CocktailBarManagerServiceImpl.TAG, "destroyRemoteViewsService: IRemoteViewsFactory is null for " + componentName);
                    }
                } catch (RemoteException e) {
                    e.printStackTrace();
                } catch (RuntimeException e2) {
                    e2.printStackTrace();
                }
                CocktailBarManagerServiceImpl.this.mContext.unbindService(this);
            }
        };
        int userId = UserHandle.getUserId(cocktail.getUid());
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mContext.bindServiceAsUser(intent, serviceConnection, 1, new UserHandle(userId));
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final void incrementCocktailServiceRefCount(int i, Intent.FilterComparison filterComparison) {
        HashSet hashSet;
        if (this.mRemoteViewsServicesCocktails.containsKey(filterComparison)) {
            hashSet = (HashSet) this.mRemoteViewsServicesCocktails.get(filterComparison);
        } else {
            HashSet hashSet2 = new HashSet();
            this.mRemoteViewsServicesCocktails.put(filterComparison, hashSet2);
            hashSet = hashSet2;
        }
        hashSet.add(Integer.valueOf(i));
    }

    public final void decrementCocktailServiceRefCount(Cocktail cocktail) {
        Iterator it = this.mRemoteViewsServicesCocktails.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Intent.FilterComparison filterComparison = (Intent.FilterComparison) entry.getKey();
            HashSet hashSet = (HashSet) entry.getValue();
            if (hashSet.remove(Integer.valueOf(cocktail.getCocktailId())) && hashSet.isEmpty()) {
                destroyRemoteViewsService(filterComparison.getIntent(), cocktail);
                it.remove();
            }
        }
    }

    public void sendExtraDataToCocktailBar(Bundle bundle) {
        HashMap hashMap = this.mHost;
        if (hashMap != null) {
            try {
                synchronized (hashMap) {
                    for (Map.Entry entry : this.mHost.entrySet()) {
                        this.mCommandLogger.recordHostCommand(((CocktailHostInfo) entry.getValue()).mPackageName, "removeCocktailInHostLocked uid=", this.mUserId);
                        ((CocktailHostInfo) entry.getValue()).callbackHost.sendExtraData(this.mUserId, bundle);
                    }
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void onUnlockUser() {
        synchronized (this.mCocktailArr) {
            ensureStateLoadedLocked();
        }
    }

    public void onSwitchUser(int i) {
        this.mNextUserId = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:78:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:80:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onBroadcastReceived(android.content.Intent r10) {
        /*
            Method dump skipped, instructions count: 381
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.cocktailbar.CocktailBarManagerServiceImpl.onBroadcastReceived(android.content.Intent):void");
    }

    public void onPackageAdded(String str) {
        synchronized (this.mCocktailArr) {
            if (!ensureStateLoadedLocked()) {
                Slog.i(TAG, "onPackageAdded : not loaded u = " + this.mUserId + " pkgName = " + str);
                return;
            }
            boolean z = false;
            for (int defaultVersion = this.mConfig.getDefaultVersion(); defaultVersion <= this.mConfig.getVersion(); defaultVersion++) {
                z |= addProvidersForPackageLocked(str, defaultVersion);
            }
            saveStateAsync();
            if (z) {
                this.mSettings.updateInstalledCocktails(this.mCocktailArr);
            }
        }
    }

    public void onPackageRemoved(String str) {
        synchronized (this.mCocktailArr) {
            if (!ensureStateLoadedLocked()) {
                Slog.i(TAG, "onPackageRemoved : not loaded u = " + this.mUserId + " pkgName = " + str);
                return;
            }
            boolean removeProvidersForPackageLocked = removeProvidersForPackageLocked(str) | false;
            saveStateAsync();
            if (removeProvidersForPackageLocked) {
                this.mSettings.updateInstalledCocktails(this.mCocktailArr);
            }
        }
    }

    public void onPackageChanged(String str) {
        synchronized (this.mCocktailArr) {
            if (!ensureStateLoadedLocked()) {
                Slog.i(TAG, "onPackageChanged : not loaded u=" + this.mUserId + " pkgName=" + str);
                return;
            }
            clearCocktailInfoLocked(str);
            boolean z = false;
            for (int defaultVersion = this.mConfig.getDefaultVersion(); defaultVersion <= this.mConfig.getVersion(); defaultVersion++) {
                z |= updateProvidersForPackageLocked(str, defaultVersion, null);
            }
            if (z) {
                this.mSettings.updateInstalledCocktails(this.mCocktailArr);
            }
        }
    }

    public void onPackagesSuspendChanged(String[] strArr, boolean z) {
        synchronized (this.mCocktailArr) {
            if (!ensureStateLoadedLocked()) {
                Slog.i(TAG, "onPackagesSuspended : " + z + "not loaded u=" + this.mUserId + " pkgName=" + Arrays.toString(strArr));
                return;
            }
            HashMap hashMap = this.mHost;
            if (hashMap != null && !hashMap.isEmpty()) {
                processPackageSuspended(strArr, z);
                return;
            }
            Slog.i(TAG, "onPackagesSuspended : " + z + " no active host");
        }
    }

    public final void processPackageSuspended(String[] strArr, boolean z) {
        for (String str : strArr) {
            for (int i = 0; i < this.mCocktailArr.size(); i++) {
                Cocktail cocktail = (Cocktail) this.mCocktailArr.valueAt(i);
                if (TextUtils.equals(str, getPackageNameFromCocktail(cocktail)) && this.mCocktailPolicyManager.canUpdateCocktail(cocktail, this.mSettings, this.mUserId, this.mModeManager)) {
                    synchronized (this.mHost) {
                        Iterator it = this.mHost.entrySet().iterator();
                        while (it.hasNext()) {
                            CocktailHostInfo cocktailHostInfo = (CocktailHostInfo) ((Map.Entry) it.next()).getValue();
                            try {
                                if ((cocktailHostInfo.category & cocktail.getProviderInfo().category) != 0) {
                                    CocktailBarHistory.getInstance().recordPanelUpdateHistory(cocktail.getCocktailId(), "packageSuspended " + z);
                                    this.mCommandLogger.recordHostCommand(cocktailHostInfo.mPackageName, "packageSuspended " + z + " id=", cocktail.getCocktailId());
                                    cocktail.setPackageSuspended(z);
                                    cocktailHostInfo.callbackHost.packageSuspendChanged(cocktail);
                                }
                            } catch (RemoteException unused) {
                                it.remove();
                            }
                        }
                    }
                }
            }
        }
    }

    public final void clearCocktailInfoLocked(String str) {
        if (DEBUG) {
            Slog.i(TAG, "clearCocktailInfoLocked : packageName=" + str);
        }
        for (int size = this.mCocktailArr.size() - 1; size >= 0; size--) {
            Cocktail cocktail = (Cocktail) this.mCocktailArr.valueAt(size);
            if (TextUtils.equals(str, getPackageNameFromCocktail(cocktail))) {
                cocktail.updateCocktailInfo((CocktailInfo) null);
            }
        }
    }

    public final String getPackageNameFromCocktail(Cocktail cocktail) {
        if (cocktail.getProvider() != null) {
            return cocktail.getProvider().getPackageName();
        }
        return null;
    }

    public static boolean isLocalBinder() {
        return Process.myPid() == Binder.getCallingPid();
    }

    /* loaded from: classes.dex */
    public class CocktailBarSettingsObserver extends ContentObserver {
        public String mLastEnabled;

        public CocktailBarSettingsObserver(Handler handler) {
            super(handler);
            this.mLastEnabled = "";
            CocktailBarManagerServiceImpl.this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("cocktail_bar_enabled_cocktails"), false, this, CocktailBarManagerServiceImpl.this.mUserId);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            this.mLastEnabled = CocktailBarManagerServiceImpl.this.updateCocktailBarSetting(this.mLastEnabled);
        }

        public void unregisterContentObserver() {
            CocktailBarManagerServiceImpl.this.mContext.getContentResolver().unregisterContentObserver(this);
        }
    }

    /* loaded from: classes.dex */
    public class CocktailHostInfo implements IBinder.DeathRecipient {
        public final ICocktailHost callbackHost;
        public int category;
        public String mPackageName;
        public final IBinder token;

        public CocktailHostInfo(String str, ICocktailHost iCocktailHost, int i) {
            this.callbackHost = iCocktailHost;
            IBinder asBinder = iCocktailHost.asBinder();
            this.token = asBinder;
            this.category = i;
            this.mPackageName = str;
            CocktailBarManagerServiceImpl.this.mCommandLogger.recordHostStart(str);
            try {
                asBinder.linkToDeath(this, 0);
            } catch (RemoteException unused) {
                Slog.e(CocktailBarManagerServiceImpl.TAG, "CocktailHostInfo : linkToDeath error");
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Slog.v(CocktailBarManagerServiceImpl.TAG, "binderDied : binder = " + this.token);
            if (Settings.Secure.getInt(CocktailBarManagerServiceImpl.this.mContext.getContentResolver(), "edge_enable", 1) == 1) {
                CocktailBarManagerServiceImpl.this.mEdgeStartHandler.removeMessages(1);
                CocktailBarManagerServiceImpl.this.mEdgeStartHandler.sendEmptyMessageDelayed(1, 5000L);
            }
            synchronized (CocktailBarManagerServiceImpl.this.mHost) {
                CocktailBarManagerServiceImpl.this.mCommandLogger.recordHostEnd(this.mPackageName);
                if (equals(CocktailBarManagerServiceImpl.this.mHost.get(this.mPackageName))) {
                    CocktailBarManagerServiceImpl.this.mHost.remove(this.mPackageName);
                }
            }
            try {
                this.token.unlinkToDeath(this, 0);
            } catch (NoSuchElementException e) {
                e.printStackTrace();
            }
        }

        public boolean isEqualBinder(ICocktailHost iCocktailHost) {
            return this.token.equals(iCocktailHost.asBinder());
        }

        public void unlinkBinder() {
            try {
                CocktailBarManagerServiceImpl.this.mCommandLogger.recordHostEnd(this.mPackageName);
                this.token.unlinkToDeath(this, 0);
            } catch (NoSuchElementException e) {
                e.printStackTrace();
            }
        }
    }

    /* loaded from: classes.dex */
    public class EdgeStartHandler extends Handler {
        public EdgeStartHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = CocktailBarManagerServiceImpl.this.mUserId;
            if (CocktailBarManagerServiceImpl.this.mNextUserId != -10) {
                i = CocktailBarManagerServiceImpl.this.mNextUserId;
            }
            Slog.i(CocktailBarManagerServiceImpl.TAG, "EdgeStartHandler userId : " + CocktailBarManagerServiceImpl.this.mUserId + ", currentUserId : " + i + ", nextUserId : " + CocktailBarManagerServiceImpl.this.mNextUserId);
            Intent intent = new Intent("com.samsung.android.cocktailbar.intent.action.EDGE_APP_START");
            intent.addFlags(16777248);
            CocktailBarManagerServiceImpl.this.mContext.sendBroadcastAsUser(intent, new UserHandle(i));
            CocktailBarManagerServiceImpl cocktailBarManagerServiceImpl = CocktailBarManagerServiceImpl.this;
            cocktailBarManagerServiceImpl.mNextUserId = cocktailBarManagerServiceImpl.mUserId;
        }
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.DUMP") != 0) {
            printWriter.println("Permission Denial: can't dump from from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid());
            return;
        }
        synchronized (this.mCocktailArr) {
            int size = this.mCocktailArr.size();
            for (int i = 0; i < size; i++) {
                dumpCocktail((Cocktail) this.mCocktailArr.valueAt(i), printWriter);
            }
        }
        CocktailBarSettings cocktailBarSettings = this.mSettings;
        if (cocktailBarSettings != null) {
            printWriter.println("EnabledCocktails : " + cocktailBarSettings.getEnableCocktailIds().toString());
            printWriter.println("");
        }
        HashMap hashMap = this.mHost;
        if (hashMap != null) {
            synchronized (hashMap) {
                StringBuffer stringBuffer = new StringBuffer("CocktailHost: ");
                for (Map.Entry entry : this.mHost.entrySet()) {
                    stringBuffer.append((String) entry.getKey());
                    stringBuffer.append(" category=");
                    stringBuffer.append(Integer.toHexString(((CocktailHostInfo) entry.getValue()).category));
                }
                printWriter.println(stringBuffer.toString());
                ServiceImplCommandLogger serviceImplCommandLogger = this.mCommandLogger;
                if (serviceImplCommandLogger != null) {
                    printWriter.println(serviceImplCommandLogger.toString());
                }
            }
        }
        printWriter.println("");
    }

    /* loaded from: classes.dex */
    public class EnabledPackageMap {
        public ArrayMap mEnabledPackage;

        public EnabledPackageMap() {
            this.mEnabledPackage = new ArrayMap();
        }

        public int getEnabledCount(String str) {
            ArrayList arrayList = (ArrayList) this.mEnabledPackage.get(str);
            if (arrayList == null) {
                return 0;
            }
            return arrayList.size();
        }

        public void putEnabledProvider(ComponentName componentName) {
            if (componentName == null) {
                return;
            }
            String packageName = componentName.getPackageName();
            String className = componentName.getClassName();
            ArrayList arrayList = (ArrayList) this.mEnabledPackage.get(packageName);
            if (arrayList == null) {
                arrayList = new ArrayList();
                arrayList.add(className);
            } else if (!arrayList.contains(className)) {
                arrayList.add(className);
            }
            this.mEnabledPackage.put(packageName, arrayList);
        }

        public void removeEnabledProvider(ComponentName componentName) {
            if (componentName == null) {
                return;
            }
            String packageName = componentName.getPackageName();
            String className = componentName.getClassName();
            ArrayList arrayList = (ArrayList) this.mEnabledPackage.get(packageName);
            if (arrayList == null) {
                return;
            }
            if (arrayList.contains(className)) {
                arrayList.remove(className);
            }
            this.mEnabledPackage.put(packageName, arrayList);
        }
    }

    public final void dumpCocktail(Cocktail cocktail, PrintWriter printWriter) {
        CocktailProviderInfo providerInfo = cocktail.getProviderInfo();
        printWriter.print("  [");
        printWriter.print(cocktail.getCocktailId());
        printWriter.print("] provider ");
        printWriter.print(providerInfo.provider.flattenToShortString());
        printWriter.println(':');
        printWriter.print(" (label=");
        printWriter.print(providerInfo.label);
        printWriter.print(") (description=");
        printWriter.print(providerInfo.description);
        printWriter.print(") (icon=");
        printWriter.print(providerInfo.icon);
        printWriter.print(") (previewImage=");
        printWriter.print(providerInfo.previewImage);
        printWriter.print(") (updatePeriodMillis=");
        printWriter.print(providerInfo.updatePeriodMillis);
        printWriter.print(") (category=");
        printWriter.print(providerInfo.category);
        printWriter.print(") (permitVisibilityChanged=");
        printWriter.print(providerInfo.permitVisibilityChanged);
        printWriter.print(") (configure=");
        printWriter.print(providerInfo.configure);
        printWriter.print(") (privateMode=");
        printWriter.print(providerInfo.privateMode);
        printWriter.print(") (cscPreviewImage=");
        printWriter.print(providerInfo.cscPreviewImage);
        printWriter.print(" (uid=");
        printWriter.print(cocktail.getUid());
        printWriter.print(") ");
        printWriter.print(cocktail.dump());
        printWriter.println(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
    }
}
