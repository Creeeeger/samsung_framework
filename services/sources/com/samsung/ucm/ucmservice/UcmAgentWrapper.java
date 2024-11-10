package com.samsung.ucm.ucmservice;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.util.Log;
import com.samsung.android.knox.ucm.plugin.agent.IUcmAgentService;
import java.io.UnsupportedEncodingException;
import java.util.LinkedList;
import java.util.Queue;

/* loaded from: classes2.dex */
public class UcmAgentWrapper {
    public static final boolean DEBUG = "eng".equals(SystemProperties.get("ro.build.type"));
    public ComponentName componentName;
    public AgentInfo info;
    public IUcmAgentManagerDeleteDelegate mAgentDeleteDelegate;
    public Context mContext;
    public Handler mHandler;
    public IUcmAgentService mUcmAgentService;
    public long RESTART_TIMEOUT_MILLIS = 5000;
    public boolean mBound = false;
    public Queue mEventBoxQueue = new LinkedList();
    public final ServiceConnection mConnection = new ServiceConnection() { // from class: com.samsung.ucm.ucmservice.UcmAgentWrapper.2
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            String packageName;
            Log.d("UcmAgentWrapper", "onServiceConnected " + componentName);
            UcmAgentWrapper.this.mHandler.removeMessages(4);
            UcmAgentWrapper.this.mUcmAgentService = IUcmAgentService.Stub.asInterface(iBinder);
            ComponentName componentName2 = UcmAgentWrapper.this.componentName;
            if (componentName2 == null || (packageName = componentName2.getPackageName()) == null || packageName.isEmpty()) {
                return;
            }
            if ("com.samsung.ucs.agent.boot".equals(packageName)) {
                Log.d("UcmAgentWrapper", "notify binding done (bootagent refresh) : " + packageName);
                UcmAgentWrapper.this.mContext.sendBroadcastAsUser(new Intent("com.samsung.android.knox.intent.action.BOOTAGENT_REFRESH_DONE"), UserHandle.SYSTEM);
                return;
            }
            Log.d("UcmAgentWrapper", "notify binding done : " + packageName);
            Intent intent = new Intent("com.samsung.android.knox.intent.action.UCM_REFRESH_DONE");
            intent.putExtra("PackageName", packageName);
            UcmAgentWrapper.this.mContext.sendBroadcastAsUser(intent, UserHandle.SYSTEM);
            while (!UcmAgentWrapper.this.mEventBoxQueue.isEmpty()) {
                EventBox eventBox = (EventBox) UcmAgentWrapper.this.mEventBoxQueue.poll();
                if (eventBox != null) {
                    try {
                        UcmAgentWrapper.this.notifyChange(eventBox.eventId, eventBox.eventData);
                    } catch (RemoteException e) {
                        Log.e("UcmAgentWrapper", "Noti was not sent cause binding, send notifyChange : " + e);
                        e.printStackTrace();
                    }
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d("UcmAgentWrapper", "onServiceDisconnected " + componentName);
            UcmAgentWrapper.this.mUcmAgentService = null;
            if (UcmAgentWrapper.this.mBound) {
                UcmAgentWrapper.this.scheduleRestart();
            }
        }
    };

    /* loaded from: classes2.dex */
    public class EventBox {
        public Bundle eventData;
        public int eventId;

        public EventBox(int i, Bundle bundle) {
            this.eventId = i;
            this.eventData = bundle;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof UcmAgentWrapper) {
            return this.componentName.equals(((UcmAgentWrapper) obj).componentName);
        }
        return false;
    }

    public int hashCode() {
        return this.componentName.hashCode() * 31;
    }

    public UcmAgentWrapper(Context context, IUcmAgentManagerDeleteDelegate iUcmAgentManagerDeleteDelegate, ComponentName componentName) {
        this.mContext = context;
        this.mAgentDeleteDelegate = iUcmAgentManagerDeleteDelegate;
        this.componentName = componentName;
        try {
            createHandler();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void createHandler() {
        Log.d("UcmAgentWrapper", "createHandler. enter");
        HandlerThread handlerThread = new HandlerThread("UcmAgentWrapperHandlerThread");
        handlerThread.start();
        this.mHandler = new Handler(handlerThread.getLooper()) { // from class: com.samsung.ucm.ucmservice.UcmAgentWrapper.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 4) {
                    return;
                }
                UcmAgentWrapper.this.unbind();
                Log.d("UcmAgentWrapper", "MSG_RESTART_TIMEOUT");
                UcmAgentWrapper.this.mAgentDeleteDelegate.deleteAndRefreshAgents(UcmAgentWrapper.this);
            }
        };
    }

    public void initialize(ResolveInfo resolveInfo, UserHandle userHandle) {
        String str;
        ComponentName componentName = getComponentName(resolveInfo);
        Log.d("UcmAgentWrapper", "initialize " + componentName + " user: " + userHandle);
        this.info = getAgentInfo(resolveInfo, this.mContext);
        Intent intent = new Intent();
        intent.setComponent(componentName);
        AgentInfo agentInfo = this.info;
        if (agentInfo != null && (str = agentInfo.id) != null) {
            if (str.equals("com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot")) {
                this.RESTART_TIMEOUT_MILLIS = 120000L;
            }
            if (this.info.id.equals("com.samsung.ucs.agent.boot")) {
                this.RESTART_TIMEOUT_MILLIS = 120000L;
            }
        }
        scheduleRestart();
        Context context = this.mContext;
        if (context != null) {
            this.mBound = context.bindServiceAsUser(intent, this.mConnection, 1, userHandle);
        }
        if (this.mBound) {
            return;
        }
        Log.d("UcmAgentWrapper", "not able to bind " + componentName);
    }

    public void unbind() {
        if (!this.mBound) {
            Log.d("UcmAgentWrapper", "it is not bound anymore");
            return;
        }
        Log.d("UcmAgentWrapper", "unbind ");
        try {
            this.mContext.unbindService(this.mConnection);
        } catch (Exception e) {
            Log.e("UcmAgentWrapper", "unbind. Exception [" + e.toString() + "]");
        }
        this.mBound = false;
        this.mUcmAgentService = null;
    }

    public static ComponentName getComponentName(ResolveInfo resolveInfo) {
        if (resolveInfo == null || resolveInfo.serviceInfo == null) {
            return null;
        }
        ServiceInfo serviceInfo = resolveInfo.serviceInfo;
        return new ComponentName(serviceInfo.packageName, serviceInfo.name);
    }

    public final void scheduleRestart() {
        Log.d("UcmAgentWrapper", "scheduleRestart");
        this.mHandler.removeMessages(4);
        this.mHandler.sendEmptyMessageDelayed(4, this.RESTART_TIMEOUT_MILLIS);
    }

    public boolean isServiceBound() {
        return this.mUcmAgentService != null;
    }

    public int notifyChange(int i, Bundle bundle) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.notifyChange(i, bundle);
        }
        return -1;
    }

    public int triggerNotifyChange(int i, Bundle bundle) {
        this.mEventBoxQueue.offer(new EventBox(i, bundle));
        return 0;
    }

    public Bundle saw(Bundle bundle) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.saw(bundle);
        }
        return null;
    }

    public Bundle delete(String str, Bundle bundle) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.delete(str, bundle);
        }
        return null;
    }

    public Bundle generateDek() {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.generateDek();
        }
        return null;
    }

    public Bundle generateWrappedDek() {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.generateWrappedDek();
        }
        return null;
    }

    public Bundle getDek() {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.getDek();
        }
        return null;
    }

    public Bundle unwrapDek(byte[] bArr) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.unwrapDek(bArr);
        }
        return null;
    }

    public Bundle generateKeyguardPassword(int i, Bundle bundle) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.generateKeyguardPassword(i, bundle);
        }
        return null;
    }

    public Bundle getCertificateChain(String str, Bundle bundle) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.getCertificateChain(str, bundle);
        }
        return null;
    }

    public Bundle decrypt(String str, byte[] bArr, String str2, Bundle bundle) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.decrypt(str, bArr, str2, bundle);
        }
        return null;
    }

    public Bundle encrypt(String str, byte[] bArr, String str2, Bundle bundle) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.encrypt(str, bArr, str2, bundle);
        }
        return null;
    }

    public Bundle setCertificateChain(String str, byte[] bArr, Bundle bundle) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.setCertificateChain(str, bArr, bundle);
        }
        return null;
    }

    public Bundle importKeyPair(String str, byte[] bArr, byte[] bArr2, Bundle bundle) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.importKeyPair(str, bArr, bArr2, bundle);
        }
        return null;
    }

    public Bundle installCertificateIfSupported(String str, byte[] bArr, String str2, Bundle bundle) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.installCertificateIfSupported(str, bArr, str2, bundle);
        }
        return null;
    }

    public Bundle importKey(String str, Bundle bundle) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.importKey(str, bundle);
        }
        return null;
    }

    public Bundle generateKey(String str, String str2, int i, Bundle bundle) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.generateKey(str, str2, i, bundle);
        }
        return null;
    }

    public Bundle getKeyType(String str, Bundle bundle) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.getKeyType(str, bundle);
        }
        return null;
    }

    public Bundle generateKeyPair(String str, String str2, int i, Bundle bundle) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.generateKeyPair(str, str2, i, bundle);
        }
        return null;
    }

    public Bundle sign(String str, byte[] bArr, String str2, boolean z, Bundle bundle) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.sign(str, bArr, str2, z, bundle);
        }
        return null;
    }

    public Bundle mac(String str, byte[] bArr, String str2, Bundle bundle) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.mac(str, bArr, str2, bundle);
        }
        return null;
    }

    public Bundle generateSecureRandom(int i, byte[] bArr, Bundle bundle) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.generateSecureRandom(i, bArr, bundle);
        }
        return null;
    }

    public Bundle setCredentialStorageProperty(int i, int i2, Bundle bundle) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.setCredentialStorageProperty(i, i2, bundle);
        }
        return null;
    }

    public Bundle getCredentialStorageProperty(int i, int i2, Bundle bundle) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.getCredentialStorageProperty(i, i2, bundle);
        }
        return null;
    }

    public Bundle configureCredentialStoragePlugin(int i, Bundle bundle, int i2) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.configureCredentialStoragePlugin(i, bundle, i2);
        }
        return null;
    }

    public Bundle getCredentialStoragePluginConfiguration(int i) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.getCredentialStoragePluginConfiguration(i);
        }
        return null;
    }

    public Bundle verifyPin(int i, String str, Bundle bundle) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.verifyPin(i, str, bundle);
        }
        return null;
    }

    public Bundle verifyPuk(String str, String str2) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.verifyPuk(str, str2);
        }
        return null;
    }

    public Bundle changePin(String str, String str2) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.changePin(str, str2);
        }
        return null;
    }

    public Bundle changePinWithPassword(String str, String str2) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.changePinWithPassword(str, str2);
        }
        return null;
    }

    public Bundle initKeyguardPin(String str, Bundle bundle) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.initKeyguardPin(str, bundle);
        }
        return null;
    }

    public Bundle setKeyguardPinMaximumRetryCount(int i) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.setKeyguardPinMaximumRetryCount(i);
        }
        return null;
    }

    public Bundle setKeyguardPinMinimumLength(int i) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.setKeyguardPinMinimumLength(i);
        }
        return null;
    }

    public Bundle setKeyguardPinMaximumLength(int i) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.setKeyguardPinMaximumLength(i);
        }
        return null;
    }

    public Bundle getKeyguardPinMaximumRetryCount() {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.getKeyguardPinMaximumRetryCount();
        }
        return null;
    }

    public Bundle getKeyguardPinCurrentRetryCount() {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.getKeyguardPinCurrentRetryCount();
        }
        return null;
    }

    public Bundle getKeyguardPinMinimumLength() {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.getKeyguardPinMinimumLength();
        }
        return null;
    }

    public Bundle getKeyguardPinMaximumLength() {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.getKeyguardPinMaximumLength();
        }
        return null;
    }

    public Bundle setState(int i) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.setState(i);
        }
        return null;
    }

    public Bundle APDUCommand(byte[] bArr, Bundle bundle) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.APDUCommand(bArr, bundle);
        }
        return null;
    }

    public Bundle getInfo() {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.getInfo();
        }
        return null;
    }

    public Bundle getStatus() {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.getStatus();
        }
        return null;
    }

    public Bundle resetUser(int i) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.resetUser(i);
        }
        return null;
    }

    public Bundle resetUid(int i) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.resetUid(i);
        }
        return null;
    }

    public Bundle containsAlias(String str, int i, int i2) {
        IUcmAgentService iUcmAgentService = this.mUcmAgentService;
        if (iUcmAgentService != null) {
            return iUcmAgentService.containsAlias(str, i, i2);
        }
        return null;
    }

    public String getDetailErrorMessage(int i) {
        try {
            IUcmAgentService iUcmAgentService = this.mUcmAgentService;
            if (iUcmAgentService != null) {
                return iUcmAgentService.getDetailErrorMessage(i);
            }
            return null;
        } catch (AbstractMethodError unused) {
            Log.d("UcmAgentWrapper", "this plugin does not support getDetailErrorMessage API");
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:146:0x0334, code lost:
    
        if (r8 == null) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0336, code lost:
    
        r8.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0341, code lost:
    
        if (r8 == null) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x033c, code lost:
    
        if (r8 == null) goto L161;
     */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x035f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.samsung.ucm.ucmservice.UcmAgentWrapper.AgentInfo getAgentInfo(android.content.pm.ResolveInfo r11, android.content.Context r12) {
        /*
            Method dump skipped, instructions count: 895
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.ucm.ucmservice.UcmAgentWrapper.getAgentInfo(android.content.pm.ResolveInfo, android.content.Context):com.samsung.ucm.ucmservice.UcmAgentWrapper$AgentInfo");
    }

    public static byte[] hexStringToByteArray(String str) {
        if (DEBUG) {
            Log.d("UcmAgentWrapper", "hexStringToByteArray : " + str);
        }
        if (str == null || str.isEmpty()) {
            Log.d("UcmAgentWrapper", "Input value is empty");
            return null;
        }
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }

    /* loaded from: classes2.dex */
    public final class AgentInfo {
        public byte[] AID;
        public String agentId;
        public int authMaxCnt;
        public int authMode;
        public String configuratorList;
        public String enabledSCP;
        public int enabledWrap;
        public boolean enforceManagement;
        public int iconResId;
        public String id;
        public boolean isDetachable;
        public boolean isGeneratePasswordAvailable;
        public boolean isHardwareBacked;
        public boolean isManageable;
        public boolean isODESupport;
        public boolean isPUKSupported;
        public boolean isReadOnly;
        public boolean isSupportBiometricForUCM;
        public boolean isSupportChangePin;
        public boolean isSupportChangePinWithPassword;
        public String packageName;
        public int pinMaxLength;
        public int pinMinLength;
        public int pukMaxLength;
        public int pukMinLength;
        public boolean reqUserVerification;
        public int serviceUid;
        public ComponentName settingsComponentName;
        public String storageType;
        public String summary;
        public boolean supportPinConfiguration;
        public boolean supportSign;
        public String title;
        public String vendorId;

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("system unique id:" + this.id);
            stringBuffer.append(", agentId:" + this.agentId);
            stringBuffer.append(", summary:" + this.summary);
            stringBuffer.append(", title:" + this.title);
            stringBuffer.append(", vendorId:" + this.vendorId);
            stringBuffer.append(", isDetachable:" + this.isDetachable);
            stringBuffer.append(", reqUserVerification:" + this.reqUserVerification);
            stringBuffer.append(", iconResId:" + this.iconResId);
            stringBuffer.append(", isHardwareBacked:" + this.isHardwareBacked);
            stringBuffer.append(", pinMinLength:" + this.pinMinLength);
            stringBuffer.append(", pinMaxLength:" + this.pinMaxLength);
            stringBuffer.append(", authMaxCnt:" + this.authMaxCnt);
            stringBuffer.append(", authMode:" + this.authMode);
            stringBuffer.append(", isGeneratePasswordAvailable:" + this.isGeneratePasswordAvailable);
            stringBuffer.append(", isODESupport:" + this.isODESupport);
            stringBuffer.append(", storageType:" + this.storageType);
            stringBuffer.append(", enabledSCP:" + this.enabledSCP);
            stringBuffer.append(", enabledWrap:" + this.enabledWrap);
            if (this.AID != null) {
                try {
                    stringBuffer.append(", AID:" + new String(this.AID, "UTF-8"));
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
            } else {
                stringBuffer.append(", AID: null");
            }
            stringBuffer.append(", isManageable:" + this.isManageable);
            stringBuffer.append(", enforceManagement:" + this.enforceManagement);
            stringBuffer.append(", configuratorList:" + this.configuratorList);
            stringBuffer.append(", serviceUid:" + this.serviceUid);
            stringBuffer.append(", packageName:" + this.packageName);
            stringBuffer.append(", isPUKSupported:" + this.isPUKSupported);
            stringBuffer.append(", supportSign:" + this.supportSign);
            stringBuffer.append(", isSupportChangePin:" + this.isSupportChangePin);
            stringBuffer.append(", isSupportChangePinWithPassword:" + this.isSupportChangePinWithPassword);
            stringBuffer.append(", supportPinConfiguration:" + this.supportPinConfiguration);
            stringBuffer.append(", isSupportBiometricForUCM:" + this.isSupportBiometricForUCM);
            return stringBuffer.toString();
        }
    }
}
