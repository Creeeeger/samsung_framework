package com.android.systemui.popup.viewmodel;

import android.content.Intent;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public interface PopupUIViewModel {
    void dismiss();

    String getAction();

    void show(Intent intent);
}
