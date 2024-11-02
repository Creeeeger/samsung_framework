package com.android.systemui.decor;

import android.content.Context;
import android.view.View;
import com.android.systemui.RegionInterceptingFrameLayout;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class OverlayWindow {
    public final Context context;
    public final RegionInterceptingFrameLayout rootView;
    public final Map viewProviderMap = new LinkedHashMap();

    public OverlayWindow(Context context) {
        this.context = context;
        this.rootView = new RegionInterceptingFrameLayout(context);
    }

    public final void dump(PrintWriter printWriter, String str) {
        DecorProvider decorProvider;
        printWriter.println("  " + str + "=");
        RegionInterceptingFrameLayout regionInterceptingFrameLayout = this.rootView;
        printWriter.println("    rootView=" + regionInterceptingFrameLayout);
        int childCount = regionInterceptingFrameLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = regionInterceptingFrameLayout.getChildAt(i);
            Pair pair = (Pair) ((LinkedHashMap) this.viewProviderMap).get(Integer.valueOf(childAt.getId()));
            if (pair != null) {
                decorProvider = (DecorProvider) pair.getSecond();
            } else {
                decorProvider = null;
            }
            printWriter.println("    child[" + i + "]=" + childAt + " " + decorProvider);
        }
    }

    public final View getView(int i) {
        Pair pair = (Pair) ((LinkedHashMap) this.viewProviderMap).get(Integer.valueOf(i));
        if (pair != null) {
            return (View) pair.getFirst();
        }
        return null;
    }

    public final boolean hasSameProviders(List list) {
        boolean z;
        boolean z2;
        if (list.size() != this.viewProviderMap.size()) {
            return false;
        }
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (getView(((DecorProvider) it.next()).getViewId()) != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!z2) {
                    z = false;
                    break;
                }
            }
        }
        z = true;
        if (!z) {
            return false;
        }
        return true;
    }

    public final void onReloadResAndMeasure(Integer[] numArr, int i, int i2, int i3, String str) {
        Unit unit;
        Map map = this.viewProviderMap;
        if (numArr != null) {
            for (Integer num : numArr) {
                Pair pair = (Pair) ((LinkedHashMap) map).get(Integer.valueOf(num.intValue()));
                if (pair != null) {
                    ((DecorProvider) pair.getSecond()).onReloadResAndMeasure((View) pair.getFirst(), i, i2, i3, str);
                }
            }
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            for (Pair pair2 : ((LinkedHashMap) map).values()) {
                ((DecorProvider) pair2.getSecond()).onReloadResAndMeasure((View) pair2.getFirst(), i, i2, i3, str);
            }
        }
    }
}
