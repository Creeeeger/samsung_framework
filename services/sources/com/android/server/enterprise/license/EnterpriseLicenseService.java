package com.android.server.enterprise.license;

import android.app.ActivityManager;
import android.app.AppGlobals;
import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.IPackageManager;
import android.content.pm.PackageManager;
import android.content.pm.UserInfo;
import android.os.Binder;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.util.jobs.XmlUtils;
import com.android.server.enterprise.EnterpriseDeviceManagerService;
import com.android.server.enterprise.EnterpriseServiceCallback;
import com.android.server.enterprise.adapter.AdapterRegistry;
import com.android.server.enterprise.adapter.IPersonaManagerAdapter;
import com.android.server.enterprise.license.EnterpriseLicenseService;
import com.android.server.enterprise.storage.EdmStorageProvider;
import com.android.server.enterprise.utils.KpuHelper;
import com.android.server.enterprise.utils.Utils;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import com.android.server.pm.PackageManagerShellCommandDataLoader;
import com.samsung.android.knox.ContextInfo;
import com.samsung.android.knox.custom.KnoxCustomManagerService;
import com.samsung.android.knox.license.ActivationInfo;
import com.samsung.android.knox.license.Error;
import com.samsung.android.knox.license.IEnterpriseLicense;
import com.samsung.android.knox.license.ILicenseResultCallback;
import com.samsung.android.knox.license.LicenseAgentDbContract;
import com.samsung.android.knox.license.LicenseInfo;
import com.samsung.android.knox.license.LicenseResult;
import com.samsung.android.knox.license.RightsObject;
import com.samsung.android.knox.ucm.core.IUcmService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class EnterpriseLicenseService extends IEnterpriseLicense.Stub implements EnterpriseServiceCallback, IDeviceProfileObserver {
    public static final int MY_PID = Process.myPid();
    public static EdmStorageProvider mEdmStorageProvider;
    public static IPackageManager mPMS;
    public final Context mContext;
    public DeviceProfileListener mDeviceProfileListener;
    public Map mElmPkgRecords;
    public final Injector mInjector;
    public List mKlmElmChangeList;
    public Map mKlmPkgRecords;
    public BroadcastReceiver mPackageRemovedReceiver;
    public IUcmService mUcmeService;
    public final List samsungSpecialPackages;

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void notifyToAddSystemService(String str, IBinder iBinder) {
    }

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void onAdminAdded(int i) {
    }

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void onAdminRemoved(int i) {
    }

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void onPreAdminRemoval(int i) {
    }

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void systemReady() {
    }

    /* loaded from: classes2.dex */
    class Injector {
        public final Context mContext;

        public Injector(Context context) {
            this.mContext = context;
        }
    }

    public EnterpriseLicenseService(Context context, IPackageManager iPackageManager) {
        this(new Injector(context), iPackageManager);
    }

    public EnterpriseLicenseService(Injector injector, IPackageManager iPackageManager) {
        this.mUcmeService = null;
        this.samsungSpecialPackages = new ArrayList(List.of("com.sec.enterprise.knox.cloudmdm.smdms", "com.sec.knox.kccagent", "com.sec.knox.klat.agent"));
        this.mPackageRemovedReceiver = new AnonymousClass1();
        this.mInjector = injector;
        Context context = injector.mContext;
        Objects.requireNonNull(context);
        this.mContext = context;
        mPMS = iPackageManager;
        mEdmStorageProvider = new EdmStorageProvider(context);
        this.mElmPkgRecords = new ConcurrentHashMap();
        this.mKlmPkgRecords = new ConcurrentHashMap();
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_FULLY_REMOVED");
        intentFilter.addDataScheme("package");
        context.registerReceiverAsUser(this.mPackageRemovedReceiver, UserHandle.ALL, intentFilter, null, null);
        this.mKlmElmChangeList = new ArrayList();
        DeviceProfileListener deviceProfileListener = new DeviceProfileListener(context);
        this.mDeviceProfileListener = deviceProfileListener;
        deviceProfileListener.registerObserver(this);
    }

    /* renamed from: com.android.server.enterprise.license.EnterpriseLicenseService$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 extends BroadcastReceiver {
        public AnonymousClass1() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || intent.getData() == null) {
                Log.e("EnterpriseLicenseService", "intent or getData are null. Skip.");
                return;
            }
            String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
            if (EnterpriseLicenseService.this.isPackageInstalled(schemeSpecificPart)) {
                return;
            }
            if (EnterpriseLicenseService.this.getInstanceId(schemeSpecificPart) != null) {
                EnterpriseLicenseService.this.resetLicenseByAdmin(schemeSpecificPart);
            }
            final Bundle bundle = new Bundle();
            bundle.putString("packageName", schemeSpecificPart);
            new Thread(new Runnable() { // from class: com.android.server.enterprise.license.EnterpriseLicenseService$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    EnterpriseLicenseService.AnonymousClass1.this.lambda$onReceive$0(bundle);
                }
            }).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReceive$0(Bundle bundle) {
            EnterpriseLicenseService.this.callLicenseAgent("packageRemovedInternal", null, bundle);
        }
    }

    public final void enforcePermission() {
        if (Binder.getCallingPid() == MY_PID) {
            return;
        }
        try {
            this.mContext.enforceCallingPermission("com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL", null);
        } catch (SecurityException e) {
            String message = e.getMessage();
            if (message != null) {
                message = message + ",com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL";
            }
            throw new SecurityException(message);
        }
    }

    public final synchronized IUcmService getUcmService() {
        if (this.mUcmeService == null) {
            this.mUcmeService = IUcmService.Stub.asInterface(ServiceManager.getService("com.samsung.ucs.ucsservice"));
        }
        return this.mUcmeService;
    }

    public final void notifyContainerLicenseStatus(String str) {
        Iterator it = this.mKlmElmChangeList.iterator();
        while (it.hasNext()) {
            ((IActivationKlmElmObserver) it.next()).onUpdateContainerLicenseStatus(str);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:(1:30)(2:106|(1:108)(16:109|32|33|(5:58|59|60|61|62)|35|(1:(1:38)(1:39))|40|41|(3:43|(1:45)|46)(1:56)|47|(1:49)(1:55)|50|51|52|53|54))|32|33|(0)|35|(0)|40|41|(0)(0)|47|(0)(0)|50|51|52|53|54) */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01e1, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0030 A[Catch: all -> 0x02e5, TryCatch #2 {, blocks: (B:4:0x0009, B:6:0x0017, B:9:0x001e, B:13:0x0028, B:15:0x0030, B:17:0x003b, B:18:0x0041, B:20:0x004b, B:21:0x006e, B:25:0x0058, B:84:0x0270, B:86:0x0277, B:88:0x027d, B:89:0x028d, B:91:0x0295, B:92:0x02b8, B:93:0x02e4, B:94:0x02a2, B:69:0x01fa, B:71:0x0201, B:73:0x0207, B:75:0x0215, B:77:0x021d, B:78:0x0240, B:51:0x0268, B:79:0x022a, B:41:0x0161, B:43:0x0168, B:45:0x016e, B:47:0x017e, B:49:0x0186, B:50:0x01a9, B:55:0x0193), top: B:3:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0168 A[Catch: all -> 0x02e5, TryCatch #2 {, blocks: (B:4:0x0009, B:6:0x0017, B:9:0x001e, B:13:0x0028, B:15:0x0030, B:17:0x003b, B:18:0x0041, B:20:0x004b, B:21:0x006e, B:25:0x0058, B:84:0x0270, B:86:0x0277, B:88:0x027d, B:89:0x028d, B:91:0x0295, B:92:0x02b8, B:93:0x02e4, B:94:0x02a2, B:69:0x01fa, B:71:0x0201, B:73:0x0207, B:75:0x0215, B:77:0x021d, B:78:0x0240, B:51:0x0268, B:79:0x022a, B:41:0x0161, B:43:0x0168, B:45:0x016e, B:47:0x017e, B:49:0x0186, B:50:0x01a9, B:55:0x0193), top: B:3:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0186 A[Catch: all -> 0x02e5, TryCatch #2 {, blocks: (B:4:0x0009, B:6:0x0017, B:9:0x001e, B:13:0x0028, B:15:0x0030, B:17:0x003b, B:18:0x0041, B:20:0x004b, B:21:0x006e, B:25:0x0058, B:84:0x0270, B:86:0x0277, B:88:0x027d, B:89:0x028d, B:91:0x0295, B:92:0x02b8, B:93:0x02e4, B:94:0x02a2, B:69:0x01fa, B:71:0x0201, B:73:0x0207, B:75:0x0215, B:77:0x021d, B:78:0x0240, B:51:0x0268, B:79:0x022a, B:41:0x0161, B:43:0x0168, B:45:0x016e, B:47:0x017e, B:49:0x0186, B:50:0x01a9, B:55:0x0193), top: B:3:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0193 A[Catch: all -> 0x02e5, TryCatch #2 {, blocks: (B:4:0x0009, B:6:0x0017, B:9:0x001e, B:13:0x0028, B:15:0x0030, B:17:0x003b, B:18:0x0041, B:20:0x004b, B:21:0x006e, B:25:0x0058, B:84:0x0270, B:86:0x0277, B:88:0x027d, B:89:0x028d, B:91:0x0295, B:92:0x02b8, B:93:0x02e4, B:94:0x02a2, B:69:0x01fa, B:71:0x0201, B:73:0x0207, B:75:0x0215, B:77:0x021d, B:78:0x0240, B:51:0x0268, B:79:0x022a, B:41:0x0161, B:43:0x0168, B:45:0x016e, B:47:0x017e, B:49:0x0186, B:50:0x01a9, B:55:0x0193), top: B:3:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0125 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0277 A[Catch: all -> 0x02e5, TryCatch #2 {, blocks: (B:4:0x0009, B:6:0x0017, B:9:0x001e, B:13:0x0028, B:15:0x0030, B:17:0x003b, B:18:0x0041, B:20:0x004b, B:21:0x006e, B:25:0x0058, B:84:0x0270, B:86:0x0277, B:88:0x027d, B:89:0x028d, B:91:0x0295, B:92:0x02b8, B:93:0x02e4, B:94:0x02a2, B:69:0x01fa, B:71:0x0201, B:73:0x0207, B:75:0x0215, B:77:0x021d, B:78:0x0240, B:51:0x0268, B:79:0x022a, B:41:0x0161, B:43:0x0168, B:45:0x016e, B:47:0x017e, B:49:0x0186, B:50:0x01a9, B:55:0x0193), top: B:3:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0295 A[Catch: all -> 0x02e5, TryCatch #2 {, blocks: (B:4:0x0009, B:6:0x0017, B:9:0x001e, B:13:0x0028, B:15:0x0030, B:17:0x003b, B:18:0x0041, B:20:0x004b, B:21:0x006e, B:25:0x0058, B:84:0x0270, B:86:0x0277, B:88:0x027d, B:89:0x028d, B:91:0x0295, B:92:0x02b8, B:93:0x02e4, B:94:0x02a2, B:69:0x01fa, B:71:0x0201, B:73:0x0207, B:75:0x0215, B:77:0x021d, B:78:0x0240, B:51:0x0268, B:79:0x022a, B:41:0x0161, B:43:0x0168, B:45:0x016e, B:47:0x017e, B:49:0x0186, B:50:0x01a9, B:55:0x0193), top: B:3:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02a2 A[Catch: all -> 0x02e5, TryCatch #2 {, blocks: (B:4:0x0009, B:6:0x0017, B:9:0x001e, B:13:0x0028, B:15:0x0030, B:17:0x003b, B:18:0x0041, B:20:0x004b, B:21:0x006e, B:25:0x0058, B:84:0x0270, B:86:0x0277, B:88:0x027d, B:89:0x028d, B:91:0x0295, B:92:0x02b8, B:93:0x02e4, B:94:0x02a2, B:69:0x01fa, B:71:0x0201, B:73:0x0207, B:75:0x0215, B:77:0x021d, B:78:0x0240, B:51:0x0268, B:79:0x022a, B:41:0x0161, B:43:0x0168, B:45:0x016e, B:47:0x017e, B:49:0x0186, B:50:0x01a9, B:55:0x0193), top: B:3:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0288  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean processLicenseActivationResponse(java.lang.String r21, java.lang.String r22, java.lang.String r23, java.lang.String r24, com.samsung.android.knox.license.RightsObject r25, com.samsung.android.knox.license.Error r26, java.lang.String r27, java.lang.String r28, int r29) {
        /*
            Method dump skipped, instructions count: 744
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.license.EnterpriseLicenseService.processLicenseActivationResponse(java.lang.String, java.lang.String, java.lang.String, java.lang.String, com.samsung.android.knox.license.RightsObject, com.samsung.android.knox.license.Error, java.lang.String, java.lang.String, int):boolean");
    }

    public boolean processKnoxLicenseResponse(String str, String str2, String str3, Error error, int i, int i2, String str4, RightsObject rightsObject, int i3) {
        ArrayList arrayList;
        boolean z;
        ArrayList arrayList2;
        enforcePermission();
        Log.d("EnterpriseLicenseService", "processKnoxLicenseResponse()");
        long clearCallingIdentity = Binder.clearCallingIdentity();
        String str5 = null;
        try {
            try {
                if (rightsObject != null) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("pkgName", str);
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("rightsObject", Utils.serializeObject(rightsObject));
                    if (mEdmStorageProvider.getCount("LICENSE", contentValues) > 0) {
                        z = mEdmStorageProvider.putValues("LICENSE", contentValues2, contentValues);
                    } else {
                        contentValues2.put("instanceId", "-1");
                        contentValues2.put("pkgVersion", str2);
                        contentValues2.put("pkgName", str);
                        z = mEdmStorageProvider.putValuesNoUpdate("LICENSE", contentValues2);
                    }
                    if (z) {
                        Log.d("EnterpriseLicenseService", "processKnoxLicenseResponse(): License Table update.");
                        Log.d("EnterpriseLicenseService", "result setLicensePermissionForMDM(" + str + "): " + mPMS.setLicensePermissionsForMDM(str));
                        arrayList2 = new ArrayList(mPMS.getPackageGrantedPermissionsForMDM(str));
                        EnterpriseDeviceManagerService.getInstance().startDeferredServicesIfNeeded();
                    } else {
                        arrayList2 = null;
                    }
                    arrayList = arrayList2;
                } else {
                    Log.w("EnterpriseLicenseService", "processKnoxLicenseResponse().RO is null");
                    arrayList = null;
                    z = false;
                }
                ArrayList arrayList3 = z ? (ArrayList) getPermissions(str) : new ArrayList();
                if (i2 != 801 && this.mKlmPkgRecords.containsKey(str)) {
                    str5 = ((LicenseResultRecord) this.mKlmPkgRecords.get(str)).licenseKey;
                } else if (i2 != 801) {
                    Log.w("EnterpriseLicenseService", "klm activation record not found for " + str);
                }
                LicenseResult licenseResult = new LicenseResult(str, str3, error.getErrorCode(), LicenseResult.Type.fromKlmStatus(i2), arrayList, getMaskedKlm(str5));
                sendKlmResult(str3, error.getErrorCode(), i2, str, str4, i3, arrayList, arrayList3);
                IUcmService ucmService = getUcmService();
                if (ucmService != null) {
                    ucmService.notifyLicenseStatus(str, str3, error.getErrorCode());
                }
                notifyContainerLicenseStatus(str);
                notifyKlmObservers(str, licenseResult);
                sendDeviceRegistrationIntentToKpmAgent(str3, str);
                Binder.restoreCallingIdentity(clearCallingIdentity);
                return true;
            } catch (Exception e) {
                Log.w("EnterpriseLicenseService", "processKnoxLicenseResponse() failed");
                e.printStackTrace();
                Binder.restoreCallingIdentity(clearCallingIdentity);
                return false;
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    public final void sendDeviceRegistrationIntentToKpmAgent(String str, String str2) {
        Log.d("EnterpriseLicenseService", "sendDeviceRegistrationIntentToKpmAgent : status : " + str);
        if ("success".equals(str)) {
            Intent intent = new Intent("com.samsung.android.knox.intent.action.DEVICE_REGISTRATION_INTERNAL");
            intent.putExtra("packageName", str2);
            intent.setPackage("com.samsung.android.knox.attestation");
            intent.addFlags(32);
            this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL, "com.samsung.android.knox.permission.KNOX_DEVICE_REGISTRATION_REQUEST_INTENT_INTERNAL");
        }
    }

    public RightsObject getRightsObject(String str) {
        RightsObject rightsObject;
        Exception e;
        byte[] blob;
        enforcePermission();
        if (str == null || str.trim().isEmpty()) {
            return null;
        }
        try {
            blob = mEdmStorageProvider.getBlob("LICENSE", "instanceId", str, "rightsObject");
        } catch (Exception e2) {
            rightsObject = null;
            e = e2;
        }
        if (blob == null) {
            return null;
        }
        rightsObject = (RightsObject) Utils.deserializeObject(blob);
        try {
            Log.d("EnterpriseLicenseService", "getRightsObject() - deserializeObject");
        } catch (Exception e3) {
            e = e3;
            Log.w("EnterpriseLicenseService", "getRightsObject() failed");
            e.printStackTrace();
            return rightsObject;
        }
        return rightsObject;
    }

    public RightsObject getRightsObjectByAdmin(String str) {
        RightsObject rightsObject;
        Exception e;
        byte[] blob;
        enforcePermission();
        if (str == null || str.trim().isEmpty()) {
            return null;
        }
        try {
            blob = mEdmStorageProvider.getBlob("LICENSE", "pkgName", str, "rightsObject");
        } catch (Exception e2) {
            rightsObject = null;
            e = e2;
        }
        if (blob == null) {
            return null;
        }
        rightsObject = (RightsObject) Utils.deserializeObject(blob);
        try {
            Log.d("EnterpriseLicenseService", "getRightsObjectByAdmin() - deserializeObject");
        } catch (Exception e3) {
            e = e3;
            Log.w("EnterpriseLicenseService", "getRightsObjectByAdmin() failed");
            e.printStackTrace();
            return rightsObject;
        }
        return rightsObject;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:34|35|(2:155|156)|37|(3:(9:(1:(1:40)(21:41|42|43|44|45|46|(7:49|50|51|52|(1:55)(0)|58|47)|138|139|(1:66)|(1:68)|70|71|72|73|74|(2:(1:77)|78)(1:84)|79|(1:81)|82|83))|72|73|74|(0)(0)|79|(0)|82|83)|70|71)|154|44|45|46|(1:47)|138|139|(3:60|62|66)|(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(3:(9:(1:(1:40)(21:41|42|43|44|45|46|(7:49|50|51|52|(1:55)(0)|58|47)|138|139|(1:66)|(1:68)|70|71|72|73|74|(2:(1:77)|78)(1:84)|79|(1:81)|82|83))|72|73|74|(0)(0)|79|(0)|82|83)|70|71) */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x025c, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x025d, code lost:
    
        r6 = r28;
        r16 = r11;
        r13 = r18;
        r4 = "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE";
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0285, code lost:
    
        r25 = r0;
        r11 = r23;
        r2 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0274, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0275, code lost:
    
        r17 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0279, code lost:
    
        r13 = r6;
        r16 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0292, code lost:
    
        r4 = "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE";
        r6 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0270, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0271, code lost:
    
        r17 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x027e, code lost:
    
        r13 = r6;
        r16 = r11;
        r4 = "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE";
        r6 = r28;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0329  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0153 A[Catch: all -> 0x00fd, Exception -> 0x010b, TRY_ENTER, TRY_LEAVE, TryCatch #23 {Exception -> 0x010b, all -> 0x00fd, blocks: (B:156:0x00f7, B:40:0x0121, B:49:0x0153), top: B:155:0x00f7 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01d8 A[Catch: all -> 0x01ba, Exception -> 0x01c9, TRY_LEAVE, TryCatch #21 {Exception -> 0x01c9, all -> 0x01ba, blocks: (B:52:0x0165, B:55:0x0172, B:58:0x0179, B:60:0x019d, B:62:0x01a8, B:64:0x01b2, B:68:0x01d8), top: B:51:0x0165 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0381  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x03a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean processLicenseValidationResult(java.lang.String r24, java.lang.String r25, com.samsung.android.knox.license.RightsObject r26, com.samsung.android.knox.license.Error r27, java.lang.String r28, java.lang.String r29, java.lang.String r30, java.lang.String r31) {
        /*
            Method dump skipped, instructions count: 982
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.license.EnterpriseLicenseService.processLicenseValidationResult(java.lang.String, java.lang.String, com.samsung.android.knox.license.RightsObject, com.samsung.android.knox.license.Error, java.lang.String, java.lang.String, java.lang.String, java.lang.String):boolean");
    }

    public Bundle getApiCallData(String str) {
        enforcePermission();
        if (str != null && !str.trim().isEmpty()) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("instanceId", str);
                ContentValues value = mEdmStorageProvider.getValue("LICENSE", "pkgName", contentValues);
                if (value == null) {
                    Log.w("EnterpriseLicenseService", "getApiCallData(): result is null, Record does not exist");
                    return null;
                }
                String asString = value.getAsString("pkgName");
                if (asString == null) {
                    Log.w("EnterpriseLicenseService", "getApiCallData(): pkgName is null, Record does not exist");
                    return null;
                }
                return LicenseLog.getLog(asString);
            } catch (Exception e) {
                Log.w("EnterpriseLicenseService", "getApiCallData() failed");
                e.printStackTrace();
            }
        }
        return null;
    }

    public boolean deleteApiCallData(String str, String str2, Error error) {
        enforcePermission();
        if (str2 != null && !str2.trim().isEmpty()) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("instanceId", str2);
                ContentValues value = mEdmStorageProvider.getValue("LICENSE", "pkgName", contentValues);
                if (value == null) {
                    Log.w("EnterpriseLicenseService", "deleteApiCallData(): result is null");
                    return false;
                }
                String asString = value.getAsString("pkgName");
                if (asString == null) {
                    Log.w("EnterpriseLicenseService", "deleteApiCallData(): Record does not exist");
                    return false;
                }
                return LicenseLog.deleteLog(asString);
            } catch (Exception e) {
                Log.w("EnterpriseLicenseService", "deleteApiCallData() failed");
                e.printStackTrace();
            }
        }
        return false;
    }

    public boolean deleteApiCallDataByAdmin(String str) {
        enforcePermission();
        if (str != null && !str.trim().isEmpty()) {
            try {
                return LicenseLog.deleteLog(str);
            } catch (Exception e) {
                Log.w("EnterpriseLicenseService", "deleteApiCallDataByAdmin() failed");
                e.printStackTrace();
            }
        }
        return false;
    }

    public boolean deleteAllApiCallData() {
        enforcePermission();
        try {
            return LicenseLog.deleteAllLog();
        } catch (Exception e) {
            Log.w("EnterpriseLicenseService", "deleteAllApiCallData() failed");
            e.printStackTrace();
            return false;
        }
    }

    public Bundle getApiCallDataByAdmin(ContextInfo contextInfo, String str) {
        try {
            this.mContext.enforceCallingPermission("com.samsung.android.knox.permission.KNOX_LICENSE_LOG", null);
            if (str != null && !str.trim().isEmpty()) {
                try {
                    return LicenseLog.getLog(str);
                } catch (Exception unused) {
                    Log.w("EnterpriseLicenseService", "getApiCallDataByAdmin() failed");
                }
            }
            return null;
        } catch (SecurityException e) {
            String message = e.getMessage();
            if (message != null) {
                message = message + ",com.samsung.android.knox.permission.KNOX_LICENSE_LOG";
            }
            throw new SecurityException(message);
        }
    }

    public LicenseInfo getLicenseInfo(String str) {
        enforcePermission();
        if (str == null || str.trim().isEmpty()) {
            return null;
        }
        try {
            List<ContentValues> valuesList = mEdmStorageProvider.getValuesList("LICENSE", new String[]{"pkgName", "instanceId", "pkgVersion"}, null);
            if (valuesList == null || valuesList.isEmpty()) {
                return null;
            }
            for (ContentValues contentValues : valuesList) {
                String asString = contentValues.getAsString("instanceId");
                if (asString != null && asString.equals(str)) {
                    return new LicenseInfo(contentValues.getAsString("pkgName"), asString, contentValues.getAsString("pkgVersion"));
                }
            }
            return null;
        } catch (Exception unused) {
            Log.w("EnterpriseLicenseService", "getLicenseInfo() failed");
            return null;
        }
    }

    public LicenseInfo getLicenseInfoByAdmin(String str) {
        enforcePermission();
        if (str == null || str.trim().isEmpty()) {
            return null;
        }
        try {
            List<ContentValues> valuesList = mEdmStorageProvider.getValuesList("LICENSE", new String[]{"pkgName", "instanceId", "pkgVersion"}, null);
            if (valuesList == null || valuesList.isEmpty()) {
                return null;
            }
            for (ContentValues contentValues : valuesList) {
                String asString = contentValues.getAsString("pkgName");
                if (asString != null && asString.equals(str)) {
                    return new LicenseInfo(str, contentValues.getAsString("instanceId"), contentValues.getAsString("pkgVersion"));
                }
            }
            return null;
        } catch (Exception unused) {
            Log.w("EnterpriseLicenseService", "getLicenseInfoByAdmin() failed");
            return null;
        }
    }

    public LicenseInfo[] getAllLicenseInfo() {
        enforcePermission();
        try {
            List<ContentValues> valuesList = mEdmStorageProvider.getValuesList("LICENSE", new String[]{"pkgName", "instanceId", "pkgVersion"}, null);
            if (valuesList != null && !valuesList.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                for (ContentValues contentValues : valuesList) {
                    arrayList.add(new LicenseInfo(contentValues.getAsString("pkgName"), contentValues.getAsString("instanceId"), contentValues.getAsString("pkgVersion")));
                }
                if (arrayList.size() > 0) {
                    return (LicenseInfo[]) arrayList.toArray(new LicenseInfo[arrayList.size()]);
                }
            }
        } catch (Exception unused) {
            Log.w("EnterpriseLicenseService", "getLicenseInfo() failed");
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0152 A[Catch: all -> 0x0193, TRY_ENTER, TryCatch #2 {, blocks: (B:4:0x0009, B:58:0x0085, B:70:0x00b4, B:34:0x0133, B:10:0x013f, B:13:0x0152, B:15:0x015e, B:17:0x0161, B:19:0x0166, B:24:0x017c, B:81:0x018f, B:82:0x0192, B:45:0x002a, B:48:0x0036, B:50:0x0046, B:52:0x005f, B:54:0x0070, B:57:0x0082, B:63:0x0090, B:64:0x0093, B:66:0x0098, B:26:0x00c7, B:30:0x00eb, B:32:0x00f3, B:33:0x010d, B:37:0x010a, B:38:0x00d6, B:40:0x00e7, B:9:0x0138, B:43:0x0145), top: B:3:0x0009, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x017c A[Catch: all -> 0x0193, TRY_LEAVE, TryCatch #2 {, blocks: (B:4:0x0009, B:58:0x0085, B:70:0x00b4, B:34:0x0133, B:10:0x013f, B:13:0x0152, B:15:0x015e, B:17:0x0161, B:19:0x0166, B:24:0x017c, B:81:0x018f, B:82:0x0192, B:45:0x002a, B:48:0x0036, B:50:0x0046, B:52:0x005f, B:54:0x0070, B:57:0x0082, B:63:0x0090, B:64:0x0093, B:66:0x0098, B:26:0x00c7, B:30:0x00eb, B:32:0x00f3, B:33:0x010d, B:37:0x010a, B:38:0x00d6, B:40:0x00e7, B:9:0x0138, B:43:0x0145), top: B:3:0x0009, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0098 A[Catch: all -> 0x00bc, Exception -> 0x00bf, TRY_LEAVE, TryCatch #0 {Exception -> 0x00bf, blocks: (B:45:0x002a, B:48:0x0036, B:50:0x0046, B:63:0x0090, B:64:0x0093, B:66:0x0098), top: B:44:0x002a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void activateLicense(com.samsung.android.knox.ContextInfo r20, java.lang.String r21, java.lang.String r22, java.lang.String r23, com.samsung.android.knox.license.ILicenseResultCallback r24) {
        /*
            Method dump skipped, instructions count: 406
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.license.EnterpriseLicenseService.activateLicense(com.samsung.android.knox.ContextInfo, java.lang.String, java.lang.String, java.lang.String, com.samsung.android.knox.license.ILicenseResultCallback):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$activateLicense$0(Bundle bundle) {
        callLicenseAgent("ELMRegistrationInternal", null, bundle);
    }

    public final IPersonaManagerAdapter getPersonaManagerAdapter() {
        return (IPersonaManagerAdapter) AdapterRegistry.getAdapter(IPersonaManagerAdapter.class);
    }

    public synchronized void activateLicenseForUMC(ContextInfo contextInfo, String str, String str2, String str3) {
        activateLicense(contextInfo, str, str2, str3, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0149 A[Catch: all -> 0x018a, TRY_ENTER, TryCatch #4 {, blocks: (B:4:0x0009, B:52:0x0085, B:64:0x00b4, B:32:0x012a, B:10:0x0136, B:13:0x0149, B:15:0x0155, B:17:0x0158, B:19:0x015d, B:24:0x0173, B:75:0x0186, B:76:0x0189, B:39:0x0028, B:42:0x0034, B:44:0x0044, B:46:0x005d, B:48:0x0070, B:51:0x0082, B:57:0x0090, B:58:0x0093, B:60:0x0098, B:26:0x00c7, B:28:0x00d1, B:30:0x00d9, B:31:0x00f3, B:35:0x00f0, B:9:0x012f, B:37:0x013c), top: B:3:0x0009, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0173 A[Catch: all -> 0x018a, TRY_LEAVE, TryCatch #4 {, blocks: (B:4:0x0009, B:52:0x0085, B:64:0x00b4, B:32:0x012a, B:10:0x0136, B:13:0x0149, B:15:0x0155, B:17:0x0158, B:19:0x015d, B:24:0x0173, B:75:0x0186, B:76:0x0189, B:39:0x0028, B:42:0x0034, B:44:0x0044, B:46:0x005d, B:48:0x0070, B:51:0x0082, B:57:0x0090, B:58:0x0093, B:60:0x0098, B:26:0x00c7, B:28:0x00d1, B:30:0x00d9, B:31:0x00f3, B:35:0x00f0, B:9:0x012f, B:37:0x013c), top: B:3:0x0009, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0098 A[Catch: all -> 0x00bc, Exception -> 0x00bf, TRY_LEAVE, TryCatch #0 {Exception -> 0x00bf, blocks: (B:39:0x0028, B:42:0x0034, B:44:0x0044, B:57:0x0090, B:58:0x0093, B:60:0x0098), top: B:38:0x0028 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void activateKnoxLicense(com.samsung.android.knox.ContextInfo r20, java.lang.String r21, java.lang.String r22, com.samsung.android.knox.license.ILicenseResultCallback r23) {
        /*
            Method dump skipped, instructions count: 397
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.license.EnterpriseLicenseService.activateKnoxLicense(com.samsung.android.knox.ContextInfo, java.lang.String, java.lang.String, com.samsung.android.knox.license.ILicenseResultCallback):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$activateKnoxLicense$1(Bundle bundle) {
        callLicenseAgent("KLMRegistrationInternal", null, bundle);
    }

    public final void registerKlmLicenseResultRecord(String str, String str2, ILicenseResultCallback iLicenseResultCallback) {
        registerLicenseResultRecord(str, str2, iLicenseResultCallback, this.mKlmPkgRecords);
    }

    public final void registerElmLicenseResultRecord(String str, String str2, ILicenseResultCallback iLicenseResultCallback) {
        registerLicenseResultRecord(str, str2, iLicenseResultCallback, this.mElmPkgRecords);
    }

    public final void registerLicenseResultRecord(String str, String str2, ILicenseResultCallback iLicenseResultCallback, Map map) {
        Log.d("EnterpriseLicenseService", "registerLicenseResultRecord() for " + str);
        LicenseResultRecord licenseResultRecord = new LicenseResultRecord(str, str2, iLicenseResultCallback, map);
        if (iLicenseResultCallback != null) {
            try {
                iLicenseResultCallback.asBinder().linkToDeath(licenseResultRecord, 0);
                Log.d("EnterpriseLicenseService", "DeathRecipient successfully linked to " + str);
            } catch (RemoteException e) {
                Log.e("EnterpriseLicenseService", e.getMessage());
            }
        }
        map.put(str, licenseResultRecord);
    }

    public final void unregisterLicenseResultRecord(String str, Map map) {
        Log.d("EnterpriseLicenseService", "unregisterLicenseResultRecord() for " + str);
        if (map.containsKey(str)) {
            LicenseResultRecord licenseResultRecord = (LicenseResultRecord) map.get(str);
            if (licenseResultRecord != null && licenseResultRecord.callback != null) {
                licenseResultRecord.callback.asBinder().unlinkToDeath(licenseResultRecord, 0);
                Log.d("EnterpriseLicenseService", "DeathRecipient unlinked from " + str);
            }
            map.remove(str);
            return;
        }
        Log.e("EnterpriseLicenseService", "license record not found for " + str);
    }

    public synchronized void activateKnoxLicenseForUMC(ContextInfo contextInfo, String str, String str2) {
        activateKnoxLicense(contextInfo, str, str2, null);
    }

    public synchronized void validateLicenses() {
        validateLicenses(null);
    }

    public synchronized void validateLicenses(String str) {
        enforcePermission();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("validateLicenses to ");
            sb.append(str != null ? str : "all packages");
            Log.d("EnterpriseLicenseService", sb.toString());
            final Bundle bundle = new Bundle();
            bundle.putString("com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME", str);
            new Thread(new Runnable() { // from class: com.android.server.enterprise.license.EnterpriseLicenseService$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    EnterpriseLicenseService.this.lambda$validateLicenses$2(bundle);
                }
            }).start();
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$validateLicenses$2(Bundle bundle) {
        callLicenseAgent("licenseValidationInternal", null, bundle);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x013a A[Catch: all -> 0x017b, TRY_ENTER, TryCatch #5 {, blocks: (B:4:0x0009, B:54:0x0087, B:65:0x00b6, B:32:0x011b, B:10:0x0127, B:13:0x013a, B:15:0x0146, B:17:0x0149, B:19:0x014e, B:24:0x0164, B:76:0x0177, B:77:0x017a, B:39:0x0028, B:42:0x0034, B:44:0x0040, B:46:0x0046, B:48:0x005f, B:50:0x0072, B:53:0x0084, B:59:0x0092, B:60:0x0095, B:62:0x009a, B:26:0x00ce, B:28:0x00d8, B:30:0x00e0, B:31:0x00fa, B:35:0x00f7, B:9:0x0120, B:37:0x012d, B:73:0x00be, B:74:0x00c3), top: B:3:0x0009, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0164 A[Catch: all -> 0x017b, TRY_LEAVE, TryCatch #5 {, blocks: (B:4:0x0009, B:54:0x0087, B:65:0x00b6, B:32:0x011b, B:10:0x0127, B:13:0x013a, B:15:0x0146, B:17:0x0149, B:19:0x014e, B:24:0x0164, B:76:0x0177, B:77:0x017a, B:39:0x0028, B:42:0x0034, B:44:0x0040, B:46:0x0046, B:48:0x005f, B:50:0x0072, B:53:0x0084, B:59:0x0092, B:60:0x0095, B:62:0x009a, B:26:0x00ce, B:28:0x00d8, B:30:0x00e0, B:31:0x00fa, B:35:0x00f7, B:9:0x0120, B:37:0x012d, B:73:0x00be, B:74:0x00c3), top: B:3:0x0009, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ce A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x009a A[Catch: all -> 0x00c4, Exception -> 0x00c7, TRY_LEAVE, TryCatch #3 {all -> 0x00c4, blocks: (B:39:0x0028, B:42:0x0034, B:44:0x0040, B:46:0x0046, B:48:0x005f, B:50:0x0072, B:53:0x0084, B:59:0x0092, B:60:0x0095, B:62:0x009a, B:26:0x00ce, B:28:0x00d8, B:30:0x00e0, B:31:0x00fa, B:35:0x00f7, B:9:0x0120, B:37:0x012d, B:73:0x00be, B:74:0x00c3), top: B:38:0x0028, outer: #5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void deActivateKnoxLicense(com.samsung.android.knox.ContextInfo r20, java.lang.String r21, java.lang.String r22, com.samsung.android.knox.license.ILicenseResultCallback r23) {
        /*
            Method dump skipped, instructions count: 382
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.license.EnterpriseLicenseService.deActivateKnoxLicense(com.samsung.android.knox.ContextInfo, java.lang.String, java.lang.String, com.samsung.android.knox.license.ILicenseResultCallback):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deActivateKnoxLicense$3(Bundle bundle) {
        callLicenseAgent("KLMDeactivationInternal", null, bundle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.util.List] */
    public List getPermissions(String str) {
        String str2 = "EnterpriseLicenseService";
        int callingUid = Binder.getCallingUid();
        if (UserHandle.getAppId(callingUid) != 1000) {
            throw new SecurityException("Caller " + callingUid + " is not SYSTEM_SERVICE OR SYSTEM APP");
        }
        List list = null;
        if (str != null && !str.trim().isEmpty()) {
            try {
                byte[] blob = mEdmStorageProvider.getBlob("LICENSE", "pkgName", str, "rightsObject");
                str2 = str2;
                if (blob != null) {
                    RightsObject rightsObject = (RightsObject) Utils.deserializeObject(blob);
                    Log.d("EnterpriseLicenseService", "getPermissions() - deserializeObject");
                    if (rightsObject != null) {
                        ?? permissions = rightsObject.getPermissions();
                        list = permissions;
                        str2 = permissions;
                    } else {
                        Log.w("EnterpriseLicenseService", "ro is null!!");
                        str2 = str2;
                    }
                }
            } catch (Exception unused) {
                Log.w(str2, "getPermissions() failed");
            }
        }
        return list;
    }

    public List getELMPermissions(String str) {
        try {
            return getPermissions(str);
        } catch (SecurityException e) {
            Log.w("EnterpriseLicenseService", "getELMPermissions() failed: " + e.getMessage());
            return null;
        }
    }

    public void log(ContextInfo contextInfo, String str, boolean z, boolean z2) {
        LicenseLog.log(contextInfo, str, z, z2);
    }

    public boolean resetLicense(String str) {
        enforcePermission();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        boolean z = false;
        try {
            if (str != null) {
                try {
                } catch (Exception e) {
                    Log.w("EnterpriseLicenseService", "resetLicense() failed");
                    e.printStackTrace();
                }
                if (!str.trim().isEmpty()) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("instanceId", str);
                    ContentValues value = mEdmStorageProvider.getValue("LICENSE", "pkgName", contentValues);
                    if (value == null) {
                        Log.w("EnterpriseLicenseService", "resetLicense(): result is null");
                        return false;
                    }
                    String asString = value.getAsString("pkgName");
                    if (asString == null) {
                        Log.w("EnterpriseLicenseService", "resetLicense(): pkgName is null, Record does not exist");
                        return false;
                    }
                    z = resetELMInfo(asString);
                    if (z) {
                        mPMS.setLicensePermissionsForMDM(asString);
                    }
                    return z;
                }
            }
            return false;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public boolean resetLicenseByAdmin(String str) {
        enforcePermission();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        boolean z = false;
        if (str != null) {
            try {
                try {
                } catch (Exception unused) {
                    Log.w("EnterpriseLicenseService", "resetLicenseByAdmin() failed");
                }
                if (!str.trim().isEmpty()) {
                    z = resetELMInfo(str);
                    if (z && isPackageInstalled(str)) {
                        mPMS.setLicensePermissionsForMDM(str);
                    }
                    return z;
                }
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return false;
    }

    public boolean deleteLicense(String str) {
        enforcePermission();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        boolean z = false;
        try {
            if (str != null) {
                try {
                } catch (Exception e) {
                    Log.w("EnterpriseLicenseService", "deleteLicense() failed");
                    e.printStackTrace();
                }
                if (!str.trim().isEmpty()) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("instanceId", str);
                    ContentValues value = mEdmStorageProvider.getValue("LICENSE", "pkgName", contentValues);
                    if (value == null) {
                        Log.w("EnterpriseLicenseService", "deleteLicense(): result is null");
                        return false;
                    }
                    String asString = value.getAsString("pkgName");
                    if (asString == null) {
                        Log.w("EnterpriseLicenseService", "deleteLicense(): pkgName is null, Record does not exist");
                        return false;
                    }
                    z = deleteELMInfo(asString);
                    if (z) {
                        mPMS.setLicensePermissionsForMDM(asString);
                    }
                    return z;
                }
            }
            return false;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public boolean deleteLicenseByAdmin(String str) {
        enforcePermission();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        boolean z = false;
        if (str != null) {
            try {
                try {
                } catch (Exception unused) {
                    Log.e("EnterpriseLicenseService", "deleteLicenseByAdmin() failed");
                }
                if (!str.trim().isEmpty()) {
                    String instanceId = getInstanceId(str);
                    z = deleteELMInfo(str);
                    if (z) {
                        if (isPackageInstalled(str)) {
                            mPMS.setLicensePermissionsForMDM(str);
                        }
                        if (isElmKey(instanceId)) {
                            Log.d("EnterpriseLicenseService", "deleteLicenseByAdmin(): notify ELM observers");
                            notifyElmObservers(str, new LicenseResult(str, LicenseResult.Status.SUCCESS, 0, LicenseResult.Type.ELM_DEACTIVATION, (ArrayList) null, (String) null));
                        }
                    }
                    return z;
                }
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return false;
    }

    public final boolean isElmKey(String str) {
        try {
            if (Integer.parseInt(str) <= -1) {
                return false;
            }
            Log.d("EnterpriseLicenseService", "isElmKey(True)");
            return true;
        } catch (NumberFormatException unused) {
            Log.e("EnterpriseLicenseService", "isElmKey(False)");
            return false;
        }
    }

    public final boolean isPackageInstalled(String str) {
        Log.d("EnterpriseLicenseService", "isPackageInstalled()");
        for (UserInfo userInfo : ((UserManager) this.mContext.getSystemService("user")).getUsers()) {
            try {
                this.mContext.getPackageManager().getPackageInfoAsUser(str, 0, userInfo.id);
                Log.d("EnterpriseLicenseService", "isPackageInstalled() - " + str + " found in user " + userInfo.id);
                return true;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.d("EnterpriseLicenseService", "isPackageInstalled() - " + str + " not found in user " + userInfo.id);
            }
        }
        return false;
    }

    public void updateAdminPermissions() {
        if (Binder.getCallingPid() != MY_PID) {
            throw new SecurityException("Caller is not SYSTEM_PROCESS");
        }
        try {
            List valuesList = mEdmStorageProvider.getValuesList("LICENSE", new String[]{"pkgName"}, null);
            if (valuesList == null || valuesList.isEmpty()) {
                return;
            }
            Iterator it = valuesList.iterator();
            while (it.hasNext()) {
                String asString = ((ContentValues) it.next()).getAsString("pkgName");
                if (asString != null) {
                    Log.w("EnterpriseLicenseService", "updateAdminPermissions() :" + asString);
                    try {
                        mPMS.setLicensePermissionsForMDM(asString);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        } catch (Exception e2) {
            Log.w("EnterpriseLicenseService", "updateAdminPermissions() failed");
            e2.printStackTrace();
        }
    }

    public final boolean resetELMInfo(String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("rightsObject", (byte[]) null);
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("pkgName", str);
        return mEdmStorageProvider.putValues("LICENSE", contentValues, contentValues2);
    }

    public final boolean deleteELMInfo(String str) {
        return mEdmStorageProvider.deleteDataByFields("LICENSE", new String[]{"pkgName"}, new String[]{str});
    }

    public String getInstanceId(String str) {
        enforcePermission();
        String str2 = null;
        if (str != null && !str.trim().isEmpty()) {
            try {
                List<ContentValues> valuesList = mEdmStorageProvider.getValuesList("LICENSE", new String[]{"pkgName", "instanceId"}, null);
                if (valuesList != null && !valuesList.isEmpty()) {
                    for (ContentValues contentValues : valuesList) {
                        String asString = contentValues.getAsString("pkgName");
                        if (asString != null && asString.equals(str)) {
                            str2 = contentValues.getAsString("instanceId");
                        }
                    }
                }
            } catch (Exception unused) {
                Log.w("EnterpriseLicenseService", "getInstanceId() failed");
            }
        }
        return str2;
    }

    public boolean isServiceAvailable(String str, String str2) {
        Log.d("EnterpriseLicenseService", "isServiceAvailable");
        if (str2 == null || str2.isEmpty()) {
            Log.d("EnterpriseLicenseService", "serviceName is null");
            return false;
        }
        if (str != null) {
            try {
            } catch (Exception unused) {
                Log.w("EnterpriseLicenseService", "check Service did not find permission");
            }
            if (!str.isEmpty()) {
                RightsObject rightsObject = (RightsObject) Utils.deserializeObject(mEdmStorageProvider.getBlob("LICENSE", "pkgName", str, "rightsObject"));
                return rightsObject != null && rightsObject.getPermissions().contains(str2);
            }
        }
        List valuesList = mEdmStorageProvider.getValuesList("LICENSE", new String[]{"rightsObject"}, null);
        if (valuesList != null && !valuesList.isEmpty()) {
            Iterator it = valuesList.iterator();
            while (it.hasNext()) {
                RightsObject rightsObject2 = (RightsObject) Utils.deserializeObject(((ContentValues) it.next()).getAsByteArray("rightsObject"));
                if (rightsObject2 != null && rightsObject2.getPermissions().contains(str2)) {
                    return true;
                }
            }
        }
    }

    public boolean isEulaBypassAllowed(String str) {
        Log.d("EnterpriseLicenseService", "isEulaBypassAllowed");
        enforcePermission();
        try {
            List valuesList = mEdmStorageProvider.getValuesList("KNOX_CUSTOM", new String[]{"mamPackageName"});
            if (valuesList != null && !valuesList.isEmpty()) {
                Iterator it = valuesList.iterator();
                while (it.hasNext()) {
                    String asString = ((ContentValues) it.next()).getAsString("mamPackageName");
                    if (asString != null) {
                        for (String str2 : asString.split(KnoxVpnFirewallHelper.DELIMITER)) {
                            if (str2.equals(str)) {
                                return true;
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            Log.w("EnterpriseLicenseService", "isEulaBypassAllowed() failed");
            e.printStackTrace();
        }
        return false;
    }

    public ActivationInfo getLicenseActivationInfo(ContextInfo contextInfo, String str) {
        String nameForUid = this.mContext.getPackageManager().getNameForUid(Utils.getCallingOrUserUid(contextInfo));
        if (str != null) {
            enforcePermission();
        } else {
            str = nameForUid;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Bundle callLicenseAgent = callLicenseAgent("getActivations", str, null);
            return callLicenseAgent != null ? (ActivationInfo) callLicenseAgent.getParcelable(KnoxCustomManagerService.SPCM_KEY_RESULT) : null;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public List getAllLicenseActivationsInfos() {
        ArrayList arrayList = new ArrayList();
        enforcePermission();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Bundle callLicenseAgent = callLicenseAgent("getAllActivations", null, null);
            if (callLicenseAgent != null) {
                arrayList = callLicenseAgent.getParcelableArrayList(KnoxCustomManagerService.SPCM_KEY_RESULT);
            }
            return arrayList;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void addElmKlmObserver(IActivationKlmElmObserver iActivationKlmElmObserver) {
        enforcePermission();
        this.mKlmElmChangeList.add(iActivationKlmElmObserver);
    }

    public void removeElmKlmObserver(IActivationKlmElmObserver iActivationKlmElmObserver) {
        enforcePermission();
        this.mKlmElmChangeList.remove(iActivationKlmElmObserver);
    }

    public void notifyKlmObservers(String str, LicenseResult licenseResult) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Iterator it = this.mKlmElmChangeList.iterator();
            while (it.hasNext()) {
                ((IActivationKlmElmObserver) it.next()).onUpdateKlm(str, licenseResult);
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final void notifyElmObservers(String str, LicenseResult licenseResult) {
        Iterator it = this.mKlmElmChangeList.iterator();
        while (it.hasNext()) {
            ((IActivationKlmElmObserver) it.next()).onUpdateElm(str, licenseResult);
        }
    }

    public final boolean isLicenseLocked(int i) {
        int attributes = getPersonaManagerAdapter().getAttributes(i);
        if (attributes == -1) {
            return false;
        }
        boolean z = (attributes & 16) > 0;
        Log.d("EnterpriseLicenseService", "isLicenseLocked : " + z);
        return z;
    }

    public final void sendElmResult(String str, int i, int i2, String str2, String str3, LicenseResultRecord licenseResultRecord) {
        sendElmResult(str, i, i2, str2, str3, null, -1, new ArrayList(), new ArrayList(), licenseResultRecord);
    }

    public final void sendElmResult(String str, int i, int i2, String str2, String str3) {
        sendElmResult(str, i, i2, str2, str3, null, -1, new ArrayList(), new ArrayList(), null);
    }

    public final void sendElmResult(String str, int i, int i2, String str2, String str3, String str4, int i3, ArrayList arrayList, ArrayList arrayList2) {
        sendElmResult(str, i, i2, str2, str3, str4, i3, arrayList, arrayList2, null);
    }

    public final void sendElmResult(String str, int i, int i2, String str2, String str3, String str4, int i3, ArrayList arrayList, ArrayList arrayList2, LicenseResultRecord licenseResultRecord) {
        LicenseResultRecord licenseResultRecord2;
        boolean z;
        if (licenseResultRecord != null || i == 602 || i2 == 801) {
            licenseResultRecord2 = licenseResultRecord;
        } else {
            LicenseResultRecord licenseResultRecord3 = (LicenseResultRecord) this.mElmPkgRecords.get(str2);
            if (licenseResultRecord3 != null) {
                unregisterLicenseResultRecord(str2, this.mElmPkgRecords);
            } else {
                Log.e("EnterpriseLicenseService", "ELM Record not found. Caller died or race condition for " + str2);
            }
            licenseResultRecord2 = licenseResultRecord3;
        }
        if (licenseResultRecord2 != null && licenseResultRecord2.callback != null && i2 != 801) {
            z = true;
            try {
                licenseResultRecord2.callback.onLicenseResult(new LicenseResult(str2, str, i, LicenseResult.Type.fromElmStatus(i2), arrayList, licenseResultRecord2.licenseKey));
                Log.i("EnterpriseLicenseService", "ELM result sent by callback to " + str2);
            } catch (DeadObjectException e) {
                Log.e("EnterpriseLicenseService", "DeadObjectException in sendElmResult", e);
            } catch (RemoteException e2) {
                Log.e("EnterpriseLicenseService", "RemoteException in sendElmResult", e2);
            }
        }
        z = false;
        if (licenseResultRecord2 == null || licenseResultRecord2.callback == null || z) {
            Intent intent = new Intent("com.samsung.android.knox.intent.action.LICENSE_STATUS");
            intent.putExtra("com.samsung.android.knox.intent.extra.LICENSE_STATUS", str);
            intent.putExtra("com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE", i);
            intent.putExtra("com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE", i2);
            intent.putExtra("com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME", str2);
            intent.putExtra("com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP", str4);
            intent.putExtra("com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS", i3);
            intent.putStringArrayListExtra("com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS", arrayList);
            if (arrayList2 != null) {
                Bundle bundle = new Bundle();
                bundle.putStringArrayList("Permissions", arrayList2);
                intent.putExtra("com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS", bundle);
            }
            if (str3 != null && !str3.equals(str2)) {
                intent.setPackage(str3);
                long clearCallingIdentity = Binder.clearCallingIdentity();
                this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
                Binder.restoreCallingIdentity(clearCallingIdentity);
                Log.i("EnterpriseLicenseService", "ELM result sent by Intent to " + str3);
            }
            intent.setPackage(str2);
            long clearCallingIdentity2 = Binder.clearCallingIdentity();
            this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
            Binder.restoreCallingIdentity(clearCallingIdentity2);
            Log.i("EnterpriseLicenseService", "ELM result sent by Intent to " + str2);
        }
    }

    public final void sendKlmResult(String str, int i, int i2, String str2, String str3, LicenseResultRecord licenseResultRecord) {
        sendKlmResult(str, i, i2, str2, str3, -1, new ArrayList(), new ArrayList(), licenseResultRecord);
    }

    public final void sendKlmResult(String str, int i, int i2, String str2, String str3) {
        sendKlmResult(str, i, i2, str2, str3, -1, new ArrayList(), new ArrayList(), null);
    }

    public final void sendKlmResult(String str, int i, int i2, String str2, String str3, int i3, ArrayList arrayList, ArrayList arrayList2) {
        sendKlmResult(str, i, i2, str2, str3, i3, arrayList, arrayList2, null);
    }

    public final void sendKlmResult(String str, int i, int i2, String str2, String str3, int i3, ArrayList arrayList, ArrayList arrayList2, LicenseResultRecord licenseResultRecord) {
        LicenseResultRecord licenseResultRecord2;
        boolean z;
        if (licenseResultRecord != null || i2 == 801 || i == 602) {
            licenseResultRecord2 = licenseResultRecord;
        } else {
            LicenseResultRecord licenseResultRecord3 = (LicenseResultRecord) this.mKlmPkgRecords.get(str2);
            if (licenseResultRecord3 != null) {
                unregisterLicenseResultRecord(str2, this.mKlmPkgRecords);
            } else {
                Log.w("EnterpriseLicenseService", "KLM Record not found. Caller died or race condition for " + str2);
            }
            licenseResultRecord2 = licenseResultRecord3;
        }
        if (licenseResultRecord2 != null && licenseResultRecord2.callback != null && i2 != 801) {
            z = true;
            try {
                licenseResultRecord2.callback.onLicenseResult(new LicenseResult(str2, str, i, LicenseResult.Type.fromKlmStatus(i2), arrayList, licenseResultRecord2.licenseKey));
                Log.i("EnterpriseLicenseService", "KLM result sent by callback to " + str2);
            } catch (DeadObjectException e) {
                Log.e("EnterpriseLicenseService", "DeadObjectException in sendKlmResult", e);
            } catch (RemoteException e2) {
                Log.e("EnterpriseLicenseService", "RemoteException in sendKlmResult", e2);
            }
        }
        z = false;
        if (licenseResultRecord2 == null || licenseResultRecord2.callback == null || z || i2 == 801) {
            Intent intent = new Intent("com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS");
            intent.putExtra("com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS", str);
            intent.putExtra("com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE", i);
            intent.putExtra("com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE", i2);
            intent.putExtra("com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME", str2);
            intent.putStringArrayListExtra("com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS", arrayList);
            if (i2 == 800) {
                intent.putExtra("com.samsung.android.knox.intent.extra.LICENSE_ATTESTATION_STATUS", i3);
            }
            if (arrayList2 != null) {
                Bundle bundle = new Bundle();
                bundle.putStringArrayList("Permissions", arrayList2);
                intent.putExtra("com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS", bundle);
            }
            if (str3 != null && !str3.equals(str2)) {
                intent.setPackage(str3);
                long clearCallingIdentity = Binder.clearCallingIdentity();
                this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
                Binder.restoreCallingIdentity(clearCallingIdentity);
                Log.i("EnterpriseLicenseService", "KLM result sent by intent to " + str3);
            }
            intent.setPackage(str2);
            long clearCallingIdentity2 = Binder.clearCallingIdentity();
            this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
            Binder.restoreCallingIdentity(clearCallingIdentity2);
            Log.i("EnterpriseLicenseService", "KLM result sent by intent to " + str2);
        }
    }

    public final String getMaskedText(String str) {
        if (TextUtils.isEmpty(str) || str.length() <= 24) {
            return str;
        }
        int length = str.length() - 24;
        String substring = str.substring(0, 12);
        StringBuilder sb = new StringBuilder();
        sb.append(substring);
        sb.append(new String(new char[length]).replace("\u0000", "*"));
        return sb.toString() + str.substring(str.length() - 12);
    }

    public final String getMaskedKlm(String str) {
        if (str == null) {
            return "";
        }
        String str2 = str.split("#")[0];
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        String[] split = str2.split(PackageManagerShellCommandDataLoader.STDIN_PATH);
        return split.length < 6 ? "" : getMaskedText(String.join(PackageManagerShellCommandDataLoader.STDIN_PATH, split[0], split[1], split[2], split[3], split[4], split[5]));
    }

    public final Bundle callLicenseAgent(String str, String str2, Bundle bundle) {
        Log.d("EnterpriseLicenseService", "callLicenseAgent() - " + str);
        try {
            return this.mContext.getContentResolver().call(LicenseAgentDbContract.DB_URI, str, str2, bundle);
        } catch (Exception e) {
            str.hashCode();
            char c = 65535;
            switch (str.hashCode()) {
                case -1857876932:
                    if (str.equals("ELMRegistrationInternal")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1329078944:
                    if (str.equals("KLMDeactivationInternal")) {
                        c = 1;
                        break;
                    }
                    break;
                case 1315742658:
                    if (str.equals("KLMRegistrationInternal")) {
                        c = 2;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    sendElmResult("fail", 301, 800, bundle.getString("com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"), bundle.getString("com.samsung.android.knox.intent.extra.LICENSE_DATA_REQUEST_PACKAGENAME"));
                    break;
                case 1:
                    sendKlmResult("fail", 301, 802, bundle.getString("com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"), bundle.getString("com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"));
                    break;
                case 2:
                    sendKlmResult("fail", 301, 800, bundle.getString("com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"), bundle.getString("com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"));
                    break;
            }
            Log.e("EnterpriseLicenseService", "Exception calling KLMSAgent: " + Log.getStackTraceString(e));
            return null;
        }
    }

    /* loaded from: classes2.dex */
    public class LicenseResultRecord implements IBinder.DeathRecipient {
        public ILicenseResultCallback callback;
        public final String licenseKey;
        public String pkgName;
        public Map recordMap;

        public LicenseResultRecord(String str, ILicenseResultCallback iLicenseResultCallback) {
            this.licenseKey = str;
            this.callback = iLicenseResultCallback;
        }

        public LicenseResultRecord(String str, String str2, ILicenseResultCallback iLicenseResultCallback, Map map) {
            this.pkgName = str;
            this.licenseKey = str2;
            this.callback = iLicenseResultCallback;
            this.recordMap = map;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Log.e("EnterpriseLicenseService", "binderDied() pkgName = " + this.pkgName);
            EnterpriseLicenseService.this.unregisterLicenseResultRecord(this.pkgName, this.recordMap);
        }
    }

    @Override // com.android.server.enterprise.license.IDeviceProfileObserver
    public void onProfileOwnerAdded(int i) {
        Log.d("EnterpriseLicenseService", "onProfileOwnerAdded " + i);
    }

    @Override // com.android.server.enterprise.license.IDeviceProfileObserver
    public void onProfileOwnerRemoved(int i) {
        Log.d("EnterpriseLicenseService", "onProfileOwnerRemoved " + i);
        revokeKnoxPermissionFromUninstalledPackages();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            new Thread(new Runnable() { // from class: com.android.server.enterprise.license.EnterpriseLicenseService$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    EnterpriseLicenseService.this.lambda$onProfileOwnerRemoved$4();
                }
            }).start();
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onProfileOwnerRemoved$4() {
        callLicenseAgent("ProfileOwnerRemoved", null, null);
    }

    @Override // com.android.server.enterprise.license.IDeviceProfileObserver
    public void onDeviceOwnerAdded(String str) {
        Log.d("EnterpriseLicenseService", "onDeviceOwnerAdded " + str);
    }

    @Override // com.android.server.enterprise.license.IDeviceProfileObserver
    public void onDeviceOwnerRemoved(String str) {
        Log.d("EnterpriseLicenseService", "onDeviceOwnerRemoved " + str);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            new Thread(new Runnable() { // from class: com.android.server.enterprise.license.EnterpriseLicenseService$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    EnterpriseLicenseService.this.lambda$onDeviceOwnerRemoved$5();
                }
            }).start();
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDeviceOwnerRemoved$5() {
        callLicenseAgent("DeviceOwnerRemoved", null, null);
    }

    public final String getPackageName(int i, int i2) {
        String nameForUid = this.mContext.getPackageManager().getNameForUid(i);
        return (nameForUid == null || !nameForUid.contains(XmlUtils.STRING_ARRAY_SEPARATOR)) ? nameForUid : getCallingPackageNameFromAppPid(i2, nameForUid);
    }

    public final String getCallingPackageNameFromAppPid(int i, String str) {
        ActivityManager activityManager = (ActivityManager) this.mContext.getSystemService("activity");
        String packageFromAppProcesses = activityManager != null ? activityManager.getPackageFromAppProcesses(i) : "";
        return TextUtils.isEmpty(packageFromAppProcesses) ? str : packageFromAppProcesses;
    }

    public final boolean isActionAllowedForAnotherPackage(String str, String[] strArr, int i) {
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (isRequestToCallerOrSharedUidApp(str, strArr)) {
            Log.d("EnterpriseLicenseService", "Request allowed from callerSharedPackages to targetPackageName");
            return true;
        }
        for (String str2 : strArr) {
            if (isCallerAllowedToPerformActionForAnotherPackage(str2, i)) {
                Log.d("EnterpriseLicenseService", "Request allowed by platform signature or license permission");
                return true;
            }
        }
        return false;
    }

    public final boolean isRequestToCallerOrSharedUidApp(String str, String[] strArr) {
        return Arrays.asList(strArr).contains(str);
    }

    public final boolean isCallerAllowedToPerformActionForAnotherPackage(String str, int i) {
        try {
            if (isSamsungSpecialPackage(str)) {
                return isPackagePlatformSigned(str, i);
            }
            if (isOfficialBuild()) {
                if (isRequestFromKSP(str, i)) {
                    return isKpuPlatformSigned(str, i);
                }
                return isPackagePlatformSigned(str, i) && isLicensePermissionGranted(str, i);
            }
            return isLicensePermissionGranted(str, i);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public final boolean isOfficialBuild() {
        return SystemProperties.getBoolean("ro.product_ship", true);
    }

    public final boolean isSamsungSpecialPackage(String str) {
        return this.samsungSpecialPackages.contains(str);
    }

    public final boolean isRequestFromKSP(String str, int i) {
        KpuHelper kpuHelper = KpuHelper.getInstance(this.mContext);
        return kpuHelper.isKpuPackage(str) || kpuHelper.isKpuPermissionGranted(str, i);
    }

    public final boolean isKpuPlatformSigned(String str, int i) {
        return KpuHelper.getInstance(this.mContext).isKpuPlatformSigned(str, i);
    }

    public final boolean isPackagePlatformSigned(String str, int i) {
        try {
            return AppGlobals.getPackageManager().checkSignatures("android", str, i) == 0;
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public final boolean isPackageUninstalled(String str) {
        return !isPackageInstalled(str);
    }

    public final void revokeKnoxPermissionFromUninstalledPackages() {
        enforcePermission();
        Log.d("EnterpriseLicenseService", "revokeKnoxPermissionFromUninstalledPackages");
        for (String str : getPackageNameFromAllActivations()) {
            if (isPackageUninstalled(str)) {
                Log.d("EnterpriseLicenseService", "revoking permissions from uninstalled package: " + str);
                resetLicenseByAdmin(str);
            }
        }
    }

    public final List getPackageNameFromAllActivations() {
        enforcePermission();
        Log.d("EnterpriseLicenseService", "getPackageNameFromAllActivations");
        ArrayList arrayList = new ArrayList();
        List values = mEdmStorageProvider.getValues("LICENSE", new String[]{"pkgName"}, (ContentValues) null);
        if (values != null && !values.isEmpty()) {
            Iterator it = values.iterator();
            while (it.hasNext()) {
                String asString = ((ContentValues) it.next()).getAsString("pkgName");
                Log.d("EnterpriseLicenseService", "packageName found " + asString);
                if (!TextUtils.isEmpty(asString)) {
                    arrayList.add(asString);
                }
            }
        }
        return arrayList;
    }

    public final boolean isLicensePermissionGranted(String str, int i) {
        try {
            return AppGlobals.getPackageManager().checkPermission("com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL", str, i) == 0;
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }
}
