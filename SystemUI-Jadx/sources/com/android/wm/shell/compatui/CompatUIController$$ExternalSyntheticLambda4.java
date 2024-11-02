package com.android.wm.shell.compatui;

import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class CompatUIController$$ExternalSyntheticLambda4 implements Predicate {
    public final /* synthetic */ int f$0;

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        if (((CompatUIWindowManagerAbstract) obj).mDisplayId == this.f$0) {
            return true;
        }
        return false;
    }
}
