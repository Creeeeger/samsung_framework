package com.android.server.enterprise.content;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Binder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import com.android.server.enterprise.EnterpriseService;
import com.android.server.enterprise.email.EmailAccountPolicy;
import com.android.server.enterprise.email.ExchangeAccountPolicy;
import com.android.server.enterprise.general.MiscPolicy;
import com.android.server.enterprise.license.EnterpriseLicenseService;
import com.android.server.enterprise.multiuser.MultiUserManagerService;
import com.android.server.enterprise.restriction.PhoneRestrictionPolicy;
import com.android.server.enterprise.security.DeviceAccountPolicy;
import com.android.server.enterprise.vpn.VpnInfoPolicy;
import com.samsung.android.knox.ContextInfo;
import com.samsung.android.knox.custom.IKnoxCustomManager;
import com.samsung.android.knox.custom.KnoxCustomManagerService;
import java.lang.reflect.Array;

/* loaded from: classes2.dex */
public class SecContentProvider2 extends ContentProvider {
    public static final UriMatcher URI_MATCHER;
    public Context mContext;
    public final boolean DEBUG = false;
    public IKnoxCustomManager mKnoxCustomManagerService = null;

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
        uriMatcher.addURI("com.sec.knox.provider2", "ApplicationPolicy", 1);
        uriMatcher.addURI("com.sec.knox.provider2", "ClientCertificateManager", 2);
        uriMatcher.addURI("com.sec.knox.provider2", "DeviceAccountPolicy", 3);
        uriMatcher.addURI("com.sec.knox.provider2", "EmailPolicy", 6);
        uriMatcher.addURI("com.sec.knox.provider2", "EmailAccountPolicy", 7);
        uriMatcher.addURI("com.sec.knox.provider2", "EnterpriseKnoxManagerPolicy", 8);
        uriMatcher.addURI("com.sec.knox.provider2", "EnterpriseContainerPolicy", 9);
        uriMatcher.addURI("com.sec.knox.provider2", "EnterpriseContainerService", 10);
        uriMatcher.addURI("com.sec.knox.provider2", "EnterpriseDeviceManager", 11);
        uriMatcher.addURI("com.sec.knox.provider2", "ExchangeAccountPolicy", 12);
        uriMatcher.addURI("com.sec.knox.provider2", "KioskMode", 13);
        uriMatcher.addURI("com.sec.knox.provider2", "KnoxCustomManagerService1", 14);
        uriMatcher.addURI("com.sec.knox.provider2", "KnoxCustomManagerService2", 15);
        uriMatcher.addURI("com.sec.knox.provider2", "MiscPolicy", 16);
        uriMatcher.addURI("com.sec.knox.provider2", "MultiUserManager", 17);
        uriMatcher.addURI("com.sec.knox.provider2", "PhoneRestrictionPolicy", 18);
        uriMatcher.addURI("com.sec.knox.provider2", "vpnPolicy", 19);
        uriMatcher.addURI("com.sec.knox.provider2", "WifiPolicy", 20);
        uriMatcher.addURI("com.sec.knox.provider2", "EnterpriseLicenseService", 21);
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.mContext = getContext();
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:1101:0x1065, code lost:
    
        if (r28.equals("getMaxEmailAgeFilter") == false) goto L917;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1196:0x12c8, code lost:
    
        if (r28.equals("isAdminRemovable") == false) goto L1066;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1277:0x1485, code lost:
    
        if (r28.equals("isEmailNotificationsEnabled") == false) goto L1176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:964:0x0dae, code lost:
    
        if (r28.equals("isPeopleEdgeAllowed") == false) goto L806;
     */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.database.Cursor query(android.net.Uri r26, java.lang.String[] r27, java.lang.String r28, java.lang.String[] r29, java.lang.String r30) {
        /*
            Method dump skipped, instructions count: 8146
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.content.SecContentProvider2.query(android.net.Uri, java.lang.String[], java.lang.String, java.lang.String[], java.lang.String):android.database.Cursor");
    }

    public final Cursor queryMultiUser(String str, String[] strArr, int i) {
        MultiUserManagerService multiUserManagerService = (MultiUserManagerService) EnterpriseService.getPolicyService("multi_user_manager_service");
        if (multiUserManagerService != null) {
            str.hashCode();
            boolean z = false;
            char c = 65535;
            switch (str.hashCode()) {
                case -171268876:
                    if (str.equals("isUserCreationAllowed")) {
                        c = 0;
                        break;
                    }
                    break;
                case -131970159:
                    if (str.equals("isUserRemovalAllowed")) {
                        c = 1;
                        break;
                    }
                    break;
                case 10032304:
                    if (str.equals("multipleUsersAllowed")) {
                        c = 2;
                        break;
                    }
                    break;
                case 658785718:
                    if (str.equals("multipleUsersSupported")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    if (strArr != null && Array.getLength(strArr) > 0) {
                        z = Boolean.parseBoolean(strArr[0]);
                    }
                    try {
                        return populateCursor(str, multiUserManagerService.isUserCreationAllowed(new ContextInfo(i), z));
                    } catch (Exception unused) {
                        break;
                    }
                case 1:
                    if (strArr != null && Array.getLength(strArr) > 0) {
                        z = Boolean.parseBoolean(strArr[0]);
                    }
                    try {
                        return populateCursor(str, multiUserManagerService.isUserRemovalAllowed(new ContextInfo(i), z));
                    } catch (RemoteException unused2) {
                        return null;
                    }
                case 2:
                    if (strArr != null && Array.getLength(strArr) > 0) {
                        z = Boolean.parseBoolean(strArr[0]);
                    }
                    try {
                        int multipleUsersAllowed = multiUserManagerService.multipleUsersAllowed(new ContextInfo(i), z);
                        MatrixCursor matrixCursor = new MatrixCursor(new String[]{str});
                        matrixCursor.addRow(new Integer[]{Integer.valueOf(multipleUsersAllowed)});
                        return matrixCursor;
                    } catch (RemoteException unused3) {
                        return null;
                    }
                case 3:
                    try {
                        return populateCursor(str, multiUserManagerService.multipleUsersSupported(new ContextInfo(i)));
                    } catch (RemoteException unused4) {
                        return null;
                    }
                default:
                    return null;
            }
        }
        return null;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x0045. Please report as an issue. */
    public final Cursor queryEmailAccount(String str, String[] strArr, int i) {
        MatrixCursor matrixCursor;
        EmailAccountPolicy emailAccountPolicy = (EmailAccountPolicy) EnterpriseService.getPolicyService("email_account_policy");
        if (emailAccountPolicy != null && str != null) {
            char c = 65535;
            switch (str.hashCode()) {
                case -1591092788:
                    if (str.equals("setSecurityOutGoingServerPassword")) {
                        c = 0;
                        break;
                    }
                    break;
                case 1700412742:
                    if (str.equals("setSecurityInComingServerPassword")) {
                        c = 1;
                        break;
                    }
                    break;
                case 1884897760:
                    if (str.equals("getSecurityOutgoingServerPassword")) {
                        c = 2;
                        break;
                    }
                    break;
                case 1937258778:
                    if (str.equals("getSecurityIncomingServerPassword")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    if (strArr != null && Array.getLength(strArr) >= 1) {
                        long securityOutGoingServerPassword = emailAccountPolicy.setSecurityOutGoingServerPassword(new ContextInfo(i), strArr[0]);
                        matrixCursor = new MatrixCursor(new String[]{str});
                        matrixCursor.addRow(new String[]{String.valueOf(securityOutGoingServerPassword)});
                        return matrixCursor;
                    }
                    break;
                case 1:
                    if (strArr == null || Array.getLength(strArr) < 1) {
                        return null;
                    }
                    long securityInComingServerPassword = emailAccountPolicy.setSecurityInComingServerPassword(new ContextInfo(i), strArr[0]);
                    matrixCursor = new MatrixCursor(new String[]{str});
                    matrixCursor.addRow(new String[]{String.valueOf(securityInComingServerPassword)});
                    return matrixCursor;
                case 2:
                    if (strArr == null || Array.getLength(strArr) <= 0) {
                        return null;
                    }
                    String securityOutGoingServerPassword2 = emailAccountPolicy.getSecurityOutGoingServerPassword(new ContextInfo(i), Long.parseLong(strArr[0]));
                    MatrixCursor matrixCursor2 = new MatrixCursor(new String[]{str});
                    matrixCursor2.addRow(new String[]{securityOutGoingServerPassword2});
                    return matrixCursor2;
                case 3:
                    if (strArr == null || Array.getLength(strArr) <= 0) {
                        return null;
                    }
                    String securityInComingServerPassword2 = emailAccountPolicy.getSecurityInComingServerPassword(new ContextInfo(i), Long.parseLong(strArr[0]));
                    MatrixCursor matrixCursor3 = new MatrixCursor(new String[]{str});
                    matrixCursor3.addRow(new String[]{securityInComingServerPassword2});
                    return matrixCursor3;
                default:
                    return null;
            }
        }
        return null;
    }

    public final Cursor queryMisc(String str, int i) {
        MiscPolicy miscPolicy = (MiscPolicy) EnterpriseService.getPolicyService("misc_policy");
        if (miscPolicy == null || str == null) {
            return null;
        }
        if (!str.equals("getCurrentLockScreenString")) {
            if (str.equals("isNFCStateChangeAllowed")) {
                return populateCursor(str, miscPolicy.isNFCStateChangeAllowed());
            }
            return null;
        }
        String currentLockScreenString = miscPolicy.getCurrentLockScreenString(new ContextInfo(i));
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{str});
        matrixCursor.addRow(new String[]{currentLockScreenString});
        return matrixCursor;
    }

    public final Cursor queryDeviceAccount(String str, String[] strArr) {
        DeviceAccountPolicy deviceAccountPolicy = (DeviceAccountPolicy) EnterpriseService.getPolicyService("device_account_policy");
        if (deviceAccountPolicy != null && str != null) {
            char c = 65535;
            switch (str.hashCode()) {
                case -118586209:
                    if (str.equals("isAccountRemovalAllowed")) {
                        c = 0;
                        break;
                    }
                    break;
                case 358760604:
                    if (str.equals("isAccountRemovalAllowedAsUser")) {
                        c = 1;
                        break;
                    }
                    break;
                case 1337448169:
                    if (str.equals("isAccountAdditionAllowed")) {
                        c = 2;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    if (strArr != null && Array.getLength(strArr) >= 3) {
                        return populateCursor(str, deviceAccountPolicy.isAccountRemovalAllowed(strArr[0], strArr[1], Boolean.parseBoolean(strArr[2])));
                    }
                    break;
                case 1:
                    if (strArr == null || Array.getLength(strArr) < 4) {
                        return null;
                    }
                    return populateCursor(str, deviceAccountPolicy.isAccountRemovalAllowedAsUser(strArr[0], strArr[1], Boolean.parseBoolean(strArr[2]), Integer.parseInt(strArr[3])));
                case 2:
                    if (strArr == null || Array.getLength(strArr) < 3) {
                        return null;
                    }
                    return populateCursor(str, deviceAccountPolicy.isAccountAdditionAllowed(strArr[0], strArr[1], Boolean.parseBoolean(strArr[2])));
                default:
                    return null;
            }
        }
        return null;
    }

    public final Cursor queryVPN(String str, String[] strArr, int i) {
        VpnInfoPolicy vpnInfoPolicy = (VpnInfoPolicy) EnterpriseService.getPolicyService("vpn_policy");
        if (vpnInfoPolicy != null) {
            str.hashCode();
            boolean z = false;
            char c = 65535;
            switch (str.hashCode()) {
                case 545493634:
                    if (str.equals("checkRacoonSecurity")) {
                        c = 0;
                        break;
                    }
                    break;
                case 551871602:
                    if (str.equals("isUserAddProfilesAllowed")) {
                        c = 1;
                        break;
                    }
                    break;
                case 1384539565:
                    if (str.equals("isUserSetAlwaysOnAllowed")) {
                        c = 2;
                        break;
                    }
                    break;
                case 1969829753:
                    if (str.equals("isUserChangeProfilesAllowed")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    if (strArr != null && Array.getLength(strArr) > 0) {
                        return populateCursor(str, vpnInfoPolicy.checkRacoonSecurity(new ContextInfo(i), strArr));
                    }
                    break;
                case 1:
                    if (strArr != null && Array.getLength(strArr) > 0) {
                        z = Boolean.parseBoolean(strArr[0]);
                    }
                    return populateCursor(str, vpnInfoPolicy.isUserAddProfilesAllowed(new ContextInfo(i), z));
                case 2:
                    if (strArr != null && Array.getLength(strArr) > 0) {
                        z = Boolean.parseBoolean(strArr[0]);
                    }
                    return populateCursor(str, vpnInfoPolicy.isUserSetAlwaysOnAllowed(new ContextInfo(i), z));
                case 3:
                    if (strArr != null && Array.getLength(strArr) > 0) {
                        z = Boolean.parseBoolean(strArr[0]);
                    }
                    return populateCursor(str, vpnInfoPolicy.isUserChangeProfilesAllowed(new ContextInfo(i), z));
                default:
                    return null;
            }
        }
        return null;
    }

    public final Cursor queryEnterpriseLicense(String str, String[] strArr) {
        EnterpriseLicenseService enterpriseLicenseService = (EnterpriseLicenseService) EnterpriseService.getPolicyService("enterprise_license_policy");
        if (enterpriseLicenseService != null) {
            str.hashCode();
            if (str.equals("isServiceAvailable")) {
                if (strArr != null && Array.getLength(strArr) > 1) {
                    return populateCursor(str, enterpriseLicenseService.isServiceAvailable(strArr[0], strArr[1]));
                }
            } else {
                Log.d("SecContentProvider2", "ENTERPRISELICENSEPOLICY : return null");
                return null;
            }
        }
        return null;
    }

    public final Cursor queryPhoneRestriction(String str, String[] strArr, int i) {
        PhoneRestrictionPolicy phoneRestrictionPolicy = (PhoneRestrictionPolicy) EnterpriseService.getPolicyService("phone_restriction_policy");
        if (phoneRestrictionPolicy == null) {
            return null;
        }
        str.hashCode();
        boolean z = true;
        boolean z2 = false;
        char c = 65535;
        switch (str.hashCode()) {
            case -2082517732:
                if (str.equals("isBlockMmsWithStorageEnabled")) {
                    c = 0;
                    break;
                }
                break;
            case -1974906318:
                if (str.equals("isWapPushAllowed")) {
                    c = 1;
                    break;
                }
                break;
            case -1366047329:
                if (str.equals("isIncomingSmsAllowed")) {
                    c = 2;
                    break;
                }
                break;
            case -1266976085:
                if (str.equals("isOutgoingMmsAllowed")) {
                    c = 3;
                    break;
                }
                break;
            case -1173799131:
                if (str.equals("getEmergencyCallOnly")) {
                    c = 4;
                    break;
                }
                break;
            case -1059267626:
                if (str.equals("isCallerIDDisplayAllowed")) {
                    c = 5;
                    break;
                }
                break;
            case -917366455:
                if (str.equals("isRCSEnabled")) {
                    c = 6;
                    break;
                }
                break;
            case -814412254:
                if (str.equals("isBlockSmsWithStorageEnabled")) {
                    c = 7;
                    break;
                }
                break;
            case -186966299:
                if (str.equals("isIncomingMmsAllowed")) {
                    c = '\b';
                    break;
                }
                break;
            case 288681901:
                if (str.equals("isCopyContactToSimAllowed")) {
                    c = '\t';
                    break;
                }
                break;
            case 336640355:
                if (str.equals("canIncomingSms")) {
                    c = '\n';
                    break;
                }
                break;
            case 350824410:
                if (str.equals("canOutgoingCall")) {
                    c = 11;
                    break;
                }
                break;
            case 390772318:
                if (str.equals("getDisclaimerText")) {
                    c = '\f';
                    break;
                }
                break;
            case 787976933:
                if (str.equals("isMmsAllowedFromSimSlot1")) {
                    c = '\r';
                    break;
                }
                break;
            case 787976934:
                if (str.equals("isMmsAllowedFromSimSlot2")) {
                    c = 14;
                    break;
                }
                break;
            case 821809754:
                if (str.equals("isDataAllowedFromSimSlot1")) {
                    c = 15;
                    break;
                }
                break;
            case 821809755:
                if (str.equals("isDataAllowedFromSimSlot2")) {
                    c = 16;
                    break;
                }
                break;
            case 1119711325:
                if (str.equals("canOutgoingSms")) {
                    c = 17;
                    break;
                }
                break;
            case 1635446913:
                if (str.equals("isSimLockedByAdmin")) {
                    c = 18;
                    break;
                }
                break;
            case 1797782873:
                if (str.equals("isLimitNumberOfSmsEnabled")) {
                    c = 19;
                    break;
                }
                break;
            case 1845428116:
                if (str.equals("canIncomingCall")) {
                    c = 20;
                    break;
                }
                break;
            case 1848910181:
                if (str.equals("isOutgoingSmsAllowed")) {
                    c = 21;
                    break;
                }
                break;
            case 2078857349:
                if (str.equals("checkEnableUseOfPacketData")) {
                    c = 22;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return populateCursor(str, phoneRestrictionPolicy.isBlockMmsWithStorageEnabled(new ContextInfo(i)));
            case 1:
                return populateCursor(str, phoneRestrictionPolicy.isWapPushAllowed(new ContextInfo(i)));
            case 2:
                return populateCursor(str, phoneRestrictionPolicy.isIncomingSmsAllowed(new ContextInfo(i)));
            case 3:
                return populateCursor(str, phoneRestrictionPolicy.isOutgoingMmsAllowed(new ContextInfo(i)));
            case 4:
                return populateCursor(str, phoneRestrictionPolicy.getEmergencyCallOnly(new ContextInfo(i), true));
            case 5:
                return populateCursor(str, phoneRestrictionPolicy.isCallerIDDisplayAllowed(new ContextInfo(i)));
            case 6:
                int length = Array.getLength(strArr);
                if (strArr == null || length < 3) {
                    return null;
                }
                int parseInt = Integer.parseInt(strArr[0]);
                boolean parseBoolean = Boolean.parseBoolean(strArr[1]);
                int parseInt2 = Integer.parseInt(strArr[2]);
                boolean isRCSEnabled = phoneRestrictionPolicy.isRCSEnabled(new ContextInfo(i), parseInt, parseBoolean);
                if (isRCSEnabled) {
                    isRCSEnabled = phoneRestrictionPolicy.isRCSEnabledBySimSlot(new ContextInfo(i), parseInt, parseBoolean, parseInt2);
                }
                return populateCursor(str, isRCSEnabled);
            case 7:
                return populateCursor(str, phoneRestrictionPolicy.isBlockSmsWithStorageEnabled(new ContextInfo(i)));
            case '\b':
                return populateCursor(str, phoneRestrictionPolicy.isIncomingMmsAllowed(new ContextInfo(i)));
            case '\t':
                boolean isCopyContactToSimAllowed = phoneRestrictionPolicy.isCopyContactToSimAllowed(new ContextInfo(i));
                Log.d("SecContentProvider2", "isCopyContactToSimAllowed = " + isCopyContactToSimAllowed);
                return populateCursor(str, isCopyContactToSimAllowed);
            case '\n':
                if (strArr == null || Array.getLength(strArr) <= 0) {
                    return null;
                }
                return populateCursor(str, phoneRestrictionPolicy.canIncomingSms(strArr[0]));
            case 11:
                if (strArr == null || Array.getLength(strArr) <= 0) {
                    return null;
                }
                return populateCursor(str, phoneRestrictionPolicy.canOutgoingCall(strArr[0]));
            case '\f':
                String disclaimerText = phoneRestrictionPolicy.getDisclaimerText(new ContextInfo(i));
                MatrixCursor matrixCursor = new MatrixCursor(new String[]{"getDisclaimerText"});
                matrixCursor.addRow(new String[]{disclaimerText});
                return matrixCursor;
            case '\r':
                try {
                    z = phoneRestrictionPolicy.isMmsAllowedFromSimSlot(0);
                    Log.d("SecContentProvider2", "isMmsAllowedFromSimSlot(0) result " + z);
                } catch (SecurityException e) {
                    Log.w("SecContentProvider2", "SecurityException: " + e);
                }
                return populateCursor(str, z);
            case 14:
                try {
                    z = phoneRestrictionPolicy.isMmsAllowedFromSimSlot(1);
                    Log.d("SecContentProvider2", "isMmsAllowedFromSimSlot(1) result " + z);
                } catch (SecurityException e2) {
                    Log.w("SecContentProvider2", "SecurityException: " + e2);
                }
                return populateCursor(str, z);
            case 15:
                try {
                    z = phoneRestrictionPolicy.isDataAllowedFromSimSlot(0);
                    Log.d("SecContentProvider2", "isDataAllowedFromSimSlot(0) result " + z);
                } catch (SecurityException e3) {
                    Log.w("SecContentProvider2", "SecurityException: " + e3);
                }
                return populateCursor(str, z);
            case 16:
                try {
                    z = phoneRestrictionPolicy.isDataAllowedFromSimSlot(1);
                    Log.d("SecContentProvider2", "isDataAllowedFromSimSlot(1) result " + z);
                } catch (SecurityException e4) {
                    Log.w("SecContentProvider2", "SecurityException: " + e4);
                }
                return populateCursor(str, z);
            case 17:
                if (strArr == null || Array.getLength(strArr) <= 0) {
                    return null;
                }
                return populateCursor(str, phoneRestrictionPolicy.canOutgoingSms(strArr[0]));
            case 18:
                if (strArr == null || Array.getLength(strArr) <= 0) {
                    return null;
                }
                return populateCursor(str, phoneRestrictionPolicy.isSimLockedByAdmin(strArr[0]));
            case 19:
                return populateCursor(str, phoneRestrictionPolicy.isLimitNumberOfSmsEnabled(new ContextInfo(i)));
            case 20:
                if (strArr == null || Array.getLength(strArr) <= 0) {
                    return null;
                }
                return populateCursor(str, phoneRestrictionPolicy.canIncomingCall(strArr[0]));
            case 21:
                return populateCursor(str, phoneRestrictionPolicy.isOutgoingSmsAllowed(new ContextInfo(i)));
            case 22:
                if (strArr != null && Array.getLength(strArr) > 0) {
                    z2 = Boolean.parseBoolean(strArr[0]);
                }
                return populateCursor(str, phoneRestrictionPolicy.checkEnableUseOfPacketData(z2));
            default:
                Log.d("SecContentProvider2", "return null");
                return null;
        }
    }

    public final MatrixCursor populateCursor(String str, boolean z) {
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{str});
        matrixCursor.addRow(new Boolean[]{Boolean.valueOf(z)});
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        String asString;
        int callingUid = Binder.getCallingUid();
        int match = URI_MATCHER.match(uri);
        if (match == 12) {
            ExchangeAccountPolicy exchangeAccountPolicy = (ExchangeAccountPolicy) EnterpriseService.getPolicyService("eas_account_policy");
            if (exchangeAccountPolicy != null && (asString = contentValues.getAsString("API")) != null && asString.equals("setAccountEmailPassword")) {
                exchangeAccountPolicy.setAccountEmailPassword(new ContextInfo(callingUid), contentValues.getAsString("password"));
            }
        } else if (match == 18) {
            getContext().getContentResolver().notifyChange(uri, null);
        } else if (match == 14) {
            getContext().getContentResolver().notifyChange(uri, null);
            Log.d("SecContentProvider2", "do notifyChange() for knoxCustomManagerService1");
        } else if (match == 15) {
            getContext().getContentResolver().notifyChange(uri, null);
            Log.d("SecContentProvider2", "do notifyChange() for knoxCustomManagerService2");
        }
        return null;
    }

    public final String getCallerName(int i) {
        String nameForUid = this.mContext.getPackageManager().getNameForUid(i);
        return nameForUid == null ? "fail to get caller name" : nameForUid;
    }

    public final IKnoxCustomManager getKnoxCustomManagerService() {
        if (this.mKnoxCustomManagerService == null) {
            this.mKnoxCustomManagerService = IKnoxCustomManager.Stub.asInterface(ServiceManager.getService(KnoxCustomManagerService.KNOX_CUSTOM_MANAGER_SERVICE));
        }
        return this.mKnoxCustomManagerService;
    }
}
