package com.samsung.android.knox.keystore;

import com.samsung.android.knox.ContextInfo;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ClientCertificateManager {
    public ClientCertificateManager(ContextInfo contextInfo) {
    }

    public final boolean addPackageToExemptList(String str) {
        return false;
    }

    public final boolean deleteCCMProfile() {
        return false;
    }

    public final boolean deleteCSRProfile(String str) {
        return false;
    }

    public final boolean deleteCertificate(String str) {
        return false;
    }

    public final byte[] generateCSRUsingTemplate(String str, String str2, String str3) {
        return null;
    }

    public final CCMProfile getCCMProfile() {
        return null;
    }

    public final String getCCMVersion() {
        return null;
    }

    public final String getDefaultCertificateAlias() {
        return null;
    }

    public final boolean installCertificate(CertificateProfile certificateProfile, byte[] bArr, String str) {
        return false;
    }

    public final boolean isCCMPolicyEnabledForPackage(String str) {
        return false;
    }

    public final boolean removePackageFromExemptList(String str) {
        return false;
    }

    public final boolean setCCMProfile(CCMProfile cCMProfile) {
        return false;
    }

    public final boolean setCSRProfile(CSRProfile cSRProfile) {
        return false;
    }
}
