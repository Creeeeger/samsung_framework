package com.android.systemui.statusbar.notification.collection;

import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class ShadeListBuilder$$ExternalSyntheticLambda3 implements Predicate {
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        GroupEntry groupEntry = (GroupEntry) obj;
        if (groupEntry.mSummary == null && groupEntry.mUnmodifiableChildren.isEmpty()) {
            return true;
        }
        return false;
    }
}
