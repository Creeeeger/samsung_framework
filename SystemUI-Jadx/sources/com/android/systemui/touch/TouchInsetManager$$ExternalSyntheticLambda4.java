package com.android.systemui.touch;

import android.graphics.Rect;
import android.graphics.Region;
import android.view.AttachedSurfaceControl;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class TouchInsetManager$$ExternalSyntheticLambda4 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ HashMap f$0;

    public /* synthetic */ TouchInsetManager$$ExternalSyntheticLambda4(int i, HashMap hashMap) {
        this.$r8$classId = i;
        this.f$0 = hashMap;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((HashMap) obj).entrySet().stream().forEach(new TouchInsetManager$$ExternalSyntheticLambda4(2, this.f$0));
                return;
            case 1:
                HashMap hashMap = this.f$0;
                Map.Entry entry = (Map.Entry) obj;
                AttachedSurfaceControl attachedSurfaceControl = (AttachedSurfaceControl) entry.getKey();
                if (!hashMap.containsKey(attachedSurfaceControl)) {
                    attachedSurfaceControl.setTouchableRegion(null);
                }
                ((Region) entry.getValue()).recycle();
                return;
            case 2:
                HashMap hashMap2 = this.f$0;
                Map.Entry entry2 = (Map.Entry) obj;
                AttachedSurfaceControl attachedSurfaceControl2 = (AttachedSurfaceControl) entry2.getKey();
                if (!hashMap2.containsKey(attachedSurfaceControl2)) {
                    hashMap2.put(attachedSurfaceControl2, Region.obtain());
                }
                ((Region) hashMap2.get(attachedSurfaceControl2)).op((Region) entry2.getValue(), Region.Op.UNION);
                return;
            default:
                HashMap hashMap3 = this.f$0;
                View view = (View) obj;
                AttachedSurfaceControl rootSurfaceControl = view.getRootSurfaceControl();
                if (rootSurfaceControl != null) {
                    if (!hashMap3.containsKey(rootSurfaceControl)) {
                        hashMap3.put(rootSurfaceControl, Region.obtain());
                    }
                    Rect rect = new Rect();
                    view.getDrawingRect(rect);
                    ((ViewGroup) view.getRootView()).offsetDescendantRectToMyCoords(view, rect);
                    ((Region) hashMap3.get(rootSurfaceControl)).op(rect, Region.Op.UNION);
                    return;
                }
                return;
        }
    }
}
