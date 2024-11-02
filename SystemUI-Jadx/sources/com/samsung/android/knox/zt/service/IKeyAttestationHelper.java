package com.samsung.android.knox.zt.service;

import java.security.cert.Certificate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface IKeyAttestationHelper {
    boolean attestKey(String str, byte[] bArr, boolean z);

    Certificate[] getCertificateChain(String str);

    boolean setCertificateChain(String str, Certificate[] certificateArr);

    byte[] sign(String str, byte[] bArr);
}
