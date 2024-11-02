package com.android.keyguard;

import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.TelephonyManager;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.android.internal.widget.LockPatternUtils;
import com.android.keyguard.EmergencyButtonController;
import com.android.keyguard.KeyguardMessageAreaController;
import com.android.keyguard.KeyguardSecurityModel;
import com.android.systemui.Dependency;
import com.android.systemui.R;
import com.android.systemui.broadcast.BroadcastDispatcher;
import com.android.systemui.flags.FeatureFlags;
import com.android.systemui.keyguard.KeyguardUnlockInfo;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.sec.ims.settings.ImsProfile;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Objects;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class KeyguardCarrierViewController extends KeyguardInputViewController {
    public AnonymousClass3 mBroadcastReceiver;
    public final Context mContext;
    public final AnonymousClass4 mEmergencyButtonCallback;
    public final EmergencyButtonController mEmergencyButtonController;
    public boolean mIsShowingOwnerCallButton;
    public final KeyguardUpdateMonitorCallback mKeyguardUpdateMonitorCallback;
    public final LockPatternUtils mLockPatternUtils;
    public final Button mOwnerCallButton;
    public final TextView mOwnerInfo;
    public String mOwnerMessage;
    public int mPhoneState;
    public final AnonymousClass1 mPhoneStateListener;
    public final TelephonyManager mTelephonyManager;
    public final Button mUnlockButton;

    /* JADX WARN: Type inference failed for: r8v2, types: [com.android.keyguard.KeyguardCarrierViewController$1] */
    /* JADX WARN: Type inference failed for: r8v4, types: [com.android.keyguard.KeyguardCarrierViewController$4] */
    public KeyguardCarrierViewController(KeyguardCarrierView keyguardCarrierView, KeyguardSecurityModel.SecurityMode securityMode, LockPatternUtils lockPatternUtils, KeyguardSecurityCallback keyguardSecurityCallback, EmergencyButtonController emergencyButtonController, TelephonyManager telephonyManager, KeyguardMessageAreaController.Factory factory, FeatureFlags featureFlags) {
        super(keyguardCarrierView, securityMode, keyguardSecurityCallback, emergencyButtonController, factory, featureFlags);
        this.mPhoneState = 0;
        this.mIsShowingOwnerCallButton = false;
        this.mPhoneStateListener = new PhoneStateListener() { // from class: com.android.keyguard.KeyguardCarrierViewController.1
            @Override // android.telephony.PhoneStateListener
            public final void onServiceStateChanged(ServiceState serviceState) {
                KeyguardCarrierViewController.this.setVisibleOwnerCallButton(false);
            }
        };
        this.mKeyguardUpdateMonitorCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.keyguard.KeyguardCarrierViewController.2
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onPhoneStateChanged(int i) {
                Button button;
                KeyguardCarrierViewController keyguardCarrierViewController = KeyguardCarrierViewController.this;
                keyguardCarrierViewController.mPhoneState = i;
                Button button2 = keyguardCarrierViewController.mOwnerCallButton;
                if (button2 != null && (button = keyguardCarrierViewController.mUnlockButton) != null) {
                    if (i == 2) {
                        button2.setVisibility(8);
                        button.setVisibility(8);
                    } else {
                        keyguardCarrierViewController.setVisibleOwnerCallButton(false);
                        button.setVisibility(0);
                    }
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onSimStateChanged(int i, int i2, int i3) {
                boolean z;
                KeyguardCarrierViewController keyguardCarrierViewController = KeyguardCarrierViewController.this;
                if (i3 != 1) {
                    if (i3 == 5) {
                        keyguardCarrierViewController.setVisibleOwnerCallButton(false);
                        return;
                    }
                    return;
                }
                keyguardCarrierViewController.getClass();
                int phoneCount = TelephonyManager.getDefault().getPhoneCount();
                String str = SystemProperties.get("gsm.sim.state", "");
                if (str != null) {
                    String[] split = str.split(",");
                    Log.d("KeyguardCarrierView", "isSimStateAbsentAll() : simSlotCount = " + phoneCount + ", simStates = " + str);
                    z = true;
                    for (int i4 = 0; i4 < phoneCount && split.length > i4; i4++) {
                        if (!split[i4].equalsIgnoreCase("ABSENT")) {
                            z = false;
                        }
                    }
                } else {
                    z = true;
                }
                if (z) {
                    keyguardCarrierViewController.setVisibleOwnerCallButton(true);
                } else {
                    keyguardCarrierViewController.setVisibleOwnerCallButton(false);
                }
            }
        };
        this.mEmergencyButtonCallback = new EmergencyButtonController.EmergencyButtonCallback() { // from class: com.android.keyguard.KeyguardCarrierViewController.4
            @Override // com.android.keyguard.EmergencyButtonController.EmergencyButtonCallback
            public final void onEmergencyButtonClickedWhenInCall() {
                KeyguardCarrierViewController.this.getKeyguardSecurityCallback().reset();
            }
        };
        this.mContext = getContext();
        this.mLockPatternUtils = lockPatternUtils;
        this.mTelephonyManager = telephonyManager;
        this.mEmergencyButtonController = emergencyButtonController;
        this.mOwnerInfo = (TextView) ((KeyguardCarrierView) this.mView).findViewById(R.id.carrier_owner_info);
        this.mOwnerCallButton = (Button) ((KeyguardCarrierView) this.mView).findViewById(R.id.carrier_owner_call_button);
        this.mUnlockButton = (Button) ((KeyguardCarrierView) this.mView).findViewById(R.id.carrier_unlock_button);
    }

    public static String decryptCarrierLockPlusMsg(String str) {
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, getKey(), new IvParameterSpec("i_love_office_tg".getBytes("UTF-8")));
            return new String(cipher.doFinal(Base64.decode(str, 0)), StandardCharsets.UTF_8);
        } catch (InvalidAlgorithmParameterException e) {
            Log.i("KeyguardCarrierView", "sec_encrypt.decrypt() InvalidAlgorithmParameterException = " + e.toString());
            return null;
        } catch (InvalidKeyException e2) {
            Log.i("KeyguardCarrierView", "sec_encrypt.decrypt() InvalidKeyException = " + e2.toString());
            return null;
        } catch (NoSuchAlgorithmException e3) {
            Log.i("KeyguardCarrierView", "sec_encrypt.decrypt() NoSuchAlgorithmException = " + e3.toString());
            return null;
        } catch (NoSuchPaddingException e4) {
            Log.i("KeyguardCarrierView", "sec_encrypt.decrypt() NoSuchPaddingException = " + e4.toString());
            return null;
        } catch (Exception e5) {
            Log.i("KeyguardCarrierView", "sec_encrypt.decrypt() Exception = " + e5.toString());
            return null;
        }
    }

    public static SecretKeySpec getKey() {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.update("SKT : Find lost phone plus !!!".getBytes("UTF-8"));
        return new SecretKeySpec(messageDigest.digest(), "AES");
    }

    @Override // com.android.keyguard.KeyguardInputViewController
    public final int getInitialMessageResId() {
        return 0;
    }

    @Override // com.android.keyguard.KeyguardSecurityView
    public final boolean needsInput() {
        return false;
    }

    @Override // com.android.keyguard.KeyguardInputViewController
    public final void onPause() {
        this.mPaused = true;
        if (((KeyguardCarrierView) this.mView).getKeepScreenOn()) {
            ((KeyguardCarrierView) this.mView).setKeepScreenOn(false);
        }
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [com.android.keyguard.KeyguardCarrierViewController$3] */
    @Override // com.android.keyguard.KeyguardInputViewController, com.android.systemui.util.ViewController
    public final void onViewAttached() {
        String str;
        super.onViewAttached();
        this.mEmergencyButtonController.mEmergencyButtonCallback = this.mEmergencyButtonCallback;
        final KeyguardSecurityCallback keyguardSecurityCallback = getKeyguardSecurityCallback();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.sec.android.CarrierLock.DISABLED");
        intentFilter.addAction("com.sec.android.FindingLostPhonePlus.SUBSCRIBE");
        intentFilter.addAction("android.intent.action.SIM_STATE_CHANGED");
        this.mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.keyguard.KeyguardCarrierViewController.3
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                Log.d("KeyguardCarrierView", "onReceive: " + action);
                Objects.requireNonNull(action);
                char c = 65535;
                switch (action.hashCode()) {
                    case -1956545200:
                        if (action.equals("com.sec.android.CarrierLock.DISABLED")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -688543328:
                        if (action.equals("com.sec.android.FindingLostPhonePlus.SUBSCRIBE")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -229777127:
                        if (action.equals("android.intent.action.SIM_STATE_CHANGED")) {
                            c = 2;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        KeyguardUnlockInfo.setUnlockTriggerByRemoteLock(1);
                        keyguardSecurityCallback.dismiss(KeyguardUpdateMonitor.getCurrentUser(), KeyguardCarrierViewController.this.mSecurityMode, true);
                        return;
                    case 1:
                        KeyguardCarrierViewController.this.setCarrierLockPlusInfo();
                        return;
                    case 2:
                        if ("LOADED".equals(intent.getStringExtra(ImsProfile.SERVICE_SS))) {
                            KeyguardCarrierViewController keyguardCarrierViewController = KeyguardCarrierViewController.this;
                            keyguardCarrierViewController.mTelephonyManager.listen(keyguardCarrierViewController.mPhoneStateListener, 0);
                            KeyguardCarrierViewController keyguardCarrierViewController2 = KeyguardCarrierViewController.this;
                            keyguardCarrierViewController2.mTelephonyManager.listen(keyguardCarrierViewController2.mPhoneStateListener, 1);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        };
        ((BroadcastDispatcher) Dependency.get(BroadcastDispatcher.class)).registerReceiver(intentFilter, this.mBroadcastReceiver);
        ((KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class)).registerCallback(this.mKeyguardUpdateMonitorCallback);
        final int i = 1;
        this.mTelephonyManager.listen(this.mPhoneStateListener, 1);
        setCarrierLockPlusInfo();
        TextView textView = this.mOwnerInfo;
        if (textView != null && (str = this.mOwnerMessage) != null) {
            textView.setText(str);
        }
        Button button = this.mOwnerCallButton;
        if (button != null) {
            final int i2 = 0;
            button.setOnClickListener(new View.OnClickListener(this) { // from class: com.android.keyguard.KeyguardCarrierViewController$$ExternalSyntheticLambda1
                public final /* synthetic */ KeyguardCarrierViewController f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i2) {
                        case 0:
                            KeyguardCarrierViewController keyguardCarrierViewController = this.f$0;
                            KeyguardSecurityCallback keyguardSecurityCallback2 = keyguardSecurityCallback;
                            keyguardCarrierViewController.getClass();
                            Intent intent = new Intent("android.intent.action.CALL_PRIVILEGED", Uri.fromParts("tel", "0000", null));
                            intent.setFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
                            try {
                                Log.d("KeyguardCarrierView", "click call button");
                                keyguardCarrierViewController.mContext.startActivityAsUser(intent, UserHandle.CURRENT);
                                keyguardSecurityCallback2.userActivity();
                                return;
                            } catch (ActivityNotFoundException e) {
                                Log.w("KeyguardCarrierView", "Can't find the component " + e);
                                return;
                            }
                        default:
                            KeyguardCarrierViewController keyguardCarrierViewController2 = this.f$0;
                            KeyguardSecurityCallback keyguardSecurityCallback3 = keyguardSecurityCallback;
                            if (keyguardCarrierViewController2.mLockPatternUtils.isCarrierPasswordSaved(KeyguardUpdateMonitor.getCurrentUser())) {
                                keyguardSecurityCallback3.showBackupSecurity(KeyguardSecurityModel.SecurityMode.SKTCarrierPassword);
                                return;
                            }
                            return;
                    }
                }
            });
            setVisibleOwnerCallButton(false);
        }
        Button button2 = this.mUnlockButton;
        if (button2 != null) {
            button2.setOnClickListener(new View.OnClickListener(this) { // from class: com.android.keyguard.KeyguardCarrierViewController$$ExternalSyntheticLambda1
                public final /* synthetic */ KeyguardCarrierViewController f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i) {
                        case 0:
                            KeyguardCarrierViewController keyguardCarrierViewController = this.f$0;
                            KeyguardSecurityCallback keyguardSecurityCallback2 = keyguardSecurityCallback;
                            keyguardCarrierViewController.getClass();
                            Intent intent = new Intent("android.intent.action.CALL_PRIVILEGED", Uri.fromParts("tel", "0000", null));
                            intent.setFlags(QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE);
                            try {
                                Log.d("KeyguardCarrierView", "click call button");
                                keyguardCarrierViewController.mContext.startActivityAsUser(intent, UserHandle.CURRENT);
                                keyguardSecurityCallback2.userActivity();
                                return;
                            } catch (ActivityNotFoundException e) {
                                Log.w("KeyguardCarrierView", "Can't find the component " + e);
                                return;
                            }
                        default:
                            KeyguardCarrierViewController keyguardCarrierViewController2 = this.f$0;
                            KeyguardSecurityCallback keyguardSecurityCallback3 = keyguardSecurityCallback;
                            if (keyguardCarrierViewController2.mLockPatternUtils.isCarrierPasswordSaved(KeyguardUpdateMonitor.getCurrentUser())) {
                                keyguardSecurityCallback3.showBackupSecurity(KeyguardSecurityModel.SecurityMode.SKTCarrierPassword);
                                return;
                            }
                            return;
                    }
                }
            });
        }
    }

    @Override // com.android.keyguard.KeyguardInputViewController, com.android.systemui.util.ViewController
    public final void onViewDetached() {
        super.onViewDetached();
        this.mEmergencyButtonController.mEmergencyButtonCallback = null;
        this.mTelephonyManager.listen(this.mPhoneStateListener, 0);
        ((BroadcastDispatcher) Dependency.get(BroadcastDispatcher.class)).unregisterReceiver(this.mBroadcastReceiver);
        ((KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class)).removeCallback(this.mKeyguardUpdateMonitorCallback);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x007b A[Catch: IOException -> 0x00c1, TryCatch #0 {IOException -> 0x00c1, blocks: (B:14:0x0070, B:16:0x007b, B:17:0x0094, B:19:0x009a, B:21:0x00b0, B:22:0x00b5, B:25:0x00ba, B:27:0x0089), top: B:13:0x0070 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009a A[Catch: IOException -> 0x00c1, TryCatch #0 {IOException -> 0x00c1, blocks: (B:14:0x0070, B:16:0x007b, B:17:0x0094, B:19:0x009a, B:21:0x00b0, B:22:0x00b5, B:25:0x00ba, B:27:0x0089), top: B:13:0x0070 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ba A[Catch: IOException -> 0x00c1, TRY_LEAVE, TryCatch #0 {IOException -> 0x00c1, blocks: (B:14:0x0070, B:16:0x007b, B:17:0x0094, B:19:0x009a, B:21:0x00b0, B:22:0x00b5, B:25:0x00ba, B:27:0x0089), top: B:13:0x0070 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0089 A[Catch: IOException -> 0x00c1, TryCatch #0 {IOException -> 0x00c1, blocks: (B:14:0x0070, B:16:0x007b, B:17:0x0094, B:19:0x009a, B:21:0x00b0, B:22:0x00b5, B:25:0x00ba, B:27:0x0089), top: B:13:0x0070 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setCarrierLockPlusInfo() {
        /*
            r10 = this;
            java.lang.String r0 = "/efs/sec_efs/sktdm_mem/enclawlockmsg.txt"
            java.lang.String r1 = ":"
            java.lang.String r2 = "KeyguardCarrierView"
            r3 = 0
            r4 = 256(0x100, float:3.59E-43)
            r5 = 0
            java.io.File r6 = new java.io.File     // Catch: java.io.IOException -> L5c
            r6.<init>(r0)     // Catch: java.io.IOException -> L5c
            boolean r6 = r6.exists()     // Catch: java.io.IOException -> L5c
            if (r6 == 0) goto L25
            java.io.File r6 = new java.io.File     // Catch: java.io.IOException -> L5c
            java.lang.String r7 = "/efs/sec_efs/sktdm_mem/encwlawp.txt"
            r6.<init>(r7)     // Catch: java.io.IOException -> L5c
            java.lang.String r6 = android.os.FileUtils.readTextFile(r6, r4, r5)     // Catch: java.io.IOException -> L5c
            java.lang.String r6 = decryptCarrierLockPlusMsg(r6)     // Catch: java.io.IOException -> L5c
            goto L30
        L25:
            java.io.File r6 = new java.io.File     // Catch: java.io.IOException -> L5c
            java.lang.String r7 = "/efs/sec_efs/sktdm_mem/wlawp.txt"
            r6.<init>(r7)     // Catch: java.io.IOException -> L5c
            java.lang.String r6 = android.os.FileUtils.readTextFile(r6, r4, r5)     // Catch: java.io.IOException -> L5c
        L30:
            boolean r7 = android.text.TextUtils.isEmpty(r6)     // Catch: java.io.IOException -> L5c
            if (r7 != 0) goto L56
            java.lang.String[] r6 = r6.split(r1)     // Catch: java.io.IOException -> L5c
            r6 = r6[r3]     // Catch: java.io.IOException -> L5c
            if (r6 != 0) goto L3f
            goto L65
        L3f:
            int r7 = r6.length()     // Catch: java.io.IOException -> L5c
            byte[] r7 = new byte[r7]     // Catch: java.io.IOException -> L5c
            r8 = r3
        L46:
            int r9 = r6.length()     // Catch: java.io.IOException -> L5c
            if (r8 >= r9) goto L66
            char r9 = r6.charAt(r8)     // Catch: java.io.IOException -> L5c
            byte r9 = (byte) r9     // Catch: java.io.IOException -> L5c
            r7[r8] = r9     // Catch: java.io.IOException -> L5c
            int r8 = r8 + 1
            goto L46
        L56:
            java.lang.String r6 = "getCarrierLockPlusPassword(), password is null"
            android.util.Log.d(r2, r6)     // Catch: java.io.IOException -> L5c
            goto L65
        L5c:
            r6 = move-exception
            java.lang.String r7 = "getCarrierLockPlusPassword(), IOException!!"
            android.util.Log.d(r2, r7)
            r6.printStackTrace()
        L65:
            r7 = r5
        L66:
            int r6 = com.android.keyguard.KeyguardUpdateMonitor.getCurrentUser()
            com.android.internal.widget.LockPatternUtils r8 = r10.mLockPatternUtils
            r9 = 1
            r8.saveRemoteLockPassword(r9, r7, r6)
            java.io.File r6 = new java.io.File     // Catch: java.io.IOException -> Lc1
            r6.<init>(r0)     // Catch: java.io.IOException -> Lc1
            boolean r6 = r6.exists()     // Catch: java.io.IOException -> Lc1
            if (r6 == 0) goto L89
            java.io.File r6 = new java.io.File     // Catch: java.io.IOException -> Lc1
            r6.<init>(r0)     // Catch: java.io.IOException -> Lc1
            java.lang.String r0 = android.os.FileUtils.readTextFile(r6, r4, r5)     // Catch: java.io.IOException -> Lc1
            java.lang.String r0 = decryptCarrierLockPlusMsg(r0)     // Catch: java.io.IOException -> Lc1
            goto L94
        L89:
            java.io.File r0 = new java.io.File     // Catch: java.io.IOException -> Lc1
            java.lang.String r6 = "/efs/sec_efs/sktdm_mem/lawlockmsg.txt"
            r0.<init>(r6)     // Catch: java.io.IOException -> Lc1
            java.lang.String r0 = android.os.FileUtils.readTextFile(r0, r4, r5)     // Catch: java.io.IOException -> Lc1
        L94:
            boolean r4 = android.text.TextUtils.isEmpty(r0)     // Catch: java.io.IOException -> Lc1
            if (r4 != 0) goto Lba
            java.lang.String[] r0 = r0.split(r1)     // Catch: java.io.IOException -> Lc1
            r1 = r0[r9]     // Catch: java.io.IOException -> Lc1
            java.lang.String r4 = "1"
            boolean r1 = r1.equals(r4)     // Catch: java.io.IOException -> Lc1
            r10.mIsShowingOwnerCallButton = r1     // Catch: java.io.IOException -> Lc1
            r10.setVisibleOwnerCallButton(r3)     // Catch: java.io.IOException -> Lc1
            android.widget.TextView r1 = r10.mOwnerInfo     // Catch: java.io.IOException -> Lc1
            r3 = 3
            if (r1 == 0) goto Lb5
            r4 = r0[r3]     // Catch: java.io.IOException -> Lc1
            r1.setText(r4)     // Catch: java.io.IOException -> Lc1
        Lb5:
            r0 = r0[r3]     // Catch: java.io.IOException -> Lc1
            r10.mOwnerMessage = r0     // Catch: java.io.IOException -> Lc1
            goto Lcb
        Lba:
            java.lang.String r10 = "updateCarrierLockPlusMessage(), message is null"
            android.util.Log.d(r2, r10)     // Catch: java.io.IOException -> Lc1
            goto Lcb
        Lc1:
            r10 = move-exception
            java.lang.String r0 = "updateCarrierLockPlusMessage(), IOException"
            android.util.Log.e(r2, r0)
            r10.printStackTrace()
        Lcb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.keyguard.KeyguardCarrierViewController.setCarrierLockPlusInfo():void");
    }

    public final void setVisibleOwnerCallButton(boolean z) {
        boolean z2;
        ServiceState serviceState;
        Button button = this.mOwnerCallButton;
        if (button != null) {
            if (z) {
                button.setVisibility(8);
                return;
            }
            int phoneCount = TelephonyManager.getDefault().getPhoneCount();
            String str = SystemProperties.get("gsm.sim.state", "");
            Log.d("KeyguardCarrierView", "isSimStateReadyOrLoaded() : simSlotCount = " + phoneCount + ", simStates = " + str);
            if (str != null) {
                String[] split = str.split(",");
                for (int i = 0; i < phoneCount && split.length > i; i++) {
                    String str2 = split[i];
                    z2 = true;
                    if (str2.equalsIgnoreCase("READY") || str2.equalsIgnoreCase("LOADED")) {
                        break;
                    }
                }
            }
            z2 = false;
            TelephonyManager telephonyManager = this.mTelephonyManager;
            if (telephonyManager != null) {
                serviceState = telephonyManager.getServiceState();
            } else {
                serviceState = null;
            }
            if (serviceState != null) {
                StringBuilder sb = new StringBuilder("setVisibleOwnerCallButton state = ");
                sb.append(serviceState.getState());
                sb.append(", CallButton =");
                KeyguardCarrierViewController$$ExternalSyntheticOutline0.m(sb, this.mIsShowingOwnerCallButton, ", isSimStateReadyOrLoaded =", z2, "KeyguardCarrierView");
            }
            if (serviceState != null && serviceState.getState() == 0 && z2 && this.mIsShowingOwnerCallButton && this.mPhoneState != 2) {
                button.setVisibility(0);
            } else {
                button.setVisibility(8);
            }
        }
    }
}
