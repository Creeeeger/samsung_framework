package com.android.systemui.touch;

import com.android.systemui.touch.TouchInsetManager;
import java.util.HashMap;
import java.util.HashSet;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TouchInsetManager.TouchInsetSession f$0;

    public /* synthetic */ TouchInsetManager$TouchInsetSession$$ExternalSyntheticLambda1(TouchInsetManager.TouchInsetSession touchInsetSession, int i) {
        this.$r8$classId = i;
        this.f$0 = touchInsetSession;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                final TouchInsetManager.TouchInsetSession touchInsetSession = this.f$0;
                touchInsetSession.getClass();
                final HashMap hashMap = new HashMap();
                HashSet hashSet = touchInsetSession.mTrackedViews;
                if (!hashSet.isEmpty()) {
                    hashSet.stream().forEach(new TouchInsetManager$$ExternalSyntheticLambda4(3, hashMap));
                    final TouchInsetManager touchInsetManager = touchInsetSession.mManager;
                    touchInsetManager.getClass();
                    touchInsetManager.mExecutor.execute(new Runnable() { // from class: com.android.systemui.touch.TouchInsetManager$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            TouchInsetManager touchInsetManager2 = TouchInsetManager.this;
                            TouchInsetManager.TouchInsetSession touchInsetSession2 = touchInsetSession;
                            HashMap hashMap2 = hashMap;
                            touchInsetManager2.recycleRegions(touchInsetSession2);
                            touchInsetManager2.mSessionRegions.put(touchInsetSession2, hashMap2);
                            touchInsetManager2.updateTouchInsets();
                        }
                    });
                    return;
                }
                return;
            default:
                TouchInsetManager.TouchInsetSession touchInsetSession2 = this.f$0;
                TouchInsetManager touchInsetManager2 = touchInsetSession2.mManager;
                touchInsetManager2.getClass();
                touchInsetManager2.mExecutor.execute(new TouchInsetManager$$ExternalSyntheticLambda2(touchInsetManager2, touchInsetSession2));
                touchInsetSession2.mTrackedViews.clear();
                return;
        }
    }
}
