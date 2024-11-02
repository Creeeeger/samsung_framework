package androidx.lifecycle;

import java.io.Closeable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ViewModelStore {
    public final HashMap mMap = new HashMap();

    public final void clear() {
        for (ViewModel viewModel : this.mMap.values()) {
            viewModel.mCleared = true;
            Map map = viewModel.mBagOfTags;
            if (map != null) {
                synchronized (map) {
                    Iterator it = ((HashMap) viewModel.mBagOfTags).values().iterator();
                    while (it.hasNext()) {
                        ViewModel.closeWithRuntimeException(it.next());
                    }
                }
            }
            Set set = viewModel.mCloseables;
            if (set != null) {
                synchronized (set) {
                    Iterator it2 = viewModel.mCloseables.iterator();
                    while (it2.hasNext()) {
                        ViewModel.closeWithRuntimeException((Closeable) it2.next());
                    }
                }
            }
            viewModel.onCleared();
        }
        this.mMap.clear();
    }
}
