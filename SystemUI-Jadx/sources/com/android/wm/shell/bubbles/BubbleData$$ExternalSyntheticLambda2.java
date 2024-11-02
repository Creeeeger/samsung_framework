package com.android.wm.shell.bubbles;

import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BubbleData$$ExternalSyntheticLambda2 implements Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ BubbleData$$ExternalSyntheticLambda2(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return ((Bubble) obj).mKey.equals((String) this.f$0);
            case 1:
                return ((Bubble) obj).mPackageName.equals((String) this.f$0);
            default:
                return !((Bubble) obj).equals(((BubbleData) this.f$0).mSelectedBubble);
        }
    }
}
