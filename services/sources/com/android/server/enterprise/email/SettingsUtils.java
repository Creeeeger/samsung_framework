package com.android.server.enterprise.email;

import android.app.AppGlobals;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.IPackageManager;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Binder;
import android.os.ConditionVariable;
import android.os.UserHandle;
import android.sec.enterprise.email.EnterpriseEmailAccount;
import android.sec.enterprise.email.EnterpriseExchangeAccount;
import android.sec.enterprise.email.EnterpriseLDAPAccount;
import android.util.Log;
import android.util.secutil.Slog;
import com.android.server.enterprise.EnterpriseService;
import com.android.server.enterprise.adapter.AdapterRegistry;
import com.android.server.enterprise.adapter.IPersonaManagerAdapter;
import com.android.server.enterprise.security.DeviceAccountPolicy;
import com.samsung.android.knox.ContextInfo;
import com.samsung.android.knox.accounts.Account;
import com.samsung.android.knox.accounts.HostAuth;
import com.samsung.android.knox.accounts.LDAPAccount;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;

/* loaded from: classes2.dex */
public abstract class SettingsUtils {
    public static final Uri ACCOUNT_CONTENT_URI = Uri.parse("content://com.android.email.provider/account");
    public static final Uri HOST_AUTH_CONTENT_URI = Uri.parse("content://com.android.email.provider/hostauth");
    public static final Uri POLICIES_CONTENT_URI = Uri.parse("content://com.android.email.provider/policies");
    public static Context emails = null;
    public static String adminPkg = null;
    public static int preCallingUid = -1;
    public static Map mServerPassword = new HashMap();
    public static Map mServerPasswordFocus = new HashMap();

    public static String getAccountType(boolean z, int i) {
        return z ? "com.samsung.android.exchange" : "com.samsung.android.email";
    }

    public static String getEasPackageName(int i) {
        return "com.samsung.android.email.provider";
    }

    public static String getEmailPackageName(int i) {
        return "com.samsung.android.email.provider";
    }

    public static synchronized void sendAccountsChangedBroadcast(int i, Context context, int i2) {
        synchronized (SettingsUtils.class) {
            int userId = UserHandle.getUserId(i2);
            try {
                Intent intent = new Intent("android.accounts.LOGIN_ACCOUNTS_CHANGED");
                intent.setFlags(268435456);
                context.sendBroadcastAsUser(intent, new UserHandle(userId));
                try {
                    if (userId != 0) {
                        if (isPersona(userId, context)) {
                            emails = context.createPackageContextAsUser(getEmailPackageName(i), 0, new UserHandle(userId));
                            Log.i("SettingsUtils", "sendAccountsChangedBroadcast : USER space   " + getEmailPackageName(i));
                        } else {
                            emails = context.createPackageContextAsUser(getPackageNameForUid(i2), 0, new UserHandle(userId));
                            Log.i("SettingsUtils", "sendAccountsChangedBroadcast : USER space");
                        }
                    } else {
                        emails = context;
                    }
                    emails.getContentResolver().notifyChange(getHostAuthContentUri(i), (ContentObserver) null, true);
                    emails.getContentResolver().notifyChange(getAccountContentUri(i), (ContentObserver) null, true);
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            Log.i("SettingsUtils", "sendAccountsChangedBroadcast()");
        }
    }

    public static String getValidStr(String str) {
        if (str == null) {
            return null;
        }
        try {
            String trim = str.trim();
            if (trim.length() > 0) {
                return trim;
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getPackageNameForUid(int i) {
        if (i == preCallingUid) {
            Log.i("SettingsUtils", "getPackageNameForUid :   " + adminPkg);
            return adminPkg;
        }
        return getEmailPackageName(i);
    }

    public static void setPackageNameForUid(int i, String str) {
        preCallingUid = i;
        adminPkg = str;
        Log.i("SettingsUtils", "setPackageNameForUid :   " + adminPkg);
    }

    public static boolean isValidEmailAddress(String str) {
        String validStr = getValidStr(str);
        if (validStr == null) {
            return false;
        }
        try {
            int length = validStr.length();
            int indexOf = validStr.indexOf(64);
            int lastIndexOf = validStr.lastIndexOf(64);
            int i = lastIndexOf + 1;
            int indexOf2 = validStr.indexOf(46, i);
            int lastIndexOf2 = validStr.lastIndexOf(46);
            return indexOf > 0 && indexOf == lastIndexOf && i < indexOf2 && indexOf2 <= lastIndexOf2 && lastIndexOf2 < length - 1;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static synchronized long getAccountId(ContextInfo contextInfo, String str, String str2, String str3, String str4, boolean z, Context context) {
        long accountIdInternal;
        synchronized (SettingsUtils.class) {
            int i = contextInfo.mContainerId;
            Uri hostAuthContentUri = getHostAuthContentUri(i);
            Uri accountContentUri = getAccountContentUri(i);
            Log.i("SettingsUtils", "getAccountId : USER space    UserHandle.myUserId() " + UserHandle.myUserId());
            accountIdInternal = getAccountIdInternal(hostAuthContentUri, accountContentUri, str, str2, str3, str4, z, context, contextInfo);
        }
        return accountIdInternal;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x019c, code lost:
    
        if (r1 == null) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0116, code lost:
    
        if (r3 != null) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static long getAccountIdInternal(android.net.Uri r15, android.net.Uri r16, java.lang.String r17, java.lang.String r18, java.lang.String r19, java.lang.String r20, boolean r21, android.content.Context r22, com.samsung.android.knox.ContextInfo r23) {
        /*
            Method dump skipped, instructions count: 444
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.email.SettingsUtils.getAccountIdInternal(android.net.Uri, android.net.Uri, java.lang.String, java.lang.String, java.lang.String, java.lang.String, boolean, android.content.Context, com.samsung.android.knox.ContextInfo):long");
    }

    public static synchronized AccountMetaData getAccountDetails(ContextInfo contextInfo, long j, Context context) {
        AccountMetaData account;
        synchronized (SettingsUtils.class) {
            int i = contextInfo.mContainerId;
            account = getAccount(getHostAuthContentUri(i), getAccountContentUri(i), getPoliciesContentUri(i), j, context, false, contextInfo);
        }
        return account;
    }

    public static synchronized AccountMetaData getAccountDetails(ContextInfo contextInfo, long j, Context context, boolean z) {
        AccountMetaData account;
        synchronized (SettingsUtils.class) {
            int i = contextInfo.mContainerId;
            Log.d("SettingsUtils", "getAccountDetails() :  with P");
            account = getAccount(getHostAuthContentUri(i), getAccountContentUri(i), getPoliciesContentUri(i), j, context, z, contextInfo);
        }
        return account;
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x0320, code lost:
    
        if (r9.moveToFirst() != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0322, code lost:
    
        r0 = r9.getString(r9.getColumnIndex("value"));
        r1 = r9.getString(r9.getColumnIndex("name"));
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0332, code lost:
    
        if (r1 == null) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0334, code lost:
    
        if (r0 == null) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x033c, code lost:
    
        if (r1.equals("AllowHTMLEmail") == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x033e, code lost:
    
        r14.mAllowHTMLEmail = "true".equalsIgnoreCase(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x034b, code lost:
    
        if (r9.moveToNext() != false) goto L128;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0393  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x03a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.android.server.enterprise.email.AccountMetaData getAccount(android.net.Uri r41, android.net.Uri r42, android.net.Uri r43, long r44, android.content.Context r46, boolean r47, com.samsung.android.knox.ContextInfo r48) {
        /*
            Method dump skipped, instructions count: 940
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.email.SettingsUtils.getAccount(android.net.Uri, android.net.Uri, android.net.Uri, long, android.content.Context, boolean, com.samsung.android.knox.ContextInfo):com.android.server.enterprise.email.AccountMetaData");
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0150, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x014d, code lost:
    
        if (0 == 0) goto L47;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean loadHostAuth(android.net.Uri r15, long r16, com.android.server.enterprise.email.AccountMetaData r18, boolean r19, android.content.Context r20) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.email.SettingsUtils.loadHostAuth(android.net.Uri, long, com.android.server.enterprise.email.AccountMetaData, boolean, android.content.Context):boolean");
    }

    public static String[] getEasDomainAndUserFromLogin(String str) {
        String[] strArr = {null, null};
        String validStr = getValidStr(str);
        if (validStr != null) {
            if (validStr.contains("\\")) {
                String[] split = validStr.split(Matcher.quoteReplacement("\\"));
                if (split != null && split.length > 0) {
                    if (2 == split.length) {
                        strArr[0] = split[0].trim();
                        strArr[1] = split[1].trim();
                    } else if (1 == split.length) {
                        strArr[1] = split[0].trim();
                    }
                }
            } else {
                strArr[1] = validStr;
            }
        }
        return strArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00ec, code lost:
    
        if (r1 != null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00ee, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0100, code lost:
    
        if (r1 == null) goto L40;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x010c A[Catch: all -> 0x0110, TryCatch #0 {, blocks: (B:4:0x0006, B:7:0x0021, B:16:0x00e9, B:18:0x00ee, B:33:0x00fd, B:40:0x0107, B:42:0x010c, B:43:0x010f), top: B:3:0x0006 }] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized java.lang.String getSMIMEAlias(com.samsung.android.knox.ContextInfo r14, long r15, android.content.Context r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.email.SettingsUtils.getSMIMEAlias(com.samsung.android.knox.ContextInfo, long, android.content.Context, boolean):java.lang.String");
    }

    public static Uri getAccountContentUri(int i) {
        return Uri.parse("content://" + getEmailPackageName(0) + "/account");
    }

    public static Uri getHostAuthContentUri(int i) {
        return Uri.parse("content://" + getEmailPackageName(0) + "/hostauth");
    }

    public static Uri getPoliciesContentUri(int i) {
        return Uri.parse("content://" + getEmailPackageName(0) + "/policies");
    }

    public static String[] getPassword(int i, long j, Context context, int i2) {
        final ConditionVariable conditionVariable = new ConditionVariable();
        IntentFilter intentFilter = new IntentFilter("com.samsung.android.knox.intent.action.RESULT_EMAILACCOUNT_PASSWORD_INTERNAL");
        final String[] strArr = new String[2];
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.android.server.enterprise.email.SettingsUtils.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String stringExtra = intent.getStringExtra("eas_account");
                if (stringExtra == null) {
                    stringExtra = intent.getStringExtra("com.samsung.android.knox.intent.extra.ACCOUNT_EAS_INTERNAL");
                }
                long longExtra = intent.getLongExtra("com.samsung.android.knox.intent.extra.USER_PASSWD_ID_INTERNAL", intent.getLongExtra("user_passwd_id", -1L));
                long longExtra2 = intent.getLongExtra("com.samsung.android.knox.intent.extra.OUTGOING_USER_PASSWD_ID_INTERNAL", intent.getLongExtra("outgoing_user_passwd_id", -1L));
                if (stringExtra != null && stringExtra.equals("eas")) {
                    strArr[0] = SettingsUtils.getSecurityPassword("E#" + longExtra);
                    strArr[1] = null;
                } else {
                    strArr[0] = SettingsUtils.getSecurityPassword("I#" + longExtra);
                    strArr[1] = SettingsUtils.getSecurityPassword("O#" + longExtra2);
                }
                conditionVariable.open();
            }
        };
        context.registerReceiverAsUser(broadcastReceiver, new UserHandle(i2), intentFilter, "com.samsung.android.knox.permission.KNOX_EXCHANGE", null);
        Intent intent = new Intent("com.samsung.android.knox.intent.action.REQUEST_EMAILACCOUNT_PASSWORD_INTERNAL");
        intent.putExtra("com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL", j);
        context.sendBroadcastAsUser(intent, new UserHandle(i2), "com.samsung.android.knox.permission.KNOX_EMAIL");
        if (conditionVariable.block(10000L)) {
            Log.i("SettingsUtils", "password obtained");
        } else {
            Log.i("SettingsUtils", "timeout while obtaining password");
        }
        context.unregisterReceiver(broadcastReceiver);
        return strArr;
    }

    public static boolean setSecurityPassword(String str, String str2) {
        if (str == null || str2 == null) {
            Log.w("SettingsUtils", "setSecurityPassword() failed : invalid parameter");
            return false;
        }
        try {
            mServerPassword.put(str, str2);
            Log.w("SettingsUtils", "setSecurityPassword() success");
            return true;
        } catch (Exception unused) {
            Log.w("SettingsUtils", "setSecurityPassword() failed");
            return false;
        }
    }

    public static String getSecurityPassword(String str) {
        try {
            String str2 = (String) mServerPassword.get(str);
            mServerPassword.remove(str);
            return str2;
        } catch (Exception unused) {
            Log.w("SettingsUtils", "getSecurityPassword() failed");
            return null;
        }
    }

    public static boolean setSecurityPasswordFocus(String str, String str2) {
        if (str == null || str2 == null) {
            Log.w("SettingsUtils", "setSecurityPasswordFocus() failed : invalid parameter");
            return false;
        }
        try {
            mServerPasswordFocus.put(str, str2);
            Log.w("SettingsUtils", "setSecurityPasswordFocus() success");
            return true;
        } catch (Exception unused) {
            Log.w("SettingsUtils", "setSecurityPasswordFocus() failed");
            return false;
        }
    }

    public static String getSecurityPasswordFocus(String str) {
        try {
            String str2 = (String) mServerPasswordFocus.get(str);
            mServerPasswordFocus.remove(str);
            return str2;
        } catch (Exception unused) {
            Log.w("SettingsUtils", "getSecurityPasswordFocus() failed");
            return null;
        }
    }

    public static long createIDforAccount() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis >= 0) {
            currentTimeMillis = (currentTimeMillis - 1) * (-1);
        }
        Log.d("SettingsUtils", ">>>>  createIDforAccount   <<<<");
        Slog.d("SettingsUtils", ">>>>  createIDforAccount   <<<<" + currentTimeMillis);
        return currentTimeMillis;
    }

    public static boolean isPersona(int i, Context context) {
        if (i != 0) {
            return ((IPersonaManagerAdapter) AdapterRegistry.getAdapter(IPersonaManagerAdapter.class)).isValidKnoxId(i);
        }
        return false;
    }

    public static int getSMIMEModeFromAction(String str) {
        if (str != null) {
            if (str.equals("com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_INTERNAL")) {
                return 1;
            }
            if (str.equals("com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION_INTERNAL")) {
                return 2;
            }
            if (str.equals("com.samsung.android.knox.intent.action.FORCE_SMIME_CERTIFICATE_FOR_SIGNING_INTERNAL")) {
                return 3;
            }
        }
        return -1;
    }

    public static boolean isPackageInstalled(String str, int i) {
        IPackageManager packageManager = AppGlobals.getPackageManager();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        if (packageManager != null) {
            try {
                if (packageManager.getApplicationInfo(str, 0L, i) == null) {
                    return false;
                }
                Binder.restoreCallingIdentity(clearCallingIdentity);
                return true;
            } catch (Exception e) {
                Log.e("SettingsUtils", "Exception in isPackageInstalled()", e);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return false;
    }

    public static boolean isAccountRemovalAllowed(String str, String str2) {
        DeviceAccountPolicy deviceAccountPolicy = (DeviceAccountPolicy) EnterpriseService.getPolicyService("device_account_policy");
        return deviceAccountPolicy == null || deviceAccountPolicy.isAccountRemovalAllowed(getAccountType(false, 0), str, false);
    }

    public static Account getAccountFromEnterpriseEmailAccount(EnterpriseEmailAccount enterpriseEmailAccount) {
        Slog.i("SettingsUtils", "getAccountFromEnterpriseEmailAccount() : " + enterpriseEmailAccount);
        if (enterpriseEmailAccount == null) {
            return null;
        }
        Account account = new Account();
        account.id = (int) enterpriseEmailAccount.mId;
        account.displayName = enterpriseEmailAccount.mDisplayName;
        account.emailAddress = enterpriseEmailAccount.mEmailAddress;
        account.syncKey = "0";
        account.syncLookback = enterpriseEmailAccount.mSyncLookback;
        account.syncInterval = enterpriseEmailAccount.mSyncInterval;
        account.hostAuthKeyRecv = -1L;
        account.hostAuthKeySend = -1L;
        account.flags = -1;
        account.isDefault = enterpriseEmailAccount.mIsDefault;
        account.compatibilityUuid = null;
        account.senderName = enterpriseEmailAccount.mSenderName;
        account.ringtoneUri = null;
        account.protocolVersion = null;
        account.securitySyncKey = null;
        account.signature = enterpriseEmailAccount.mSignature;
        account.emailNotificationVibrateAlways = enterpriseEmailAccount.mEmailNotificationVibrateAlways;
        account.emailNotificationVibrateWhenSilent = false;
        HostAuth hostAuth = new HostAuth();
        account.hostAuthRecv = hostAuth;
        hostAuth.id = -1;
        hostAuth.protocol = enterpriseEmailAccount.mInComingProtocol;
        hostAuth.address = enterpriseEmailAccount.mInComingServerAddress;
        hostAuth.port = enterpriseEmailAccount.mInComingServerPort;
        hostAuth.flags = -1;
        hostAuth.login = enterpriseEmailAccount.mInComingUserName;
        hostAuth.password = enterpriseEmailAccount.mInComingPassword;
        hostAuth.domain = null;
        hostAuth.accountKey = -1L;
        hostAuth.useSSL = enterpriseEmailAccount.mInComingUseSSL;
        hostAuth.useTLS = enterpriseEmailAccount.mInComingUseTLS;
        hostAuth.acceptAllCertificates = enterpriseEmailAccount.mInComingAcceptAllCertificates;
        HostAuth hostAuth2 = new HostAuth();
        account.hostAuthSend = hostAuth2;
        hostAuth2.id = -1;
        hostAuth2.protocol = enterpriseEmailAccount.mOutgoingProtocol;
        hostAuth2.address = enterpriseEmailAccount.mOutgoingServerAddress;
        hostAuth2.port = enterpriseEmailAccount.mOutgoingServerPort;
        hostAuth2.flags = -1;
        hostAuth2.login = enterpriseEmailAccount.mOutgoingUserName;
        hostAuth2.password = enterpriseEmailAccount.mOutgoingPassword;
        hostAuth2.domain = null;
        hostAuth2.accountKey = -1L;
        hostAuth2.useSSL = enterpriseEmailAccount.mOutgoingUseSSL;
        hostAuth2.useTLS = enterpriseEmailAccount.mOutgoingUseTLS;
        hostAuth2.acceptAllCertificates = enterpriseEmailAccount.mOutgoingAcceptAllCertificates;
        return account;
    }

    public static Account getAccountFromEnterpriseExchangeAccount(EnterpriseExchangeAccount enterpriseExchangeAccount) {
        Slog.i("SettingsUtils", "getAccountFromEnterpriseExchangeAccount() : " + enterpriseExchangeAccount);
        if (enterpriseExchangeAccount == null) {
            return null;
        }
        Account account = new Account();
        account.id = (int) enterpriseExchangeAccount.mId;
        account.displayName = enterpriseExchangeAccount.mDisplayName;
        account.emailAddress = enterpriseExchangeAccount.mEmailAddress;
        account.syncKey = "0";
        account.syncLookback = enterpriseExchangeAccount.mSyncLookback;
        account.syncInterval = enterpriseExchangeAccount.mSyncInterval;
        account.hostAuthKeyRecv = -1L;
        account.hostAuthKeySend = -1L;
        account.flags = -1;
        account.isDefault = enterpriseExchangeAccount.mIsDefault;
        account.compatibilityUuid = null;
        account.senderName = enterpriseExchangeAccount.mSenderName;
        account.ringtoneUri = null;
        account.protocolVersion = enterpriseExchangeAccount.mProtocolVersion;
        account.securitySyncKey = null;
        account.signature = enterpriseExchangeAccount.mSignature;
        account.peakDays = enterpriseExchangeAccount.mPeakDays;
        account.peakStartMinute = enterpriseExchangeAccount.mPeakStartMinute;
        account.peakEndMinute = enterpriseExchangeAccount.mPeakEndMinute;
        account.peakSyncSchedule = enterpriseExchangeAccount.mPeakSyncSchedule;
        account.offPeakSyncSchedule = enterpriseExchangeAccount.mOffPeakSyncSchedule;
        account.roamingSyncSchedule = enterpriseExchangeAccount.mRoamingSyncSchedule;
        account.syncCalendarAge = enterpriseExchangeAccount.mSyncCalendarAge;
        account.emailBodyTruncationSize = enterpriseExchangeAccount.mEmailBodyTruncationSize;
        account.emailRoamingBodyTruncationSize = enterpriseExchangeAccount.mEmailRoamingBodyTruncationSize;
        account.syncContacts = enterpriseExchangeAccount.mSyncContacts;
        account.syncCalendar = enterpriseExchangeAccount.mSyncCalendar;
        account.syncTasks = enterpriseExchangeAccount.mSyncTasks;
        account.syncNotes = enterpriseExchangeAccount.mSyncNotes;
        account.emailNotificationVibrateAlways = enterpriseExchangeAccount.mEmailNotificationVibrateAlways;
        account.emailNotificationVibrateWhenSilent = false;
        HostAuth hostAuth = new HostAuth();
        account.hostAuthRecv = hostAuth;
        hostAuth.id = -1;
        hostAuth.protocol = "eas";
        hostAuth.address = enterpriseExchangeAccount.mServerAddress;
        hostAuth.port = 0;
        hostAuth.flags = -1;
        hostAuth.login = enterpriseExchangeAccount.mEasUser;
        hostAuth.password = enterpriseExchangeAccount.mPassword;
        hostAuth.domain = null;
        hostAuth.accountKey = -1L;
        hostAuth.useSSL = enterpriseExchangeAccount.mUseSSL;
        hostAuth.useTLS = enterpriseExchangeAccount.mUseTLS;
        hostAuth.acceptAllCertificates = enterpriseExchangeAccount.mAcceptAllCertificates;
        HostAuth hostAuth2 = new HostAuth();
        account.hostAuthSend = hostAuth2;
        hostAuth2.id = -1;
        hostAuth2.protocol = "eas";
        hostAuth2.address = enterpriseExchangeAccount.mServerAddress;
        hostAuth2.port = 0;
        hostAuth2.flags = -1;
        hostAuth2.login = enterpriseExchangeAccount.mEasUser;
        hostAuth2.password = enterpriseExchangeAccount.mPassword;
        hostAuth2.domain = null;
        hostAuth2.accountKey = -1L;
        hostAuth2.useSSL = enterpriseExchangeAccount.mUseSSL;
        hostAuth2.useTLS = enterpriseExchangeAccount.mUseTLS;
        hostAuth2.acceptAllCertificates = enterpriseExchangeAccount.mAcceptAllCertificates;
        return account;
    }

    public static LDAPAccount getLDAPAccountFromEnterpriseLDAPAccount(EnterpriseLDAPAccount enterpriseLDAPAccount) {
        if (enterpriseLDAPAccount == null) {
            return null;
        }
        LDAPAccount lDAPAccount = new LDAPAccount();
        lDAPAccount.id = enterpriseLDAPAccount.mId;
        lDAPAccount.userName = enterpriseLDAPAccount.mUserName;
        lDAPAccount.password = enterpriseLDAPAccount.mPassword;
        lDAPAccount.port = enterpriseLDAPAccount.mPort;
        lDAPAccount.host = enterpriseLDAPAccount.mHost;
        lDAPAccount.isSSL = enterpriseLDAPAccount.mUseSSL;
        lDAPAccount.isAnonymous = enterpriseLDAPAccount.mIsAnonymous;
        lDAPAccount.baseDN = enterpriseLDAPAccount.mBaseDN;
        lDAPAccount.trustAll = enterpriseLDAPAccount.mTrustAll;
        return lDAPAccount;
    }
}
