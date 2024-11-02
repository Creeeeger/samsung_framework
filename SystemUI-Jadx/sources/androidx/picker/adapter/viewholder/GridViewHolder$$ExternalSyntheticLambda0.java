package androidx.picker.adapter.viewholder;

import java.util.Iterator;
import java.util.List;
import kotlinx.coroutines.DisposableHandle;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class GridViewHolder$$ExternalSyntheticLambda0 implements DisposableHandle {
    public final /* synthetic */ List f$0;

    @Override // kotlinx.coroutines.DisposableHandle
    public final void dispose() {
        Iterator it = this.f$0.iterator();
        while (it.hasNext()) {
            ((DisposableHandle) it.next()).dispose();
        }
    }
}
