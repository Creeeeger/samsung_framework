package com.android.wm.shell.transition;

import android.graphics.Rect;
import android.util.ArrayMap;
import android.util.RotationUtils;
import android.view.SurfaceControl;
import android.window.TransitionInfo;
import android.window.WindowContainerToken;
import com.android.wm.shell.util.CounterRotator;
import com.android.wm.shell.util.TransitionUtil;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CounterRotatorHelper {
    public int mLastRotationDelta;
    public final ArrayMap mRotatorMap = new ArrayMap();
    public final Rect mLastDisplayBounds = new Rect();

    public final void cleanUp(SurfaceControl.Transaction transaction) {
        ArrayMap arrayMap = this.mRotatorMap;
        int size = arrayMap.size();
        while (true) {
            size--;
            if (size >= 0) {
                SurfaceControl surfaceControl = ((CounterRotator) arrayMap.valueAt(size)).mSurface;
                if (surfaceControl != null) {
                    transaction.remove(surfaceControl);
                }
            } else {
                arrayMap.clear();
                this.mLastRotationDelta = 0;
                return;
            }
        }
    }

    public final void handleClosingChanges(SurfaceControl.Transaction transaction, TransitionInfo.Change change, TransitionInfo transitionInfo) {
        int i;
        int i2;
        CounterRotatorHelper counterRotatorHelper = this;
        TransitionInfo transitionInfo2 = transitionInfo;
        int deltaRotation = RotationUtils.deltaRotation(change.getStartRotation(), change.getEndRotation());
        Rect endAbsBounds = change.getEndAbsBounds();
        int width = endAbsBounds.width();
        int height = endAbsBounds.height();
        counterRotatorHelper.mLastRotationDelta = deltaRotation;
        counterRotatorHelper.mLastDisplayBounds.set(endAbsBounds);
        List changes = transitionInfo.getChanges();
        int size = changes.size();
        int i3 = size - 1;
        while (i3 >= 0) {
            TransitionInfo.Change change2 = (TransitionInfo.Change) changes.get(i3);
            WindowContainerToken parent = change2.getParent();
            if (TransitionUtil.isClosingType(change2.getMode()) && TransitionInfo.isIndependent(change2, transitionInfo2) && parent != null) {
                ArrayMap arrayMap = counterRotatorHelper.mRotatorMap;
                CounterRotator counterRotator = (CounterRotator) arrayMap.get(parent);
                if (counterRotator == null) {
                    CounterRotator counterRotator2 = new CounterRotator();
                    i = deltaRotation;
                    counterRotator2.setup(width, height, deltaRotation, transaction, transitionInfo2.getChange(parent).getLeash());
                    SurfaceControl surfaceControl = counterRotator2.mSurface;
                    if (surfaceControl != null) {
                        if ((change2.getFlags() & 2) == 0) {
                            i2 = size - i3;
                        } else {
                            i2 = -1;
                        }
                        transaction.setLayer(surfaceControl, i2);
                    }
                    arrayMap.put(parent, counterRotator2);
                    counterRotator = counterRotator2;
                } else {
                    i = deltaRotation;
                }
                SurfaceControl leash = change2.getLeash();
                SurfaceControl surfaceControl2 = counterRotator.mSurface;
                if (surfaceControl2 != null) {
                    transaction.reparent(leash, surfaceControl2);
                }
            } else {
                i = deltaRotation;
            }
            i3--;
            counterRotatorHelper = this;
            transitionInfo2 = transitionInfo;
            deltaRotation = i;
        }
    }
}
