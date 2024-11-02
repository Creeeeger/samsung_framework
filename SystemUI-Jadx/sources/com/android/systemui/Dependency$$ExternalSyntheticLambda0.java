package com.android.systemui;

import com.android.systemui.Dependency;
import dagger.Lazy;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class Dependency$$ExternalSyntheticLambda0 implements Dependency.LazyDependencyCreator {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Lazy f$0;

    public /* synthetic */ Dependency$$ExternalSyntheticLambda0(Lazy lazy, int i) {
        this.$r8$classId = i;
        this.f$0 = lazy;
    }

    @Override // com.android.systemui.Dependency.LazyDependencyCreator
    public final Object createDependency() {
        int i = this.$r8$classId;
        Lazy lazy = this.f$0;
        switch (i) {
            case 0:
                return lazy.get();
            case 1:
                return lazy.get();
            case 2:
                return lazy.get();
            case 3:
                return lazy.get();
            case 4:
                return lazy.get();
            case 5:
                return lazy.get();
            case 6:
                return lazy.get();
            case 7:
                return lazy.get();
            case 8:
                return lazy.get();
            case 9:
                return lazy.get();
            case 10:
                return lazy.get();
            case 11:
                return lazy.get();
            case 12:
                return lazy.get();
            case 13:
                return lazy.get();
            case 14:
                return lazy.get();
            case 15:
                return lazy.get();
            case 16:
                return lazy.get();
            case 17:
                return lazy.get();
            case 18:
                return lazy.get();
            case 19:
                return lazy.get();
            case 20:
                return lazy.get();
            case 21:
                return lazy.get();
            case 22:
                return lazy.get();
            case 23:
                return lazy.get();
            case 24:
                return lazy.get();
            case 25:
                return lazy.get();
            case 26:
                return lazy.get();
            case 27:
                return lazy.get();
            case 28:
                return lazy.get();
            default:
                return lazy.get();
        }
    }
}
