package com.android.server.enterprise.content;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.os.Binder;
import android.util.Log;
import android.util.Slog;
import com.android.server.enterprise.EnterpriseService;
import com.android.server.enterprise.auditlog.AuditLogService;
import com.android.server.enterprise.browser.BrowserPolicy;
import com.android.server.enterprise.certificate.CertificatePolicy;
import com.android.server.enterprise.restriction.RestrictionPolicy;
import com.android.server.enterprise.security.PasswordPolicy;
import com.android.server.enterprise.security.SecurityPolicy;
import com.samsung.android.knox.ContextInfo;
import java.lang.reflect.Array;

/* loaded from: classes2.dex */
public class SecContentProvider extends ContentProvider {
    public static final UriMatcher URI_MATCHER;
    public Context mContext;

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        URI_MATCHER = uriMatcher;
        uriMatcher.addURI("com.sec.knox.provider", "AdvancedRestrictionPolicy", 1);
        uriMatcher.addURI("com.sec.knox.provider", "AuditLog", 2);
        uriMatcher.addURI("com.sec.knox.provider", "BluetoothPolicy", 3);
        uriMatcher.addURI("com.sec.knox.provider", "BluetoothUtils", 4);
        uriMatcher.addURI("com.sec.knox.provider", "BrowserPolicy", 5);
        uriMatcher.addURI("com.sec.knox.provider", "CertificatePolicy", 6);
        uriMatcher.addURI("com.sec.knox.provider", "ContainerApplicationPolicy", 7);
        uriMatcher.addURI("com.sec.knox.provider", "DeviceSettingsPolicy", 8);
        uriMatcher.addURI("com.sec.knox.provider", "EnterpriseKnoxManagerPolicy", 9);
        uriMatcher.addURI("com.sec.knox.provider", "FirewallPolicy", 10);
        uriMatcher.addURI("com.sec.knox.provider", "KnoxConfigurationType", 11);
        uriMatcher.addURI("com.sec.knox.provider", "LocationPolicy", 12);
        uriMatcher.addURI("com.sec.knox.provider", "PasswordPolicy1", 13);
        uriMatcher.addURI("com.sec.knox.provider", "PasswordPolicy2", 14);
        uriMatcher.addURI("com.sec.knox.provider", "RestrictionPolicy1", 15);
        uriMatcher.addURI("com.sec.knox.provider", "RestrictionPolicy2", 16);
        uriMatcher.addURI("com.sec.knox.provider", "RestrictionPolicy3", 17);
        uriMatcher.addURI("com.sec.knox.provider", "RestrictionPolicy4", 18);
        uriMatcher.addURI("com.sec.knox.provider", "RoamingPolicy", 19);
        uriMatcher.addURI("com.sec.knox.provider", "SecurityPolicy", 20);
        uriMatcher.addURI("com.sec.knox.provider", "DateTimePolicy", 24);
        uriMatcher.addURI("com.sec.knox.provider", "DlpPolicy", 25);
        uriMatcher.addURI("com.sec.knox.provider", "DomainFilterPolicy", 26);
        uriMatcher.addURI("com.sec.knox.provider", "DexPolicy", 27);
        uriMatcher.addURI("com.sec.knox.provider", "RestrictionPolicy", 30);
        uriMatcher.addURI("com.sec.knox.provider", "ProfilePolicy", 31);
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.mContext = getContext();
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:1009:0x1b66, code lost:
    
        if (r25.equals("getVirtualMacAddress") == false) goto L1043;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1077:0x1cd0, code lost:
    
        if (r25.equals("getURLFilterEnabled") == false) goto L1097;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1192:0x1e19, code lost:
    
        if (r25.equals("isUserRemoveCertificatesAllowed") == false) goto L1142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1334:0x21a8, code lost:
    
        if (r25.equals("isPairingAllowedbySecurityPolicy") == false) goto L1301;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1405:0x23e8, code lost:
    
        if (r25.equals("isBluetoothLogEnabled") == false) goto L1415;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x029b, code lost:
    
        if (r25.equals("isWallpaperChangeAllowed") == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:349:0x064a, code lost:
    
        if (r25.equals("isPowerOffAllowed") == false) goto L212;
     */
    /* JADX WARN: Code restructure failed: missing block: B:495:0x0a78, code lost:
    
        if (r25.equals("isMicrophoneEnabledAsUser") == false) goto L372;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x012a, code lost:
    
        if (r25.equals("isRoamingDataEnabled") == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:646:0x0f50, code lost:
    
        if (r25.equals("isClipboardAllowedAsUser") == false) goto L527;
     */
    /* JADX WARN: Code restructure failed: missing block: B:744:0x131f, code lost:
    
        if (r25.equals("getMaximumFailedPasswordsForWipe") == false) goto L688;
     */
    /* JADX WARN: Code restructure failed: missing block: B:852:0x169f, code lost:
    
        if (r25.equals("getMaximumNumericSequenceLength") == false) goto L793;
     */
    /* JADX WARN: Code restructure failed: missing block: B:974:0x1a20, code lost:
    
        if (r25.equals("isLocalContactStorageAllowed") == false) goto L953;
     */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.database.Cursor query(android.net.Uri r23, java.lang.String[] r24, java.lang.String r25, java.lang.String[] r26, java.lang.String r27) {
        /*
            Method dump skipped, instructions count: 10738
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.content.SecContentProvider.query(android.net.Uri, java.lang.String[], java.lang.String, java.lang.String[], java.lang.String):android.database.Cursor");
    }

    public final boolean restrictionPolicyisPowerSavingModeAllowed(int i, RestrictionPolicy restrictionPolicy) {
        boolean isPowerSavingModeAllowed = restrictionPolicy.isPowerSavingModeAllowed(new ContextInfo(i));
        if (!isPowerSavingModeAllowed) {
            Log.d("SecContentProvider", "POWER_SAVING_MODE_ALLOWED cursor return " + isPowerSavingModeAllowed);
        }
        return isPowerSavingModeAllowed;
    }

    public final boolean restrictionPolicyIsPowerOffAllowed(String[] strArr, int i, RestrictionPolicy restrictionPolicy) {
        boolean z = false;
        if (strArr != null && getArrayLength(strArr) > 0) {
            z = Boolean.parseBoolean(strArr[0]);
        }
        return restrictionPolicy.isPowerOffAllowed(new ContextInfo(i), z);
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        String asString;
        String asString2;
        SecurityPolicy securityPolicy;
        String asString3;
        int callingUid = Binder.getCallingUid();
        StringBuilder sb = new StringBuilder();
        sb.append("insert(), uri = ");
        UriMatcher uriMatcher = URI_MATCHER;
        sb.append(uriMatcher.match(uri));
        Log.d("SecContentProvider", sb.toString());
        Slog.d("SecContentProvider", "called from " + getCallerName(callingUid));
        int match = uriMatcher.match(uri);
        if (match == 2) {
            AuditLogService auditLogService = (AuditLogService) EnterpriseService.getPolicyService("auditlog");
            if (auditLogService == null) {
                return null;
            }
            if (contentValues.containsKey("redactedMessage") && contentValues.containsKey("userid")) {
                auditLogService.RedactedAuditLoggerAsUser(new ContextInfo(callingUid), contentValues.getAsInteger("severity").intValue(), contentValues.getAsInteger("group").intValue(), contentValues.getAsBoolean("outcome").booleanValue(), contentValues.getAsInteger("uid").intValue(), contentValues.getAsString("component"), contentValues.getAsString("message"), contentValues.getAsString("redactedMessage"), contentValues.getAsInteger("userid").intValue());
                return null;
            }
            if (contentValues.containsKey("redactedMessage")) {
                auditLogService.RedactedAuditLogger(new ContextInfo(callingUid), contentValues.getAsInteger("severity").intValue(), contentValues.getAsInteger("group").intValue(), contentValues.getAsBoolean("outcome").booleanValue(), contentValues.getAsInteger("uid").intValue(), contentValues.getAsString("component"), contentValues.getAsString("message"), contentValues.getAsString("redactedMessage"));
                return null;
            }
            if (contentValues.containsKey("userid")) {
                auditLogService.AuditLoggerAsUser(new ContextInfo(callingUid), contentValues.getAsInteger("severity").intValue(), contentValues.getAsInteger("group").intValue(), contentValues.getAsBoolean("outcome").booleanValue(), contentValues.getAsInteger("uid").intValue(), contentValues.getAsString("component"), contentValues.getAsString("message"), contentValues.getAsInteger("userid").intValue());
                return null;
            }
            auditLogService.AuditLogger(new ContextInfo(callingUid), contentValues.getAsInteger("severity").intValue(), contentValues.getAsInteger("group").intValue(), contentValues.getAsBoolean("outcome").booleanValue(), contentValues.getAsInteger("uid").intValue(), contentValues.getAsString("component"), contentValues.getAsString("message"));
            return null;
        }
        if (match == 6) {
            CertificatePolicy certificatePolicy = (CertificatePolicy) EnterpriseService.getPolicyService("certificate_policy");
            if (certificatePolicy == null) {
                return null;
            }
            String asString4 = contentValues.getAsString("API");
            Integer asInteger = contentValues.getAsInteger("fail");
            String asString5 = contentValues.getAsString("module");
            if (asString4 == null || !asString4.equals("notifyCertificateFailure") || asInteger == null || asString5 == null) {
                return null;
            }
            certificatePolicy.notifyCertificateFailure(asString5, String.valueOf(asInteger), true);
            return null;
        }
        if (match == 10) {
            BrowserPolicy browserPolicy = (BrowserPolicy) EnterpriseService.getPolicyService("browser_policy");
            if (browserPolicy == null || (asString = contentValues.getAsString("API")) == null || !asString.equals("saveURLBlockedReport")) {
                return null;
            }
            browserPolicy.saveURLBlockedReportEnforcingFirewallPermission(new ContextInfo(callingUid), contentValues.getAsString("url"));
            return null;
        }
        if (match == 14) {
            PasswordPolicy passwordPolicy = (PasswordPolicy) EnterpriseService.getPolicyService("password_policy");
            if (passwordPolicy == null || (asString2 = contentValues.getAsString("API")) == null || !asString2.equals("setPwdChangeRequested")) {
                return null;
            }
            passwordPolicy.setPwdChangeRequested(new ContextInfo(callingUid), contentValues.getAsInteger("flag").intValue());
            return null;
        }
        if (match != 20 || (securityPolicy = (SecurityPolicy) EnterpriseService.getPolicyService("security_policy")) == null || (asString3 = contentValues.getAsString("API")) == null || !asString3.equals("setDodBannerVisibleStatus")) {
            return null;
        }
        securityPolicy.setDodBannerVisibleStatus(new ContextInfo(callingUid), contentValues.getAsBoolean("isVisible").booleanValue());
        return null;
    }

    public int getArrayLength(String[] strArr) {
        if (strArr == null) {
            return 0;
        }
        try {
            return Array.getLength(strArr);
        } catch (Exception e) {
            Slog.e("SecContentProvider", "getArrayLength() return 0 but some exception occurs with invalid request.", e);
            return 0;
        }
    }

    public final String getCallerName(int i) {
        String nameForUid = this.mContext.getPackageManager().getNameForUid(i);
        return nameForUid == null ? "fail to get caller name" : nameForUid;
    }
}
