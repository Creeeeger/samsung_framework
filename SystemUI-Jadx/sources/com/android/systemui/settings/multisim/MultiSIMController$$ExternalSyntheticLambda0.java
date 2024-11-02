package com.android.systemui.settings.multisim;

import com.android.systemui.settings.multisim.MultiSIMController;
import java.lang.ref.WeakReference;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class MultiSIMController$$ExternalSyntheticLambda0 implements Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ MultiSIMController$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                if (((WeakReference) obj).get() == ((MultiSIMController.MultiSIMDataChangedCallback) this.f$0)) {
                    return true;
                }
                return false;
            case 1:
                if (((WeakReference) obj).get() == ((MultiSIMController.MultiSIMVisibilityChangedCallback) this.f$0)) {
                    return true;
                }
                return false;
            default:
                return ((String) obj).equals((String) this.f$0);
        }
    }
}
