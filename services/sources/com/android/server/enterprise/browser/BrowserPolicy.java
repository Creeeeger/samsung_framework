package com.android.server.enterprise.browser;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.Process;
import android.os.UserHandle;
import android.sec.enterprise.auditlog.AuditLog;
import android.text.TextUtils;
import android.util.Log;
import android.util.Slog;
import com.android.internal.util.jobs.XmlUtils;
import com.android.server.enterprise.EnterpriseServiceCallback;
import com.android.server.enterprise.common.EnterprisePermissionChecker;
import com.android.server.enterprise.storage.EdmStorageProvider;
import com.android.server.enterprise.storage.EdmStorageProviderBase;
import com.android.server.enterprise.utils.EnterpriseDumpHelper;
import com.android.server.enterprise.utils.SecContentProviderUtil;
import com.android.server.enterprise.utils.Utils;
import com.samsung.android.knox.ContextInfo;
import com.samsung.android.knox.EnterpriseDeviceManager;
import com.samsung.android.knox.browser.IBrowserPolicy;
import com.samsung.android.knox.custom.KnoxCustomManagerService;
import java.io.ByteArrayOutputStream;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class BrowserPolicy extends IBrowserPolicy.Stub implements EnterpriseServiceCallback {
    public Context mContext;
    public EdmStorageProvider mEdmStorageProvider;
    public EnterpriseDumpHelper mEnterpriseDumpHelper;
    public static final Uri SBROWSER_BOOKMARKS_URI = Uri.parse("content://com.sec.android.app.sbrowser.browser/bookmarks");
    public static final Uri CHROME_BOOKMARKS_URI = Uri.parse("content://com.android.partnerbookmarks/bookmarks");
    public static final String[] SBROWSER_PROJECTION = {KnoxCustomManagerService.ID, "url", KnoxCustomManagerService.SHORTCUT_TITLE, "favicon", "editable"};
    public HashMap mCache = new HashMap();
    public HashMap mUserCache = new HashMap();
    public final int NUM_OF_CONTAINER = 2;
    public final String FIREWALL_POLICY_SERVICE = "FirewallPolicy";
    public EnterpriseDeviceManager mEDM = null;

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void notifyToAddSystemService(String str, IBinder iBinder) {
    }

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void onAdminAdded(int i) {
    }

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void systemReady() {
    }

    /* loaded from: classes2.dex */
    public class BrowserProxyCache {
        public final int mContainerId;
        public final int mUserId;
        public int mAdminUid = -1;
        public String mProxySetting = null;

        public BrowserProxyCache(int i, int i2) {
            this.mUserId = i;
            this.mContainerId = i2;
        }

        public void setProxy(int i, String str) {
            if (str != null) {
                this.mAdminUid = i;
                this.mProxySetting = str;
            }
        }

        public void clear() {
            if (this.mAdminUid != -1) {
                this.mAdminUid = -1;
                this.mProxySetting = null;
            }
        }

        public boolean isAlreadySet() {
            return this.mAdminUid != -1;
        }

        public boolean isOwner(int i) {
            return this.mAdminUid == i;
        }
    }

    /* loaded from: classes2.dex */
    public class WebFilteringCache {
        public final int mContainerId;
        public List mUrlBlacklistAllAdmin;
        public boolean mIsUrlBlacklistUpdated = false;
        public boolean mUrlFilterStateCache = false;
        public boolean mIsUrlFilterStateUpdated = false;
        public boolean mUrlFilterReportState = false;
        public boolean mIsUrlFilterReportUpdated = false;

        public WebFilteringCache(int i) {
            this.mUrlBlacklistAllAdmin = null;
            this.mContainerId = i;
            this.mUrlBlacklistAllAdmin = new ArrayList();
        }
    }

    public BrowserPolicy(Context context) {
        this.mContext = context;
        this.mEdmStorageProvider = new EdmStorageProvider(context);
        this.mEnterpriseDumpHelper = new EnterpriseDumpHelper(this.mContext);
        loadProxySettings();
    }

    public void loadProxySettings() {
        try {
            for (ContentValues contentValues : this.mEdmStorageProvider.getDataByFields("BROWSER_PROXY", null, null, new String[]{"adminUid", "proxyServer"})) {
                String asString = contentValues.getAsString("proxyServer");
                long longValue = contentValues.getAsLong("adminUid") != null ? contentValues.getAsLong("adminUid").longValue() : 0L;
                int containerIdFromLUID = EdmStorageProviderBase.getContainerIdFromLUID(longValue);
                int adminUidFromLUID = EdmStorageProviderBase.getAdminUidFromLUID(longValue);
                int userId = UserHandle.getUserId(adminUidFromLUID);
                if (!this.mCache.containsKey(Integer.valueOf(userId))) {
                    this.mCache.put(Integer.valueOf(userId), new HashMap());
                }
                if (!((HashMap) this.mCache.get(Integer.valueOf(userId))).containsKey(Integer.valueOf(containerIdFromLUID))) {
                    ((HashMap) this.mCache.get(Integer.valueOf(userId))).put(Integer.valueOf(containerIdFromLUID), new BrowserProxyCache(userId, containerIdFromLUID));
                }
                ((BrowserProxyCache) ((HashMap) this.mCache.get(Integer.valueOf(userId))).get(Integer.valueOf(containerIdFromLUID))).setProxy(adminUidFromLUID, asString);
            }
        } catch (Exception e) {
            Log.e("BrowserPolicy", "loadProxySettings() : failed", e);
        }
    }

    public final EnterpriseDeviceManager getEDM() {
        if (this.mEDM == null) {
            this.mEDM = EnterpriseDeviceManager.getInstance(this.mContext);
        }
        return this.mEDM;
    }

    public final ContextInfo enforceBrowserPermission(ContextInfo contextInfo) {
        return getEDM().enforceActiveAdminPermissionByContext(contextInfo, new ArrayList(Arrays.asList("com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS")));
    }

    public final ContextInfo enforceFirewallPermission(ContextInfo contextInfo) {
        return getEDM().enforceActiveAdminPermissionByContext(contextInfo, new ArrayList(Arrays.asList("com.samsung.android.knox.permission.KNOX_FIREWALL")));
    }

    public final ContextInfo enforceFirewallPermissionByContext(ContextInfo contextInfo) {
        return getEDM().enforcePermissionByContext(contextInfo, new ArrayList(Arrays.asList("com.samsung.android.knox.permission.KNOX_FIREWALL")));
    }

    public final ContextInfo enforceBrowserPermissionByContext(ContextInfo contextInfo) {
        return getEDM().enforcePermissionByContext(contextInfo, new ArrayList(Arrays.asList("com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS")));
    }

    public final ContextInfo enforceBrowserProxyPermission(ContextInfo contextInfo) {
        return getEDM().enforceActiveAdminPermissionByContext(contextInfo, new ArrayList(Arrays.asList("com.samsung.android.knox.permission.KNOX_BROWSER_PROXY")));
    }

    public boolean setBrowserSettingStatus(ContextInfo contextInfo, boolean z, int i) {
        int i2;
        boolean z2;
        int i3 = enforceBrowserPermission(contextInfo).mCallerUid;
        int userId = UserHandle.getUserId(i3);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                i2 = this.mEdmStorageProvider.getInt(i3, "BROWSER", "browserSettings");
            } catch (Exception e) {
                try {
                    Log.e("BrowserPolicy", "setBrowserSettingStatus(" + i + ") : EdmStorageProvider failed to read Data. ", e);
                    i2 = 31;
                } catch (Exception e2) {
                    Log.e("BrowserPolicy", "setBrowserSettingStatus(" + i + ") : failed. ", e2);
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                    z2 = false;
                }
            }
            z2 = this.mEdmStorageProvider.putInt(i3, "BROWSER", "browserSettings", true == z ? i2 | i : i2 & (~i));
            Slog.d("BrowserPolicy", "setBrowserSettingStatus() : = " + z2 + ", enable = " + z + ",  setting = " + i);
            if (z2) {
                if (i == 1) {
                    SecContentProviderUtil.notifyPolicyChangesAsUser(this.mContext, "BrowserPolicy/getPopupsSetting", userId);
                } else if (i == 2) {
                    SecContentProviderUtil.notifyPolicyChangesAsUser(this.mContext, "BrowserPolicy/getCookiesSetting", userId);
                } else if (i == 4) {
                    SecContentProviderUtil.notifyPolicyChangesAsUser(this.mContext, "BrowserPolicy/getAutoFillSetting", userId);
                    clearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        AuditLog.logAsUser(5, 1, true, Process.myPid(), "BrowserPolicy", String.format(z ? "Admin %d has enabled Auto Fill Setting" : "Admin %d has disabled Auto Fill Setting", Integer.valueOf(i3)), userId);
                    } finally {
                    }
                } else if (i == 16) {
                    SecContentProviderUtil.notifyPolicyChangesAsUser(this.mContext, "BrowserPolicy/getJavaScriptSetting", userId);
                }
                Slog.d("BrowserPolicy", "setBrowserSettingStatus() : SecContentProvider updated.");
            }
            return z2;
        } finally {
        }
    }

    public boolean getBrowserSettingStatus(ContextInfo contextInfo, int i) {
        boolean z = true;
        try {
            ArrayList intListAsUser = this.mEdmStorageProvider.getIntListAsUser("BROWSER", "browserSettings", Utils.getCallingOrCurrentUserId(contextInfo));
            if (!intListAsUser.isEmpty()) {
                Iterator it = intListAsUser.iterator();
                while (it.hasNext()) {
                    int intValue = ((Integer) it.next()).intValue();
                    if (intValue >= 0 && i != (intValue & i)) {
                        z = false;
                        break;
                    }
                }
            } else {
                Slog.d("BrowserPolicy", "getBrowserSettingStatus() : No Policy in BrowserPolicy.");
            }
        } catch (Exception e) {
            Log.e("BrowserPolicy", "getBrowserSettingStatus() : failed. ", e);
        }
        Log.i("BrowserPolicy", "getBrowserSettingStatus(" + i + ") : " + z);
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00c0 A[Catch: Exception -> 0x00cf, TRY_LEAVE, TryCatch #0 {Exception -> 0x00cf, blocks: (B:21:0x0081, B:23:0x009d, B:28:0x00c0, B:33:0x00a6, B:35:0x00bb), top: B:20:0x0081 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean setHttpProxy(com.samsung.android.knox.ContextInfo r10, java.lang.String r11) {
        /*
            r9 = this;
            java.lang.String r0 = "BrowserPolicy"
            com.samsung.android.knox.ContextInfo r10 = r9.enforceBrowserProxyPermission(r10)
            int r1 = r10.mCallerUid
            int r10 = r10.mContainerId
            int r2 = android.os.UserHandle.getUserId(r1)
            r3 = 0
            if (r11 != 0) goto L12
            return r3
        L12:
            java.lang.String r4 = ":"
            boolean r5 = r11.contains(r4)
            if (r5 == 0) goto L24
            java.lang.String[] r4 = r11.split(r4)
            r5 = r4[r3]
            r6 = 1
            r4 = r4[r6]
            goto L27
        L24:
            java.lang.String r4 = "80"
            r5 = r11
        L27:
            boolean r4 = validateProxyParameters(r5, r4)
            if (r4 != 0) goto L2e
            return r3
        L2e:
            java.lang.String r4 = r11.trim()
            boolean r5 = r4.isEmpty()
            if (r5 == 0) goto L39
            return r3
        L39:
            java.util.HashMap r5 = r9.mCache
            java.lang.Integer r6 = java.lang.Integer.valueOf(r2)
            boolean r5 = r5.containsKey(r6)
            if (r5 != 0) goto L53
            java.util.HashMap r5 = r9.mCache
            java.lang.Integer r6 = java.lang.Integer.valueOf(r2)
            java.util.HashMap r7 = new java.util.HashMap
            r7.<init>()
            r5.put(r6, r7)
        L53:
            java.util.HashMap r5 = r9.mCache
            java.lang.Integer r6 = java.lang.Integer.valueOf(r2)
            java.lang.Object r5 = r5.get(r6)
            java.util.HashMap r5 = (java.util.HashMap) r5
            java.lang.Integer r6 = java.lang.Integer.valueOf(r10)
            boolean r5 = r5.containsKey(r6)
            if (r5 != 0) goto L81
            java.util.HashMap r5 = r9.mCache
            java.lang.Integer r6 = java.lang.Integer.valueOf(r2)
            java.lang.Object r5 = r5.get(r6)
            java.util.HashMap r5 = (java.util.HashMap) r5
            java.lang.Integer r6 = java.lang.Integer.valueOf(r10)
            com.android.server.enterprise.browser.BrowserPolicy$BrowserProxyCache r7 = new com.android.server.enterprise.browser.BrowserPolicy$BrowserProxyCache
            r7.<init>(r2, r10)
            r5.put(r6, r7)
        L81:
            java.util.HashMap r5 = r9.mCache     // Catch: java.lang.Exception -> Lcf
            java.lang.Integer r6 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Exception -> Lcf
            java.lang.Object r5 = r5.get(r6)     // Catch: java.lang.Exception -> Lcf
            java.util.HashMap r5 = (java.util.HashMap) r5     // Catch: java.lang.Exception -> Lcf
            java.lang.Integer r6 = java.lang.Integer.valueOf(r10)     // Catch: java.lang.Exception -> Lcf
            java.lang.Object r5 = r5.get(r6)     // Catch: java.lang.Exception -> Lcf
            com.android.server.enterprise.browser.BrowserPolicy$BrowserProxyCache r5 = (com.android.server.enterprise.browser.BrowserPolicy.BrowserProxyCache) r5     // Catch: java.lang.Exception -> Lcf
            boolean r6 = r5.isAlreadySet()     // Catch: java.lang.Exception -> Lcf
            if (r6 == 0) goto La6
            boolean r6 = r5.isOwner(r1)     // Catch: java.lang.Exception -> Lcf
            if (r6 == 0) goto La4
            goto La6
        La4:
            r10 = r3
            goto Lbe
        La6:
            android.content.ContentValues r6 = new android.content.ContentValues     // Catch: java.lang.Exception -> Lcf
            r6.<init>()     // Catch: java.lang.Exception -> Lcf
            java.lang.String r7 = "proxyServer"
            r6.put(r7, r4)     // Catch: java.lang.Exception -> Lcf
            com.android.server.enterprise.storage.EdmStorageProvider r7 = r9.mEdmStorageProvider     // Catch: java.lang.Exception -> Lcf
            java.lang.String r8 = "BROWSER_PROXY"
            boolean r10 = r7.putValues(r1, r10, r8, r6)     // Catch: java.lang.Exception -> Lcf
            if (r10 == 0) goto Lbe
            r5.setProxy(r1, r4)     // Catch: java.lang.Exception -> Lcf
        Lbe:
            if (r10 == 0) goto Lcd
            android.content.Context r9 = r9.mContext     // Catch: java.lang.Exception -> Lcf
            java.lang.String r1 = "BrowserPolicy/getHttpProxy"
            com.android.server.enterprise.utils.SecContentProviderUtil.notifyPolicyChangesAsUser(r9, r1, r2)     // Catch: java.lang.Exception -> Lcf
            java.lang.String r9 = "setHttpProxy() : SecContentProvider updated."
            android.util.Slog.d(r0, r9)     // Catch: java.lang.Exception -> Lcf
        Lcd:
            r3 = r10
            goto Ld6
        Lcf:
            r9 = move-exception
            java.lang.String r10 = "setHttpProxy() : failed."
            android.util.Log.e(r0, r10, r9)
        Ld6:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r10 = "setHttpProxy("
            r9.append(r10)
            r9.append(r11)
            java.lang.String r10 = ") : "
            r9.append(r10)
            r9.append(r3)
            java.lang.String r9 = r9.toString()
            android.util.Log.i(r0, r9)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.browser.BrowserPolicy.setHttpProxy(com.samsung.android.knox.ContextInfo, java.lang.String):boolean");
    }

    public boolean clearHttpProxy(ContextInfo contextInfo) {
        boolean z;
        ContextInfo enforceBrowserProxyPermission = enforceBrowserProxyPermission(contextInfo);
        int i = enforceBrowserProxyPermission.mCallerUid;
        int i2 = enforceBrowserProxyPermission.mContainerId;
        int userId = UserHandle.getUserId(i);
        if (this.mCache.containsKey(Integer.valueOf(userId)) && ((HashMap) this.mCache.get(Integer.valueOf(userId))).containsKey(Integer.valueOf(i2)) && ((BrowserProxyCache) ((HashMap) this.mCache.get(Integer.valueOf(userId))).get(Integer.valueOf(i2))).isOwner(i)) {
            z = this.mEdmStorageProvider.removeByAdmin("BROWSER_PROXY", i, i2);
            if (z) {
                ((BrowserProxyCache) ((HashMap) this.mCache.get(Integer.valueOf(userId))).get(Integer.valueOf(i2))).clear();
                ((HashMap) this.mCache.get(Integer.valueOf(userId))).remove(Integer.valueOf(i2));
                if (((HashMap) this.mCache.get(Integer.valueOf(userId))).isEmpty()) {
                    this.mCache.remove(Integer.valueOf(userId));
                }
                SecContentProviderUtil.notifyPolicyChangesAsUser(this.mContext, "BrowserPolicy/getHttpProxy", userId);
                Slog.d("BrowserPolicy", "clearHttpProxy() : SecContentProvider updated.");
            }
        } else {
            z = false;
        }
        Log.i("BrowserPolicy", "clearHttpProxy() : " + z);
        return z;
    }

    public String getHttpProxy(ContextInfo contextInfo) {
        int callingOrCurrentUserId = Utils.getCallingOrCurrentUserId(contextInfo);
        int i = contextInfo.mContainerId;
        String str = (this.mCache.containsKey(Integer.valueOf(callingOrCurrentUserId)) && ((HashMap) this.mCache.get(Integer.valueOf(callingOrCurrentUserId))).containsKey(Integer.valueOf(i))) ? ((BrowserProxyCache) ((HashMap) this.mCache.get(Integer.valueOf(callingOrCurrentUserId))).get(Integer.valueOf(i))).mProxySetting : null;
        Slog.d("BrowserPolicy", "getHttpProxy() : " + str);
        return str;
    }

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void onAdminRemoved(int i) {
        int userId = UserHandle.getUserId(i);
        if (this.mCache.containsKey(Integer.valueOf(userId)) && ((HashMap) this.mCache.get(Integer.valueOf(userId))).containsKey(0) && ((BrowserProxyCache) ((HashMap) this.mCache.get(Integer.valueOf(userId))).get(0)).isOwner(i)) {
            ((BrowserProxyCache) ((HashMap) this.mCache.get(Integer.valueOf(userId))).get(0)).clear();
            ((HashMap) this.mCache.get(Integer.valueOf(userId))).remove(0);
            if (((HashMap) this.mCache.get(Integer.valueOf(userId))).isEmpty()) {
                this.mCache.remove(Integer.valueOf(userId));
            }
        }
    }

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void onPreAdminRemoval(int i) {
        removeAdmin(new ContextInfo(i, 0));
    }

    public static boolean validateProxyParameters(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                int parseInt = Integer.parseInt(str2);
                if (parseInt > 0 && parseInt <= 65535) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("^$|^[");
                    sb.append("a-zA-Z0-9\\_");
                    sb.append("]+(\\-[");
                    sb.append("a-zA-Z0-9\\_");
                    sb.append("]+)*(\\.[");
                    sb.append("a-zA-Z0-9\\_");
                    sb.append("]+(\\-[");
                    sb.append("a-zA-Z0-9\\_");
                    sb.append("]+)*)*$");
                    return Pattern.compile(sb.toString()).matcher(str).matches();
                }
            } catch (NumberFormatException unused) {
            }
        }
        return false;
    }

    public int setURLFilterEnabledEnforcingFirewallPermission(ContextInfo contextInfo, boolean z) {
        return setURLFilterEnabled(enforceFirewallPermission(contextInfo), z);
    }

    public int setURLFilterEnabledEnforcingBrowserPermission(ContextInfo contextInfo, boolean z) {
        return setURLFilterEnabled(enforceBrowserPermission(contextInfo), z);
    }

    public final int setURLFilterEnabled(ContextInfo contextInfo, boolean z) {
        Log.d("BrowserPolicy", "setURLFilterEnabled(" + z + ")");
        int i = contextInfo.mContainerId;
        int i2 = contextInfo.mCallerUid;
        int callingOrCurrentUserId = Utils.getCallingOrCurrentUserId(contextInfo);
        ContentValues contentValues = new ContentValues();
        contentValues.put("filtering", String.valueOf(z));
        boolean putValues = this.mEdmStorageProvider.putValues(i2, i, "WebFilterSettingsTable", contentValues);
        if (putValues) {
            WebFilteringCache webFilteringCache = getWebFilteringCache(callingOrCurrentUserId);
            synchronized (webFilteringCache.mUrlBlacklistAllAdmin) {
                webFilteringCache.mUrlBlacklistAllAdmin.clear();
                webFilteringCache.mIsUrlFilterStateUpdated = false;
                webFilteringCache.mIsUrlBlacklistUpdated = false;
                refreshWebFiltering(webFilteringCache, callingOrCurrentUserId);
                if (!z) {
                    this.mEdmStorageProvider.removeByAdmin("WebFilterTable", i2);
                }
            }
            SecContentProviderUtil.notifyPolicyChangesAsUser(this.mContext, "FirewallPolicy/getURLFilterEnabled", callingOrCurrentUserId);
        }
        Slog.d("BrowserPolicy", "setURLFilterEnabled : " + z);
        return putValues ? 1 : 0;
    }

    public boolean getURLFilterEnabledEnforcingFirewallPermission(ContextInfo contextInfo, boolean z, boolean z2) {
        try {
            if (z2) {
                contextInfo = enforceFirewallPermission(contextInfo);
            } else {
                contextInfo = enforceFirewallPermissionByContext(contextInfo);
            }
        } catch (SecurityException unused) {
            EnterprisePermissionChecker.getInstance(this.mContext).enforceAuthorization("FirewallPolicy", "getURLFilterEnabled");
        }
        return getURLFilterEnabled(contextInfo, z, z2);
    }

    public boolean getURLFilterEnabledEnforcingBrowserPermission(ContextInfo contextInfo, boolean z, boolean z2) {
        try {
            if (z2) {
                contextInfo = enforceBrowserPermission(contextInfo);
            } else {
                contextInfo = enforceBrowserPermissionByContext(contextInfo);
            }
        } catch (SecurityException unused) {
            EnterprisePermissionChecker.getInstance(this.mContext).enforceAuthorization("FirewallPolicy", "getURLFilterEnabled");
        }
        return getURLFilterEnabled(contextInfo, z, z2);
    }

    public final boolean getURLFilterEnabled(ContextInfo contextInfo, boolean z, boolean z2) {
        int i = contextInfo.mContainerId;
        int callingOrCurrentUserId = Utils.getCallingOrCurrentUserId(contextInfo);
        if (z) {
            contextInfo = new ContextInfo(-1, i);
        }
        WebFilteringCache webFilteringCache = getWebFilteringCache(callingOrCurrentUserId);
        if (!webFilteringCache.mIsUrlFilterStateUpdated) {
            webFilteringCache.mUrlFilterStateCache = getUrlFilterState(contextInfo, "filtering");
            webFilteringCache.mIsUrlFilterStateUpdated = true;
            refreshWebFiltering(webFilteringCache, callingOrCurrentUserId);
        }
        return webFilteringCache.mUrlFilterStateCache;
    }

    public int setURLFilterListEnforcingFirewallPermission(ContextInfo contextInfo, List list) {
        return setURLFilterList(enforceFirewallPermission(contextInfo), list);
    }

    public int setURLFilterListEnforcingBrowserPermission(ContextInfo contextInfo, List list) {
        return setURLFilterList(enforceBrowserPermission(contextInfo), list);
    }

    public final int setURLFilterList(ContextInfo contextInfo, List list) {
        int i = contextInfo.mContainerId;
        int i2 = contextInfo.mCallerUid;
        int callingOrCurrentUserId = Utils.getCallingOrCurrentUserId(contextInfo);
        if (list == null) {
            return 0;
        }
        boolean saveUrlBlackList = saveUrlBlackList(i, i2, list);
        if (saveUrlBlackList) {
            WebFilteringCache webFilteringCache = getWebFilteringCache(callingOrCurrentUserId);
            synchronized (webFilteringCache.mUrlBlacklistAllAdmin) {
                webFilteringCache.mUrlBlacklistAllAdmin.clear();
                webFilteringCache.mIsUrlBlacklistUpdated = false;
                refreshWebFiltering(webFilteringCache, callingOrCurrentUserId);
            }
            SecContentProviderUtil.notifyPolicyChangesAsUser(this.mContext, "FirewallPolicy/getURLFilterList", callingOrCurrentUserId);
        }
        return saveUrlBlackList ? 1 : 0;
    }

    public List getURLFilterListEnforcingFirewallPermission(ContextInfo contextInfo, boolean z, boolean z2) {
        try {
            if (z2) {
                contextInfo = enforceFirewallPermission(contextInfo);
            } else {
                contextInfo = enforceFirewallPermissionByContext(contextInfo);
            }
        } catch (SecurityException unused) {
            EnterprisePermissionChecker.getInstance(this.mContext).enforceAuthorization("FirewallPolicy", "getURLFilterList");
        }
        return getURLFilterList(contextInfo, z, z2);
    }

    public List getURLFilterListEnforcingBrowserPermission(ContextInfo contextInfo, boolean z, boolean z2) {
        try {
            if (z2) {
                contextInfo = enforceBrowserPermission(contextInfo);
            } else {
                contextInfo = enforceBrowserPermissionByContext(contextInfo);
            }
        } catch (SecurityException unused) {
            EnterprisePermissionChecker.getInstance(this.mContext).enforceAuthorization("FirewallPolicy", "getURLFilterList");
        }
        return getURLFilterList(contextInfo, z, z2);
    }

    public final List getURLFilterList(ContextInfo contextInfo, boolean z, boolean z2) {
        List list;
        int callingOrCurrentUserId = Utils.getCallingOrCurrentUserId(contextInfo);
        Log.d("BrowserPolicy", "getURLFilterList => userId " + callingOrCurrentUserId + " callerUid " + contextInfo.mCallerUid + " allAdmins " + z);
        WebFilteringCache webFilteringCache = getWebFilteringCache(callingOrCurrentUserId);
        if (z) {
            synchronized (webFilteringCache.mUrlBlacklistAllAdmin) {
                if (!webFilteringCache.mIsUrlBlacklistUpdated) {
                    list = getUrlBlackList(contextInfo, true);
                    if (list != null && !list.isEmpty()) {
                        Log.d("BrowserPolicy", "getUrlBlackList - synchronized");
                        webFilteringCache.mUrlBlacklistAllAdmin.clear();
                        webFilteringCache.mUrlBlacklistAllAdmin.addAll(list);
                        webFilteringCache.mIsUrlBlacklistUpdated = true;
                    }
                } else {
                    list = webFilteringCache.mUrlBlacklistAllAdmin;
                }
            }
            return list;
        }
        return getUrlBlackList(contextInfo, false);
    }

    public boolean isUrlBlocked(ContextInfo contextInfo, String str) {
        boolean z = false;
        if (!getURLFilterEnabled(contextInfo, true, false)) {
            Log.d("BrowserPolicy", "isUrlBlocked - Policy disabled");
            return false;
        }
        List uRLFilterList = getURLFilterList(contextInfo, true, false);
        Log.d("BrowserPolicy", "urlBlacklist: " + uRLFilterList);
        if (uRLFilterList != null && !uRLFilterList.isEmpty()) {
            Iterator it = uRLFilterList.iterator();
            boolean z2 = false;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String replace = ((String) it.next()).replace("*", ".*");
                String trim = str.trim();
                String trim2 = replace.trim();
                if (trim2.endsWith("/")) {
                    trim2 = trim2.substring(0, trim2.length() - 1);
                }
                if (trim.endsWith("/")) {
                    trim = trim.substring(0, trim.length() - 1);
                }
                if (trim.startsWith("http://")) {
                    trim = trim.substring(7);
                } else if (trim.startsWith("https://")) {
                    trim = trim.substring(8);
                }
                if (trim2.startsWith("https://")) {
                    trim2 = trim2.substring(8);
                } else if (trim2.startsWith("http://")) {
                    trim2 = trim2.substring(7);
                }
                try {
                    Pattern compile = Pattern.compile(trim2);
                    z2 = compile.matcher(trim).matches();
                    if (!z2 && trim.contains("/")) {
                        z2 = compile.matcher(trim.substring(0, trim.indexOf(47))).matches();
                    }
                } catch (ArrayIndexOutOfBoundsException unused) {
                    Log.e("BrowserPolicy", "isUrlBlocked - Regex is not valid");
                }
                if (z2) {
                    if (getURLFilterReportEnabled(contextInfo, true, false)) {
                        saveURLBlockedReport(contextInfo, str);
                    }
                }
            }
            z = z2;
        }
        Log.d("BrowserPolicy", "isUrlBlocked: " + z);
        return z;
    }

    public void saveURLBlockedReportEnforcingFirewallPermission(ContextInfo contextInfo, String str) {
        try {
            enforceFirewallPermissionByContext(contextInfo);
        } catch (SecurityException unused) {
            Log.d("BrowserPolicy", "Enforcing Chrome permission");
            EnterprisePermissionChecker.getInstance(this.mContext).enforceAuthorization("FirewallPolicy", "saveURLBlockedReport");
        }
        saveURLBlockedReport(contextInfo, str);
    }

    public final void saveURLBlockedReport(ContextInfo contextInfo, String str) {
        Log.d("BrowserPolicy", "saveURLBlockedReport");
        Calendar calendar = Calendar.getInstance();
        int callingOrCurrentUserId = Utils.getCallingOrCurrentUserId(contextInfo);
        Log.d("BrowserPolicy", "saveURLBlockedReport > userId = " + callingOrCurrentUserId);
        long timeInMillis = calendar.getTimeInMillis();
        ContentValues contentValues = new ContentValues();
        contentValues.put("url", str);
        contentValues.put("time", String.valueOf(timeInMillis));
        contentValues.put("containerID", (Integer) 0);
        contentValues.put("userID", Integer.valueOf(callingOrCurrentUserId));
        if (this.mEdmStorageProvider.putValuesNoUpdate("WebFilterLogTable", contentValues)) {
            return;
        }
        Log.d("BrowserPolicy", "isUrlBlocked - Failed on inserting log");
    }

    public int setURLFilterReportEnabledEnforcingFirewallPermission(ContextInfo contextInfo, boolean z) {
        return setURLFilterReportEnabled(enforceFirewallPermission(contextInfo), z);
    }

    public int setURLFilterReportEnabledEnforcingBrowserPermission(ContextInfo contextInfo, boolean z) {
        return setURLFilterReportEnabled(enforceBrowserPermission(contextInfo), z);
    }

    public final int setURLFilterReportEnabled(ContextInfo contextInfo, boolean z) {
        int i = contextInfo.mContainerId;
        int i2 = contextInfo.mCallerUid;
        int callingOrCurrentUserId = Utils.getCallingOrCurrentUserId(contextInfo);
        ContentValues contentValues = new ContentValues();
        contentValues.put("logging", String.valueOf(z));
        boolean putValues = this.mEdmStorageProvider.putValues(i2, i, "WebFilterSettingsTable", contentValues);
        if (putValues) {
            Log.d("BrowserPolicy", "setURLFilterReportEnabled - Added to database, refreshing cache userId= " + callingOrCurrentUserId);
            WebFilteringCache webFilteringCache = getWebFilteringCache(callingOrCurrentUserId);
            webFilteringCache.mIsUrlFilterReportUpdated = false;
            webFilteringCache.mIsUrlBlacklistUpdated = false;
            refreshWebFiltering(webFilteringCache, callingOrCurrentUserId);
            SecContentProviderUtil.notifyPolicyChangesAsUser(this.mContext, "FirewallPolicy/getURLFilterReportEnabled", callingOrCurrentUserId);
        }
        boolean uRLFilterReportEnabled = getURLFilterReportEnabled(contextInfo, true, false);
        if (!z || !uRLFilterReportEnabled) {
            Log.d("BrowserPolicy", "setURLFilterReportEnabled - Clean url report");
            this.mEdmStorageProvider.deleteDataByFields("WebFilterLogTable", new String[]{"containerID", "userID"}, new String[]{String.valueOf(0), String.valueOf(callingOrCurrentUserId)});
        }
        Log.d("BrowserPolicy", "setURLFilterReportEnabled - return = " + putValues);
        return putValues ? 1 : 0;
    }

    public boolean getURLFilterReportEnabledEnforcingFirewallPermission(ContextInfo contextInfo, boolean z, boolean z2) {
        try {
            if (z2) {
                contextInfo = enforceFirewallPermission(contextInfo);
            } else {
                contextInfo = enforceFirewallPermissionByContext(contextInfo);
            }
        } catch (SecurityException unused) {
            EnterprisePermissionChecker.getInstance(this.mContext).enforceAuthorization("FirewallPolicy", "getURLFilterReportEnabled");
        }
        return getURLFilterReportEnabled(contextInfo, z, z2);
    }

    public boolean getURLFilterReportEnabledEnforcingBrowserPermission(ContextInfo contextInfo, boolean z, boolean z2) {
        try {
            if (z2) {
                contextInfo = enforceBrowserPermission(contextInfo);
            } else {
                contextInfo = enforceBrowserPermissionByContext(contextInfo);
            }
        } catch (SecurityException unused) {
            EnterprisePermissionChecker.getInstance(this.mContext).enforceAuthorization("FirewallPolicy", "getURLFilterReportEnabled");
        }
        return getURLFilterReportEnabled(contextInfo, z, z2);
    }

    public final boolean getURLFilterReportEnabled(ContextInfo contextInfo, boolean z, boolean z2) {
        int callingOrCurrentUserId = Utils.getCallingOrCurrentUserId(contextInfo);
        WebFilteringCache webFilteringCache = getWebFilteringCache(callingOrCurrentUserId);
        if (!webFilteringCache.mIsUrlFilterReportUpdated) {
            webFilteringCache.mUrlFilterReportState = getUrlFilterState(contextInfo, "logging");
            webFilteringCache.mIsUrlFilterReportUpdated = true;
            Log.d("WebFilteringCache", "cache.mUrlFilterReportState=> " + webFilteringCache.mUrlFilterReportState);
            refreshWebFiltering(webFilteringCache, callingOrCurrentUserId);
        }
        return webFilteringCache.mUrlFilterReportState;
    }

    public List getURLFilterReportEnforcingFirewallPermission(ContextInfo contextInfo) {
        return getURLFilterReport(enforceFirewallPermission(contextInfo));
    }

    public List getURLFilterReportEnforcingBrowserPermission(ContextInfo contextInfo) {
        return getURLFilterReport(enforceBrowserPermission(contextInfo));
    }

    public final List getURLFilterReport(ContextInfo contextInfo) {
        Log.d("BrowserPolicy", "getURLFilterReport()");
        ArrayList arrayList = new ArrayList();
        String[] strArr = {String.valueOf(0), String.valueOf(Utils.getCallingOrCurrentUserId(contextInfo))};
        EdmStorageProvider edmStorageProvider = this.mEdmStorageProvider;
        ArrayList<ContentValues> dataByFields = edmStorageProvider.getDataByFields("WebFilterLogTable", new String[]{"containerID", "userID"}, strArr, new String[]{"url", "time"});
        if (dataByFields == null) {
            Log.d("BrowserPolicy", "getURLFilterReport - cvList is null");
            return null;
        }
        for (ContentValues contentValues : dataByFields) {
            String asString = contentValues.getAsString("time");
            String asString2 = contentValues.getAsString("url");
            if (asString != null && asString2 != null) {
                arrayList.add(asString.concat(XmlUtils.STRING_ARRAY_SEPARATOR).concat(asString2));
            }
        }
        return arrayList;
    }

    public final boolean getUrlFilterState(ContextInfo contextInfo, String str) {
        boolean z;
        Log.d("BrowserPolicy", "getUrlFilterState - uid:" + contextInfo.mCallerUid + " containerId:" + contextInfo.mContainerId + " column:" + str);
        int callingOrCurrentUserId = Utils.getCallingOrCurrentUserId(contextInfo);
        StringBuilder sb = new StringBuilder();
        sb.append("getUrlFilterState - userId: ");
        sb.append(callingOrCurrentUserId);
        Log.d("BrowserPolicy", sb.toString());
        List valuesListAsUser = this.mEdmStorageProvider.getValuesListAsUser(contextInfo.mContainerId, "WebFilterSettingsTable", new String[]{str}, callingOrCurrentUserId);
        if (valuesListAsUser != null) {
            Iterator it = valuesListAsUser.iterator();
            while (it.hasNext()) {
                String asString = ((ContentValues) it.next()).getAsString(str);
                if (asString != null && asString.equals("true")) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        Log.d("BrowserPolicy", "getUrlFilterState - ret: " + z);
        return z;
    }

    public final boolean saveUrlBlackList(int i, int i2, List list) {
        Iterator it = list.iterator();
        ContentValues contentValues = new ContentValues();
        this.mEdmStorageProvider.removeByAdmin("WebFilterTable", i2, i);
        while (it.hasNext()) {
            contentValues.put("adminUid", String.valueOf(EdmStorageProviderBase.translateToAdminLUID(i2, i)));
            contentValues.put("url", (String) it.next());
            Log.d("BrowserPolicy", "saveUrlBlackList - cv: " + contentValues);
            if (!this.mEdmStorageProvider.putValuesNoUpdate("WebFilterTable", contentValues)) {
                return false;
            }
            contentValues.clear();
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003d, code lost:
    
        if (r8.moveToFirst() != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003f, code lost:
    
        r4.add(r8.getString(r8.getColumnIndexOrThrow("url")));
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004e, code lost:
    
        if (r8.moveToNext() != false) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List getUrlBlackList(com.samsung.android.knox.ContextInfo r9, boolean r10) {
        /*
            r8 = this;
            int r0 = r9.mCallerUid
            int r1 = r9.mContainerId
            java.lang.String r2 = "url"
            java.lang.String[] r3 = new java.lang.String[]{r2}
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "getUrlBlackList - uid "
            r5.append(r6)
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            java.lang.String r6 = "BrowserPolicy"
            android.util.Log.d(r6, r5)
            java.lang.String r5 = "WebFilterTable"
            r7 = 0
            if (r10 != 0) goto L7d
            com.android.server.enterprise.storage.EdmStorageProvider r8 = r8.mEdmStorageProvider
            android.database.Cursor r8 = r8.getCursorByAdmin(r5, r0, r1, r3)
            if (r8 != 0) goto L39
            java.lang.String r8 = "getUrlBlackList - Cursor is null"
            android.util.Log.d(r6, r8)
            return r7
        L39:
            boolean r9 = r8.moveToFirst()     // Catch: java.lang.Throwable -> L54 android.database.SQLException -> L56 java.lang.IllegalArgumentException -> L70
            if (r9 == 0) goto L50
        L3f:
            int r9 = r8.getColumnIndexOrThrow(r2)     // Catch: java.lang.Throwable -> L54 android.database.SQLException -> L56 java.lang.IllegalArgumentException -> L70
            java.lang.String r9 = r8.getString(r9)     // Catch: java.lang.Throwable -> L54 android.database.SQLException -> L56 java.lang.IllegalArgumentException -> L70
            r4.add(r9)     // Catch: java.lang.Throwable -> L54 android.database.SQLException -> L56 java.lang.IllegalArgumentException -> L70
            boolean r9 = r8.moveToNext()     // Catch: java.lang.Throwable -> L54 android.database.SQLException -> L56 java.lang.IllegalArgumentException -> L70
            if (r9 != 0) goto L3f
        L50:
            r8.close()
            goto Lc0
        L54:
            r9 = move-exception
            goto L79
        L56:
            r9 = move-exception
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L54
            r10.<init>()     // Catch: java.lang.Throwable -> L54
            java.lang.String r0 = "Exception occurred accessing Enterprise db "
            r10.append(r0)     // Catch: java.lang.Throwable -> L54
            java.lang.String r9 = r9.getMessage()     // Catch: java.lang.Throwable -> L54
            r10.append(r9)     // Catch: java.lang.Throwable -> L54
            java.lang.String r9 = r10.toString()     // Catch: java.lang.Throwable -> L54
            android.util.Log.e(r6, r9)     // Catch: java.lang.Throwable -> L54
            goto L50
        L70:
            java.lang.String r9 = "getUrlBlackList - IllegalArgumentException"
            android.util.Log.e(r6, r9)     // Catch: java.lang.Throwable -> L54
            r8.close()
            return r7
        L79:
            r8.close()
            throw r9
        L7d:
            int r9 = com.android.server.enterprise.utils.Utils.getCallingOrCurrentUserId(r9)
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r0 = "Getting URLList called by server for user "
            r10.append(r0)
            r10.append(r9)
            java.lang.String r10 = r10.toString()
            android.util.Log.d(r6, r10)
            java.util.ArrayList r10 = new java.util.ArrayList
            r10.<init>()
            com.android.server.enterprise.storage.EdmStorageProvider r8 = r8.mEdmStorageProvider
            java.util.List r8 = r8.getValuesListAsUser(r1, r5, r3, r9)
            if (r8 != 0) goto La8
            java.lang.String r8 = "getUrlBlackList - cv is null"
            android.util.Log.d(r6, r8)
            return r7
        La8:
            java.util.Iterator r8 = r8.iterator()
        Lac:
            boolean r9 = r8.hasNext()
            if (r9 == 0) goto Lc0
            java.lang.Object r9 = r8.next()
            android.content.ContentValues r9 = (android.content.ContentValues) r9
            java.lang.String r9 = r9.getAsString(r2)
            r4.add(r9)
            goto Lac
        Lc0:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.browser.BrowserPolicy.getUrlBlackList(com.samsung.android.knox.ContextInfo, boolean):java.util.List");
    }

    public final WebFilteringCache getWebFilteringCache(int i) {
        WebFilteringCache[] webFilteringCacheArr = (WebFilteringCache[]) this.mUserCache.get(Integer.valueOf(i));
        if (webFilteringCacheArr == null) {
            WebFilteringCache[] webFilteringCacheArr2 = new WebFilteringCache[2];
            for (int i2 = 0; i2 < 2; i2++) {
                webFilteringCacheArr2[i2] = new WebFilteringCache(i2);
            }
            this.mUserCache.put(Integer.valueOf(i), webFilteringCacheArr2);
            webFilteringCacheArr = webFilteringCacheArr2;
        }
        return webFilteringCacheArr[0];
    }

    public final void refreshWebFiltering(WebFilteringCache webFilteringCache, int i) {
        WebFilteringCache[] webFilteringCacheArr;
        HashMap hashMap = this.mUserCache;
        if (hashMap == null || !hashMap.containsKey(Integer.valueOf(i)) || (webFilteringCacheArr = (WebFilteringCache[]) this.mUserCache.get(Integer.valueOf(i))) == null) {
            return;
        }
        this.mUserCache.remove(Integer.valueOf(i));
        webFilteringCacheArr[0] = webFilteringCache;
        this.mUserCache.put(Integer.valueOf(i), webFilteringCacheArr);
    }

    public boolean addWebBookmarkByteBuffer(ContextInfo contextInfo, Uri uri, String str, byte[] bArr) {
        ContextInfo enforceBrowserPermission = enforceBrowserPermission(contextInfo);
        if (uri == null || str == null) {
            return false;
        }
        return addBookmark(enforceBrowserPermission, uri.toString(), str, null);
    }

    public boolean addWebBookmarkBitmap(ContextInfo contextInfo, Uri uri, String str, Bitmap bitmap) {
        ContextInfo enforceBrowserPermission = enforceBrowserPermission(contextInfo);
        if (uri == null || str == null) {
            return false;
        }
        return addBookmark(enforceBrowserPermission, uri.toString(), str, null);
    }

    public boolean deleteWebBookmark(ContextInfo contextInfo, Uri uri, String str) {
        ContextInfo enforceBrowserPermission = enforceBrowserPermission(contextInfo);
        if (uri == null) {
            return false;
        }
        return removeFromBookmarks(enforceBrowserPermission, uri.toString(), str);
    }

    public static final void addOrUrlEquals(StringBuilder sb) {
        sb.append(" OR url = ");
    }

    public static final Cursor getVisitedLike(ContentResolver contentResolver, String str, Uri uri, String[] strArr) {
        StringBuilder sb;
        boolean z = false;
        if (str.startsWith("http://")) {
            str = str.substring(7);
        } else if (str.startsWith("https://")) {
            str = str.substring(8);
            z = true;
        }
        if (str.startsWith("www.")) {
            str = str.substring(4);
        }
        if (z) {
            sb = new StringBuilder("url = ");
            DatabaseUtils.appendEscapedSQLString(sb, "https://" + str);
            addOrUrlEquals(sb);
            DatabaseUtils.appendEscapedSQLString(sb, "https://www." + str);
        } else {
            StringBuilder sb2 = new StringBuilder("url = ");
            DatabaseUtils.appendEscapedSQLString(sb2, str);
            addOrUrlEquals(sb2);
            String str2 = "www." + str;
            DatabaseUtils.appendEscapedSQLString(sb2, str2);
            addOrUrlEquals(sb2);
            DatabaseUtils.appendEscapedSQLString(sb2, "http://" + str);
            addOrUrlEquals(sb2);
            DatabaseUtils.appendEscapedSQLString(sb2, "http://" + str2);
            sb = sb2;
        }
        return contentResolver.query(uri, strArr, sb.toString(), null, null);
    }

    public final boolean addBookmarkToSBrowser(ContentResolver contentResolver, String str, String str2) {
        ContentValues contentValues = new ContentValues();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        boolean z = false;
        try {
            try {
                contentValues.put(KnoxCustomManagerService.SHORTCUT_TITLE, str2);
                contentValues.put("url", str);
                contentValues.put("editable", (Integer) 1);
                Uri insert = contentResolver.insert(SBROWSER_BOOKMARKS_URI, contentValues);
                if (insert != null) {
                    Log.d("BrowserPolicy", "addBookmarkToSBrowser() - uri: " + insert.toString());
                    z = true;
                } else {
                    Log.d("BrowserPolicy", "addBookmarkToSBrowser() - uri is null!");
                }
            } catch (IllegalArgumentException unused) {
                Log.d("BrowserPolicy", "Sbrowser provider error - unknown uri");
            }
            return z;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00b8 A[Catch: all -> 0x00dc, IllegalArgumentException -> 0x00de, TryCatch #0 {IllegalArgumentException -> 0x00de, blocks: (B:4:0x000d, B:6:0x0016, B:10:0x001f, B:13:0x003a, B:19:0x006e, B:23:0x00b8, B:26:0x00d2, B:30:0x009b, B:33:0x0063), top: B:3:0x000d, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d2 A[Catch: all -> 0x00dc, IllegalArgumentException -> 0x00de, TRY_LEAVE, TryCatch #0 {IllegalArgumentException -> 0x00de, blocks: (B:4:0x000d, B:6:0x0016, B:10:0x001f, B:13:0x003a, B:19:0x006e, B:23:0x00b8, B:26:0x00d2, B:30:0x009b, B:33:0x0063), top: B:3:0x000d, outer: #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean addBookmarkToChrome(android.content.ContentResolver r19, java.lang.String r20, java.lang.String r21) {
        /*
            r18 = this;
            r0 = r19
            r1 = r20
            r2 = r21
            java.lang.String r3 = "BrowserPolicy"
            long r4 = android.os.Binder.clearCallingIdentity()
            r6 = 0
            android.net.Uri r7 = com.android.server.enterprise.browser.BrowserPolicy.CHROME_BOOKMARKS_URI     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            r8 = 0
            android.database.Cursor r9 = r0.query(r7, r8, r8, r8)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            if (r9 != 0) goto L1f
            java.lang.String r0 = "addBookmarkToChrome cursor is null"
            android.util.Log.d(r3, r0)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            android.os.Binder.restoreCallingIdentity(r4)
            return r6
        L1f:
            int r10 = r9.getCount()     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            long r10 = (long) r10     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            r9.close()     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            r12 = 0
            int r9 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            java.lang.String r14 = "type"
            java.lang.String r15 = "parent"
            java.lang.String r6 = "title"
            java.lang.String r8 = "_id"
            r16 = 1
            if (r9 != 0) goto L68
            android.content.ContentValues r9 = new android.content.ContentValues     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            r9.<init>()     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            long r10 = r10 + r16
            java.lang.Long r12 = java.lang.Long.valueOf(r10)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            r9.put(r8, r12)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            java.lang.String r12 = "Samsung Mobile"
            r9.put(r6, r12)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            r12 = 0
            java.lang.Long r12 = java.lang.Long.valueOf(r12)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            r9.put(r15, r12)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            r12 = 2
            java.lang.Integer r12 = java.lang.Integer.valueOf(r12)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            r9.put(r14, r12)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            android.net.Uri r7 = r0.insert(r7, r9)     // Catch: java.lang.Exception -> L63 java.lang.Throwable -> Ldc
            goto L69
        L63:
            java.lang.String r7 = "Exception creating parent folder"
            android.util.Log.d(r3, r7)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
        L68:
            r7 = 0
        L69:
            r9 = 1
            if (r1 == 0) goto Lb5
            if (r2 == 0) goto Lb5
            android.content.ContentValues r7 = new android.content.ContentValues     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            r7.<init>()     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            long r10 = r10 + r16
            java.lang.Long r10 = java.lang.Long.valueOf(r10)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            r7.put(r8, r10)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            r7.put(r6, r2)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            java.lang.String r2 = "url"
            r7.put(r2, r1)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            java.lang.Long r1 = java.lang.Long.valueOf(r16)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            r7.put(r15, r1)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            java.lang.Integer r1 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            r7.put(r14, r1)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            android.net.Uri r1 = com.android.server.enterprise.browser.BrowserPolicy.CHROME_BOOKMARKS_URI     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Ldc
            android.net.Uri r8 = r0.insert(r1, r7)     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Ldc
            goto Lb6
        L9a:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            r1.<init>()     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            java.lang.String r2 = " updateBookmarks : insert bookmark items to db. Exception - "
            r1.append(r2)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            r1.append(r0)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            java.lang.String r0 = r1.toString()     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            android.util.Log.e(r3, r0)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            r8 = 0
            goto Lb6
        Lb5:
            r8 = r7
        Lb6:
            if (r8 == 0) goto Ld2
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            r0.<init>()     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            java.lang.String r1 = "addBookmarkToChrome() - uri: "
            r0.append(r1)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            java.lang.String r1 = r8.toString()     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            r0.append(r1)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            android.util.Log.d(r3, r0)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            r6 = r9
            goto Ld8
        Ld2:
            java.lang.String r0 = "addBookmarkToChrome() - uri is null!"
            android.util.Log.d(r3, r0)     // Catch: java.lang.Throwable -> Ldc java.lang.IllegalArgumentException -> Lde
            r6 = 0
        Ld8:
            android.os.Binder.restoreCallingIdentity(r4)
            goto Le7
        Ldc:
            r0 = move-exception
            goto Le8
        Lde:
            java.lang.String r0 = "Chrome provider error - unknown uri"
            android.util.Log.d(r3, r0)     // Catch: java.lang.Throwable -> Ldc
            android.os.Binder.restoreCallingIdentity(r4)
            r6 = 0
        Le7:
            return r6
        Le8:
            android.os.Binder.restoreCallingIdentity(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.browser.BrowserPolicy.addBookmarkToChrome(android.content.ContentResolver, java.lang.String, java.lang.String):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00f4, code lost:
    
        if (0 == 0) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean addBookmarkToAndroidBrowser(android.content.ContentResolver r12, java.lang.String r13, java.lang.String r14, android.graphics.Bitmap r15) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.browser.BrowserPolicy.addBookmarkToAndroidBrowser(android.content.ContentResolver, java.lang.String, java.lang.String, android.graphics.Bitmap):boolean");
    }

    public final boolean addBookmark(ContextInfo contextInfo, String str, String str2, Bitmap bitmap) {
        Context createContextAsUser = Utils.createContextAsUser(this.mContext, "android", 0, Utils.getCallingOrCurrentUserId(contextInfo));
        if (createContextAsUser == null) {
            Log.e("BrowserPolicy", "addBookmark() - Could not create context for current user!");
            return false;
        }
        if (str.length() == 0 || str2.length() == 0) {
            Log.e("BrowserPolicy", "addBookmark() - uri or title cannot be empty");
            return false;
        }
        ContentResolver contentResolver = createContextAsUser.getContentResolver();
        boolean addBookmarkToChrome = addBookmarkToChrome(contentResolver, str, str2);
        if (addBookmarkToSBrowser(contentResolver, str, str2)) {
            return true;
        }
        return addBookmarkToAndroidBrowser(contentResolver, str, str2, bitmap) || addBookmarkToChrome;
    }

    public static byte[] bitmapToBytes(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public final boolean removeBookmarkFromSBrowser(ContentResolver contentResolver, String str, String str2) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        boolean z = false;
        try {
            try {
                int delete = contentResolver.delete(SBROWSER_BOOKMARKS_URI, "url = ? AND title = ?", new String[]{str, str2});
                Log.d("BrowserPolicy", "removeBookmarkFromSBrowser() - rows: " + delete);
                if (delete > 0) {
                    z = true;
                }
            } catch (IllegalArgumentException unused) {
                Log.d("BrowserPolicy", "Sbrowser provider error - unknown uri");
            }
            return z;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final boolean removeBookmarkFromChrome(ContentResolver contentResolver, String str, String str2) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        boolean z = false;
        try {
            try {
                Uri uri = CHROME_BOOKMARKS_URI;
                int delete = contentResolver.delete(uri, "url = ? AND title = ?", new String[]{str, str2});
                Log.d("BrowserPolicy", "removeBookmarkFromChrome() - rows: " + delete);
                if (delete == 0) {
                    delete = contentResolver.delete(uri, "url = ?", new String[]{str});
                }
                if (delete > 0) {
                    z = true;
                }
            } catch (IllegalArgumentException unused) {
                Log.d("BrowserPolicy", "Chrome provider error - unknown uri");
            }
            return z;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00af, code lost:
    
        if (r2 == null) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean removeBookmarkFromAndroidBrowser(android.content.ContentResolver r11, java.lang.String r12, java.lang.String r13) {
        /*
            r10 = this;
            java.lang.String r10 = "BrowserPolicy"
            long r0 = android.os.Binder.clearCallingIdentity()
            r2 = 0
            r3 = 0
            android.net.Uri r5 = android.provider.Browser.BOOKMARKS_URI     // Catch: java.lang.Throwable -> L8c java.lang.IllegalStateException -> L8e java.lang.IllegalArgumentException -> Laa
            java.lang.String[] r6 = android.provider.Browser.HISTORY_PROJECTION     // Catch: java.lang.Throwable -> L8c java.lang.IllegalStateException -> L8e java.lang.IllegalArgumentException -> Laa
            java.lang.String r7 = "url = ? AND title = ?"
            java.lang.String[] r8 = new java.lang.String[]{r12, r13}     // Catch: java.lang.Throwable -> L8c java.lang.IllegalStateException -> L8e java.lang.IllegalArgumentException -> Laa
            r9 = 0
            r4 = r11
            android.database.Cursor r12 = r4.query(r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L8c java.lang.IllegalStateException -> L8e java.lang.IllegalArgumentException -> Laa
            if (r12 != 0) goto L2a
            java.lang.String r11 = "removeBookmarkFromAndroidBrowser() - No provider found!!!"
            android.util.Log.d(r10, r11)     // Catch: java.lang.Throwable -> L84 java.lang.IllegalStateException -> L87 java.lang.IllegalArgumentException -> L8a
            if (r12 == 0) goto L26
            r12.close()
        L26:
            android.os.Binder.restoreCallingIdentity(r0)
            return r3
        L2a:
            boolean r13 = r12.moveToFirst()     // Catch: java.lang.Throwable -> L84 java.lang.IllegalStateException -> L87 java.lang.IllegalArgumentException -> L8a
            if (r13 != 0) goto L3d
            java.lang.String r11 = "removeBookmarkFromAndroidBrowser() - Empty cursor!!!"
            android.util.Log.w(r10, r11)     // Catch: java.lang.Throwable -> L84 java.lang.IllegalStateException -> L87 java.lang.IllegalArgumentException -> L8a
            r12.close()
            android.os.Binder.restoreCallingIdentity(r0)
            return r3
        L3d:
            android.net.Uri r13 = android.provider.Browser.BOOKMARKS_URI     // Catch: java.lang.Throwable -> L84 java.lang.IllegalStateException -> L87 java.lang.IllegalArgumentException -> L8a
            int r4 = r12.getInt(r3)     // Catch: java.lang.Throwable -> L84 java.lang.IllegalStateException -> L87 java.lang.IllegalArgumentException -> L8a
            long r4 = (long) r4     // Catch: java.lang.Throwable -> L84 java.lang.IllegalStateException -> L87 java.lang.IllegalArgumentException -> L8a
            android.net.Uri r13 = android.content.ContentUris.withAppendedId(r13, r4)     // Catch: java.lang.Throwable -> L84 java.lang.IllegalStateException -> L87 java.lang.IllegalArgumentException -> L8a
            r4 = 2
            int r4 = r12.getInt(r4)     // Catch: java.lang.Throwable -> L84 java.lang.IllegalStateException -> L87 java.lang.IllegalArgumentException -> L8a
            if (r4 != 0) goto L5b
            if (r13 == 0) goto L5b
            java.lang.String r4 = "removeBookmarkFromAndroidBrowser() - Deleting bookmark"
            android.util.Log.d(r10, r4)     // Catch: java.lang.Throwable -> L84 java.lang.IllegalStateException -> L87 java.lang.IllegalArgumentException -> L8a
            r11.delete(r13, r2, r2)     // Catch: java.lang.Throwable -> L84 java.lang.IllegalStateException -> L87 java.lang.IllegalArgumentException -> L8a
            goto L7c
        L5b:
            android.content.ContentValues r4 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L84 java.lang.IllegalStateException -> L87 java.lang.IllegalArgumentException -> L8a
            r4.<init>()     // Catch: java.lang.Throwable -> L84 java.lang.IllegalStateException -> L87 java.lang.IllegalArgumentException -> L8a
            java.lang.String r5 = "bookmark"
            java.lang.Integer r6 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> L84 java.lang.IllegalStateException -> L87 java.lang.IllegalArgumentException -> L8a
            r4.put(r5, r6)     // Catch: java.lang.Throwable -> L84 java.lang.IllegalStateException -> L87 java.lang.IllegalArgumentException -> L8a
            java.lang.String r5 = "removeBookmarkFromAndroidBrowser() - Updating database"
            android.util.Log.d(r10, r5)     // Catch: java.lang.IllegalStateException -> L73 java.lang.Throwable -> L84 java.lang.IllegalArgumentException -> L8a
            r11.update(r13, r4, r2, r2)     // Catch: java.lang.IllegalStateException -> L73 java.lang.Throwable -> L84 java.lang.IllegalArgumentException -> L8a
            goto L7c
        L73:
            java.lang.String r11 = "removeFromBookmarks"
            java.lang.String r13 = "no database!"
            android.util.Log.e(r11, r13)     // Catch: java.lang.Throwable -> L84 java.lang.IllegalStateException -> L87 java.lang.IllegalArgumentException -> L8a
        L7c:
            r12.close()
            android.os.Binder.restoreCallingIdentity(r0)
            r3 = 1
            goto Lb7
        L84:
            r10 = move-exception
            r2 = r12
            goto Lb8
        L87:
            r11 = move-exception
            r2 = r12
            goto L8f
        L8a:
            r2 = r12
            goto Laa
        L8c:
            r10 = move-exception
            goto Lb8
        L8e:
            r11 = move-exception
        L8f:
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8c
            r12.<init>()     // Catch: java.lang.Throwable -> L8c
            java.lang.String r13 = "Android provider error: "
            r12.append(r13)     // Catch: java.lang.Throwable -> L8c
            java.lang.String r11 = r11.getMessage()     // Catch: java.lang.Throwable -> L8c
            r12.append(r11)     // Catch: java.lang.Throwable -> L8c
            java.lang.String r11 = r12.toString()     // Catch: java.lang.Throwable -> L8c
            android.util.Log.e(r10, r11)     // Catch: java.lang.Throwable -> L8c
            if (r2 == 0) goto Lb4
            goto Lb1
        Laa:
            java.lang.String r11 = "Android provider error - unknown uri"
            android.util.Log.d(r10, r11)     // Catch: java.lang.Throwable -> L8c
            if (r2 == 0) goto Lb4
        Lb1:
            r2.close()
        Lb4:
            android.os.Binder.restoreCallingIdentity(r0)
        Lb7:
            return r3
        Lb8:
            if (r2 == 0) goto Lbd
            r2.close()
        Lbd:
            android.os.Binder.restoreCallingIdentity(r0)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.browser.BrowserPolicy.removeBookmarkFromAndroidBrowser(android.content.ContentResolver, java.lang.String, java.lang.String):boolean");
    }

    public final boolean removeFromBookmarks(ContextInfo contextInfo, String str, String str2) {
        Context createContextAsUser = Utils.createContextAsUser(this.mContext, "android", 0, Utils.getCallingOrCurrentUserId(contextInfo));
        if (createContextAsUser == null) {
            Log.e("BrowserPolicy", "removeFromBookmarks() - Could not create context for current user!");
            return false;
        }
        ContentResolver contentResolver = createContextAsUser.getContentResolver();
        boolean removeBookmarkFromChrome = removeBookmarkFromChrome(contentResolver, str, str2);
        if (removeBookmarkFromSBrowser(contentResolver, str, str2)) {
            return true;
        }
        return removeBookmarkFromAndroidBrowser(contentResolver, str, str2) || removeBookmarkFromChrome;
    }

    public final void removeAdmin(ContextInfo contextInfo) {
        WebFilteringCache webFilteringCache = getWebFilteringCache(UserHandle.getUserId(contextInfo.mCallerUid));
        webFilteringCache.mUrlBlacklistAllAdmin.clear();
        webFilteringCache.mIsUrlBlacklistUpdated = false;
        webFilteringCache.mIsUrlFilterStateUpdated = false;
        webFilteringCache.mIsUrlFilterReportUpdated = false;
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.DUMP") != 0) {
            printWriter.println("Permission Denial: can't dump SecurityPolicy");
        } else {
            this.mEnterpriseDumpHelper.dumpTable(printWriter, "BROWSER", new String[]{"browserSettings"});
        }
    }
}
