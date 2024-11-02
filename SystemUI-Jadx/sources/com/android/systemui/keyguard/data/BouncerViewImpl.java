package com.android.systemui.keyguard.data;

import java.lang.ref.WeakReference;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class BouncerViewImpl implements BouncerView {
    public WeakReference _delegate = new WeakReference(null);

    public final BouncerViewDelegate getDelegate() {
        return (BouncerViewDelegate) this._delegate.get();
    }
}
