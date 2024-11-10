package com.android.server.biometrics;

import android.app.admin.DevicePolicyManager;
import android.app.trust.ITrustManager;
import android.content.Context;
import android.hardware.SensorPrivacyManager;
import android.hardware.biometrics.PromptInfo;
import android.net.resolv.aidl.IDnsResolverUnsolicitedEventListener;
import android.util.Pair;
import android.util.Slog;
import com.android.internal.util.jobs.XmlUtils;
import com.android.server.biometrics.BiometricService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class PreAuthInfo {
    public final boolean confirmationRequested;
    public final Context context;
    public final boolean credentialAvailable;
    public final boolean credentialRequested;
    public final List eligibleSensors;
    public final boolean ignoreEnrollmentState;
    public final List ineligibleSensors;
    public final boolean mBiometricRequested;
    public final int mBiometricStrengthRequested;
    public final int userId;

    public PreAuthInfo(boolean z, int i, boolean z2, List list, List list2, boolean z3, boolean z4, boolean z5, int i2, Context context) {
        this.mBiometricRequested = z;
        this.mBiometricStrengthRequested = i;
        this.credentialRequested = z2;
        this.eligibleSensors = list;
        this.ineligibleSensors = list2;
        this.credentialAvailable = z3;
        this.confirmationRequested = z4;
        this.ignoreEnrollmentState = z5;
        this.userId = i2;
        this.context = context;
    }

    public static PreAuthInfo create(ITrustManager iTrustManager, DevicePolicyManager devicePolicyManager, BiometricService.SettingObserver settingObserver, List list, int i, PromptInfo promptInfo, String str, boolean z, Context context) {
        int sepBiometricPromptTypeToBiometricAuthenticatorModality = Utils.sepBiometricPromptTypeToBiometricAuthenticatorModality(promptInfo.semGetBiometricType());
        if (sepBiometricPromptTypeToBiometricAuthenticatorModality != 0) {
            promptInfo.setAuthenticators(promptInfo.getAuthenticators() | IDnsResolverUnsolicitedEventListener.DNS_HEALTH_RESULT_TIMEOUT);
        }
        boolean isConfirmationRequested = promptInfo.isConfirmationRequested();
        boolean isBiometricRequested = Utils.isBiometricRequested(promptInfo);
        int publicBiometricStrength = Utils.getPublicBiometricStrength(promptInfo);
        boolean isCredentialRequested = Utils.isCredentialRequested(promptInfo);
        boolean isDeviceSecure = iTrustManager.isDeviceSecure(i, context.getAssociatedDisplayId());
        Slog.d("BiometricService/PreAuthInfo", "create: " + isConfirmationRequested + ", " + isBiometricRequested + ", " + isCredentialRequested + ", " + Integer.toHexString(publicBiometricStrength) + ", " + sepBiometricPromptTypeToBiometricAuthenticatorModality);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (isBiometricRequested) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                BiometricSensor biometricSensor = (BiometricSensor) it.next();
                if (sepBiometricPromptTypeToBiometricAuthenticatorModality == 0 || (biometricSensor.modality & sepBiometricPromptTypeToBiometricAuthenticatorModality) != 0) {
                    int i2 = sepBiometricPromptTypeToBiometricAuthenticatorModality;
                    ArrayList arrayList3 = arrayList2;
                    int statusForBiometricAuthenticator = getStatusForBiometricAuthenticator(devicePolicyManager, settingObserver, biometricSensor, i, str, z, publicBiometricStrength, promptInfo.getAllowedSensorIds(), promptInfo.isIgnoreEnrollmentState(), context);
                    Slog.d("BiometricService/PreAuthInfo", "Package: " + str + " Sensor ID: " + biometricSensor.id + " Modality: " + biometricSensor.modality + " Status: " + statusForBiometricAuthenticator);
                    if (statusForBiometricAuthenticator == 1 || statusForBiometricAuthenticator == 12) {
                        arrayList.add(biometricSensor);
                    } else {
                        arrayList3.add(new Pair(biometricSensor, Integer.valueOf(statusForBiometricAuthenticator)));
                    }
                    arrayList2 = arrayList3;
                    sepBiometricPromptTypeToBiometricAuthenticatorModality = i2;
                }
            }
        }
        return new PreAuthInfo(isBiometricRequested, publicBiometricStrength, isCredentialRequested, arrayList, arrayList2, isDeviceSecure, isConfirmationRequested, promptInfo.isIgnoreEnrollmentState(), i, context);
    }

    public static int getStatusForBiometricAuthenticator(DevicePolicyManager devicePolicyManager, BiometricService.SettingObserver settingObserver, BiometricSensor biometricSensor, int i, String str, boolean z, int i2, List list, boolean z2, Context context) {
        if (!list.isEmpty() && !list.contains(Integer.valueOf(biometricSensor.id))) {
            return 2;
        }
        boolean isAtLeastStrength = Utils.isAtLeastStrength(biometricSensor.oemStrength, i2);
        boolean isAtLeastStrength2 = Utils.isAtLeastStrength(biometricSensor.getCurrentStrength(), i2);
        if (isAtLeastStrength && !isAtLeastStrength2) {
            return 5;
        }
        if (!isAtLeastStrength) {
            return 4;
        }
        int i3 = 6;
        if (!biometricSensor.impl.isHardwareDetected(str)) {
            return 6;
        }
        if (!biometricSensor.impl.hasEnrolledTemplates(i, str) && !z2) {
            return 7;
        }
        SensorPrivacyManager sensorPrivacyManager = (SensorPrivacyManager) context.getSystemService(SensorPrivacyManager.class);
        if (sensorPrivacyManager != null && biometricSensor.modality == 8 && sensorPrivacyManager.isSensorPrivacyEnabled(2, i)) {
            return 12;
        }
        int lockoutModeForUser = biometricSensor.impl.getLockoutModeForUser(i);
        i3 = 1;
        if (lockoutModeForUser == 1) {
            return 10;
        }
        if (lockoutModeForUser == 2) {
            return 11;
        }
        if (!isEnabledForApp(settingObserver, biometricSensor.modality, i)) {
            return 8;
        }
        if (z && isBiometricDisabledByDevicePolicy(devicePolicyManager, biometricSensor.modality, i)) {
            return 3;
        }
        return i3;
    }

    public static boolean isEnabledForApp(BiometricService.SettingObserver settingObserver, int i, int i2) {
        return settingObserver.getEnabledForApps(i2);
    }

    public static boolean isBiometricDisabledByDevicePolicy(DevicePolicyManager devicePolicyManager, int i, int i2) {
        int mapModalityToDevicePolicyType = mapModalityToDevicePolicyType(i);
        if (mapModalityToDevicePolicyType == 0) {
            throw new IllegalStateException("Modality unknown to devicePolicyManager: " + i);
        }
        boolean z = (devicePolicyManager.getKeyguardDisabledFeatures(null, i2) & mapModalityToDevicePolicyType) != 0;
        Slog.w("BiometricService/PreAuthInfo", "isBiometricDisabledByDevicePolicy(" + i + "," + i2 + ")=" + z);
        return z;
    }

    public static int mapModalityToDevicePolicyType(int i) {
        if (i == 2) {
            return 32;
        }
        if (i == 4) {
            return 256;
        }
        if (i == 8) {
            return 128;
        }
        Slog.e("BiometricService/PreAuthInfo", "Error modality=" + i);
        return 0;
    }

    public final Pair calculateErrorByPriority() {
        for (Pair pair : this.ineligibleSensors) {
            if (((Integer) pair.second).intValue() == 7) {
                return pair;
            }
        }
        return (Pair) this.ineligibleSensors.get(0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0073, code lost:
    
        if (r0 != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x009a, code lost:
    
        r1 = 12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0098, code lost:
    
        if (r0 != false) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.util.Pair getInternalStatus() {
        /*
            Method dump skipped, instructions count: 244
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.biometrics.PreAuthInfo.getInternalStatus():android.util.Pair");
    }

    public int getCanAuthenticateResult() {
        return Utils.biometricConstantsToBiometricManager(Utils.authenticatorStatusToBiometricConstant(((Integer) getInternalStatus().second).intValue()));
    }

    public Pair getPreAuthenticateStatus() {
        Pair internalStatus = getInternalStatus();
        int authenticatorStatusToBiometricConstant = Utils.authenticatorStatusToBiometricConstant(((Integer) internalStatus.second).intValue());
        int intValue = ((Integer) internalStatus.first).intValue();
        switch (((Integer) internalStatus.second).intValue()) {
            case 1:
            case 2:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
            case 12:
                break;
            case 3:
            case 4:
            case 8:
            default:
                intValue = 0;
                break;
        }
        return new Pair(Integer.valueOf(intValue), Integer.valueOf(authenticatorStatusToBiometricConstant));
    }

    public boolean shouldShowCredential() {
        return this.credentialRequested && this.credentialAvailable;
    }

    public int getEligibleModalities() {
        Iterator it = this.eligibleSensors.iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= ((BiometricSensor) it.next()).modality;
        }
        return (this.credentialRequested && this.credentialAvailable) ? i | 1 : i;
    }

    public int numSensorsWaitingForCookie() {
        int i = 0;
        for (BiometricSensor biometricSensor : this.eligibleSensors) {
            if (biometricSensor.getSensorState() == 1) {
                Slog.d("BiometricService/PreAuthInfo", "Sensor ID: " + biometricSensor.id + " Waiting for cookie: " + biometricSensor.getCookie());
                i++;
            }
        }
        return i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BiometricRequested: " + this.mBiometricRequested + ", StrengthRequested: " + this.mBiometricStrengthRequested + ", CredentialRequested: " + this.credentialRequested);
        sb.append(", Eligible:{");
        Iterator it = this.eligibleSensors.iterator();
        while (it.hasNext()) {
            sb.append(((BiometricSensor) it.next()).id);
            sb.append(" ");
        }
        sb.append("}");
        sb.append(", Ineligible:{");
        for (Pair pair : this.ineligibleSensors) {
            sb.append(pair.first);
            sb.append(XmlUtils.STRING_ARRAY_SEPARATOR);
            sb.append(pair.second);
            sb.append(" ");
        }
        sb.append("}");
        sb.append(", CredentialAvailable: ");
        sb.append(this.credentialAvailable);
        sb.append(", ");
        return sb.toString();
    }
}
