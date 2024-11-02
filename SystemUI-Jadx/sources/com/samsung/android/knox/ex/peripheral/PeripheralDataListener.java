package com.samsung.android.knox.ex.peripheral;

import android.os.Bundle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public interface PeripheralDataListener {
    void onFail(int i, String str);

    void onReceive(int i, Bundle bundle);

    void onSuccess();
}
