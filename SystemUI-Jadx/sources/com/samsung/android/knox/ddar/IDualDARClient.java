package com.samsung.android.knox.ddar;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface IDualDARClient {
    boolean isSupported(int i);

    void onClearResetPasswordToken(int i, long j);

    boolean onClientBringup();

    void onDataLockStateChange(int i, boolean z);

    boolean onDualDARDestroyForUser(int i);

    boolean onDualDARSetupForUser(int i);

    boolean onPasswordAuth(int i, byte[] bArr);

    boolean onPasswordChange(int i, byte[] bArr, byte[] bArr2);

    boolean onResetPasswordWithToken(int i, byte[] bArr, long j, byte[] bArr2);

    boolean onSetResetPasswordToken(int i, byte[] bArr, long j, byte[] bArr2);
}
