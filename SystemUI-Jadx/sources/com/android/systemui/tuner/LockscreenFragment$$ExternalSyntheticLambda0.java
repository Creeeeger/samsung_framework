package com.android.systemui.tuner;

import com.android.systemui.tuner.LockscreenFragment;
import com.android.systemui.tuner.TunerService;
import java.util.ArrayList;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class LockscreenFragment$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ LockscreenFragment$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((LockscreenFragment) this.f$0).mTunerService.removeTunable((TunerService.Tunable) obj);
                return;
            default:
                LockscreenFragment.Adapter adapter = (LockscreenFragment.Adapter) this.f$0;
                LockscreenFragment.Item item = (LockscreenFragment.Item) obj;
                ArrayList arrayList = adapter.mItems;
                int indexOf = arrayList.indexOf(item);
                arrayList.remove(item);
                adapter.notifyItemRemoved(indexOf);
                return;
        }
    }
}
